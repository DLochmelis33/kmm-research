/****************************************************************************/
/*                           the diy toolsuite                              */
/*                                                                          */
/* Jade Alglave, University College London, UK.                             */
/* Luc Maranget, INRIA Paris-Rocquencourt, France.                          */
/*                                                                          */
/* This C source is a product of litmus7 and includes source that is        */
/* governed by the CeCILL-B license.                                        */
/****************************************************************************/

#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/fs.h>
#include <linux/proc_fs.h>
#include <linux/seq_file.h>
#include <linux/kthread.h>
#include <linux/ktime.h>
#include <linux/atomic.h>
#include <linux/sysfs.h>
#include <linux/sched.h>
#include <linux/wait.h>
#include <linux/slab.h>
#include <linux/random.h>

typedef u64 count_t;
#define PCTR "llu"

#ifndef WRITE_ONCE
#define WRITE_ONCE(x,v) ({ ACCESS_ONCE((x)) = (v); })
#endif
#ifndef READ_ONCE
#define READ_ONCE(x) ACCESS_ONCE((x))
#endif

#ifndef smp_store_release
#define smp_store_release(p, v)                                         \
do {                                                                    \
        smp_mb();                                                       \
        WRITE_ONCE(*p, v);                                              \
} while (0)
#endif

#ifndef smp_load_acquire
#define smp_load_acquire(p)                                             \
({                                                                      \
        typeof(*p) ___p1 = READ_ONCE(*p);                               \
        smp_mb();                                                       \
        ___p1;                                                          \
})
#endif

#ifndef xchg_acquire
#define xchg_acquire(x,v) xchg(x,v)
#endif

#ifndef xchg_release
#define xchg_release(x,v) xchg(x,v)
#endif

#ifndef lockless_dereference 
#define lockless_dereference(p)                                         \
({                                                                      \
        typeof(p) ____p1 = READ_ONCE(p);                                \
        smp_read_barrier_depends();                                     \
        ____p1;                                                         \
})
#endif

#ifndef cond_resched_rcu_qs
#define cond_resched_rcu_qs cpu_relax
#endif

/* Some constant divide (not available on ARMv7) */

inline static u64 divBy10(u64 n) {
 u64 q, r;
 q = (n >> 1) + (n >> 2);
 q = q + (q >> 4);
 q = q + (q >> 8);
 q = q + (q >> 16);
 q = q >> 3;
 r = n - q*10;
 return q + ((r + 6) >> 4);
}

inline static u64 divBy1000(u64 n) {
  u64 q, r, t;
  t = (n >> 7) + (n >> 8) + (n >> 12);
  q = (n >> 1) + t + (n >> 15) + (t >> 11) + (t >> 14);
  q = q >> 9;
  r = n - q*1000;
  return q + ((r + 24) >> 10);
}

static int randmod(unsigned int m) {
  unsigned int x ;
  get_random_bytes(&x,sizeof(x));
  return x % m ;
}

static void shuffle_array(int *t,int sz) {
  for  (int k = 0 ; k < sz-1; k++) {
    int j = k + randmod(sz-k);
    int tmp = t[k] ;
    t[k] = t[j];
    t[j] = tmp;
  }
}
/**************/
/* Parameters */
/**************/

static const int nthreads = 2;
static unsigned int nruns = 10;
static unsigned int size = 100000;
static unsigned int stride = 1;
static unsigned int avail = 0;
static unsigned int ninst = 0;
static int affincr = 0;

module_param(nruns,uint,0644);
module_param(size,uint,0644);
module_param(stride,uint,0644);
module_param(avail,uint,0644);
module_param(ninst,uint,0644);
module_param(affincr,int,0644);

static char *name = "LB+onces";
module_param(name,charp,0444);

static wait_queue_head_t *wq;
static atomic_t done = ATOMIC_INIT(0);

/************/
/* Outcomes */
/************/

#define NOUTS 2
typedef u64 outcome_t[NOUTS];

static const int out_0_r0_f = 0 ;
static const int out_1_r0_f = 1 ;

typedef struct outs_t {
  struct outs_t *next,*down ;
  count_t c ;
  u64 k ;
  int show ;
} outs_t ;


static outs_t *alloc_outs(u64 k) {
  outs_t *r = kmalloc(sizeof(*r),GFP_KERNEL) ;
  if (r == NULL) return NULL ;
  r->k = k ;
  r->c = 0 ;
  r->show = 0 ;
  r->next = r->down = NULL ;
  return r ;
}

static void free_outs(outs_t *p) {
  if (p == NULL) return ;
  free_outs(p->next) ;
  free_outs(p->down) ;
  kfree(p) ;
}

static outs_t *
loop_add_outcome_outs(outs_t *p, u64 *k, int i, count_t c, int show) {
  outs_t *r = p ;
  if (p == NULL || k[i] < p->k) {
    r = alloc_outs(k[i]) ;
    if (r == NULL) return p ; /* simply ignore insert */
    r->next = p ;
    p = r ;
  }
  for ( ; ; ) {
    outs_t **q ;
    if (k[i] > p->k) {
      q = &(p->next) ;
      p = p->next ;
    } else if (i <= 0) {
      p->c += c ;
      p->show = show || p->show ;
      return r ;
    } else {
      i-- ;
      q = &(p->down) ;
      p = p->down ;
    }
    if (p == NULL || k[i] < p->k) {
      outs_t *a = alloc_outs(k[i]) ;
      if (a == NULL) return r ;
      a->next = p ;
      p = a ;
      *q = a ;
    }
  }
}

typedef count_t cfun(outs_t *) ;

static count_t count_scan(cfun *f,outs_t *p) {
  count_t r = 0 ;
  for ( ; p ; p = p->next) {
    r += f(p) ;
    if (p->down) {
      r += count_scan(f,p->down) ;
    }
  }
  return r ;
} 

static count_t cshow(outs_t *p) {
  if (p->show) return p->c ;
  return 0 ;
}

static count_t count_show(outs_t *p) { return count_scan(cshow,p) ; }

static count_t cnoshow(outs_t *p) {
  if (!p->show) return p->c ;
  return 0 ;
}

static count_t count_noshow(outs_t *p) { return count_scan(cnoshow,p); }

static count_t cnstates(outs_t *p) {
  if (p->c > 0) return 1 ;
  return 0 ;
}

static count_t count_nstates(outs_t *p) { return count_scan(cnstates,p); }


static outs_t *add_outcome_outs(outs_t *p,u64 *k,int show) {
  return loop_add_outcome_outs(p,k,NOUTS-1,1,show);
}

static void do_dump_outs (struct seq_file *m,outs_t *p,u64 *o,int sz) {
  for ( ; p ; p = p->next) {
    o[sz-1] = p->k;
    if (p->c > 0) {
      seq_printf(m,"%-8"PCTR"%c>0:r0=%i; 1:r0=%i;\n",p->c,p->show ? '*' : ':',(int)o[out_0_r0_f],(int)o[out_1_r0_f]);
    } else {
      do_dump_outs(m,p->down,o,sz-1);
    }
  }
}

static void dump_outs(struct seq_file *m,outs_t *p) {
  outcome_t buff;
  do_dump_outs(m,p,buff,NOUTS);
}

static inline void barrier_wait(int id,int i,int *b) {
  if ((i % nthreads) == id) {
    WRITE_ONCE(*b,1);
    smp_mb();
  } else {
    int _spin = 256;
    for  ( ; ; ) {
      if (READ_ONCE(*b) != 0) return;
      if (--_spin <= 0) return;
      cpu_relax();
    }
  }
}


/****************/
/* Affinity     */
/****************/

static int *online;
static int nonline;

/****************/
/* Test Context */
/****************/

typedef struct {
/* Shared locations */
  int *y;
  int *x;
/* Final contents of observed registers */
  int *out_0_r0;
  int *out_1_r0;
/* For synchronisation */
  int *barrier;
} ctx_t ;

static ctx_t **ctx;

static void free_ctx(ctx_t *p) { 
  if (p == NULL) return;
  if (p->y) kfree(p->y);
  if (p->x) kfree(p->x);
  if (p->out_0_r0) kfree(p->out_0_r0);
  if (p->out_1_r0) kfree(p->out_1_r0);
  if (p->barrier) kfree(p->barrier);
  kfree(p);
}

static ctx_t *alloc_ctx(size_t sz) { 
  ctx_t *r = kzalloc(sizeof(*r),GFP_KERNEL);
  if (!r) { return NULL; }
  r->y = kmalloc(sizeof(r->y[0])*sz,GFP_KERNEL);
  if (!r->y) { return NULL; }
  r->x = kmalloc(sizeof(r->x[0])*sz,GFP_KERNEL);
  if (!r->x) { return NULL; }
  r->out_0_r0 = kmalloc(sizeof(r->out_0_r0[0])*sz,GFP_KERNEL);
  if (!r->out_0_r0) { return NULL; }
  r->out_1_r0 = kmalloc(sizeof(r->out_1_r0[0])*sz,GFP_KERNEL);
  if (!r->out_1_r0) { return NULL; }
  r->barrier = kmalloc(sizeof(r->barrier[0])*sz,GFP_KERNEL);
  if (!r->barrier) { return NULL; }
  return r;
}

static void init_ctx(ctx_t *_a,size_t sz) {
  for (int _i = 0 ; _i < sz ; _i++) {
    _a->y[_i] = (int)0;
    _a->x[_i] = (int)0;
    _a->out_0_r0[_i] = -239487;
    _a->out_1_r0[_i] = -239487;
    _a->barrier[_i] = 0;
  }
}

/***************/
/* Litmus code */
/***************/

typedef void (*code0_t)(int* y,int* x,int* out_0_r0);

static void code0(int* y,int* x,int* out_0_r0) {

  int r0;
  r0 = READ_ONCE(*y);
  WRITE_ONCE(*x,1);

  *out_0_r0 = (int)r0;
}

static int thread0(void *_p) {
  ctx_t *_a = (ctx_t *)_p;

  smp_mb();
  for (int _j = 0 ; _j < stride ; _j++) {
    for (int _i = _j ; _i < size ; _i += stride) {
      barrier_wait(0,_i,&_a->barrier[_i]);
      code0(&_a->y[_i],&_a->x[_i],&_a->out_0_r0[_i]);
    }
  }
  atomic_inc(&done);
  smp_mb();
  wake_up(wq);
  smp_mb();
  return 0;
}

typedef void (*code1_t)(int* y,int* x,int* out_1_r0);

static void code1(int* y,int* x,int* out_1_r0) {

  int r0;
  r0 = READ_ONCE(*x);
  WRITE_ONCE(*y,1);

  *out_1_r0 = (int)r0;
}

static int thread1(void *_p) {
  ctx_t *_a = (ctx_t *)_p;

  smp_mb();
  for (int _j = 0 ; _j < stride ; _j++) {
    for (int _i = _j ; _i < size ; _i += stride) {
      barrier_wait(1,_i,&_a->barrier[_i]);
      code1(&_a->y[_i],&_a->x[_i],&_a->out_1_r0[_i]);
    }
  }
  atomic_inc(&done);
  smp_mb();
  wake_up(wq);
  smp_mb();
  return 0;
}

inline static int final_cond(int _out_0_r0,int _out_1_r0) {
  switch (_out_0_r0) {
  case 1:
    switch (_out_1_r0) {
    case 1:
      return 1;
    default:
      return 0;
    }
  default:
    return 0;
  }
}

/********/
/* Zyva */
/********/

static outs_t *zyva(void) {
  ctx_t **c = ctx;
  outs_t *outs = NULL;
  const int nth = ninst * nthreads;
  struct task_struct **th;

  th = kzalloc(sizeof(struct task_struct *) * nth, GFP_KERNEL);
  if (!th) return NULL;
  for (int _k = 0 ; _k < nruns ; _k++) {
    int _nth = 0;

    for (int _ni = 0 ; _ni < ninst ; _ni++) init_ctx(c[_ni],size);
    atomic_set(&done,0);
    smp_mb();
    for (int _ni = 0 ; _ni < ninst ; _ni++) {
      th[_nth] = kthread_create(thread0,c[_ni],"thread0");
      if (IS_ERR(th[_nth])) {kfree(th); return outs;}
      _nth++;
      th[_nth] = kthread_create(thread1,c[_ni],"thread1");
      if (IS_ERR(th[_nth])) {kfree(th); return outs;}
      _nth++;
    }
    if (affincr != 0) {
      int _idx=0, _idx0=0, _incr=affincr > 0 ? affincr : 1;
      if (affincr < 0) shuffle_array(online,nonline);
      for (int _t = 0 ; _t < nth ; _t++) {
        kthread_bind(th[_t],online[_idx]);
        _idx += _incr; 
        if (_idx >= nonline) _idx = ++_idx0;
        if (_idx >= nonline) _idx = _idx0 = 0;
      }
    }
    for (int _t = 0 ; _t < nth ; _t++) wake_up_process(th[_t]);
    wait_event_interruptible(*wq, atomic_read(&done) == nth);
    smp_mb();
    for (int _ni = 0 ; _ni < ninst ; _ni++) {
      ctx_t *_a = c[_ni];
      for (int _i = 0 ; _i < size ; _i++) {
        outcome_t _o;
        int _cond;
        _cond = final_cond(_a->out_0_r0[_i],_a->out_1_r0[_i]);
        _o[out_0_r0_f] = _a->out_0_r0[_i];
        _o[out_1_r0_f] = _a->out_1_r0[_i];
        outs = add_outcome_outs(outs,_o,_cond);
      }
    }
    cond_resched();
  }
  kfree(th);
  return outs;
}

static int do_it(struct seq_file *m) {
  ktime_t time_start = ktime_get();
  outs_t *outs = zyva();
  ktime_t time_end = ktime_get();
  seq_printf(m,"Test LB+onces Allowed\n");
  seq_printf(m,"Histogram (%"PCTR" states)\n",count_nstates(outs));
  dump_outs(m,outs);
  {
    count_t pos=count_show(outs),neg=count_noshow(outs);
    char *msg = "Sometimes";
    u64 delta =  ktime_to_ms(ktime_sub(time_end, time_start));
    u64 sec = divBy1000(delta);
    u64 cent = divBy10(delta-1000*sec + 5);
    seq_printf(m,"%s\n\n",pos > 0 ? "Ok" : "No");
    seq_printf(m,"Witnesses\nPositive: %"PCTR", Negative: %"PCTR"\n",pos,neg);
    seq_printf(m,"Condition exists (0:r0=1 /\\ 1:r0=1) is %svalidated\n",pos > 0?"":"NOT ");
    seq_printf(m,"%s\n","Hash=424803507ead2baab4233ec1494730a1");
    if (pos == 0) msg = "Never";
    else if (neg == 0) msg = "Always";
    seq_printf(m,"Observation LB+onces %s %"PCTR" %"PCTR"\n",msg,pos,neg);
    seq_printf(m,"Time LB+onces %llu.%02llu\n\n",sec,cent);
  }
  free_outs(outs);
  return 0;
}

static int
litmus_proc_show(struct seq_file *m,void *v) {
  if (ninst == 0 || ninst * nthreads > nonline) {
    seq_printf(m,"%s: skipped\n","LB+onces");
    return 0;
  } else {
  return do_it(m);
  }
}

static int
litmus_proc_open(struct inode *inode,struct file *fp) {
  return single_open(fp,litmus_proc_show,NULL);
}

#if defined(KLITMUS_HAVE_STRUCT_PROC_OPS)
static const struct proc_ops litmus_proc_ops = {
  .proc_open    = litmus_proc_open,
  .proc_read    = seq_read,
  .proc_lseek   = seq_lseek,
  .proc_release = single_release,
};
#else
static const struct file_operations litmus_proc_ops = {
  .owner   = THIS_MODULE,
  .open    = litmus_proc_open,
  .read    = seq_read,
  .llseek   = seq_lseek,
  .release = single_release,
};
#endif

static int __init
litmus_init(void) {
  int err=0;
  struct proc_dir_entry *litmus_pde = proc_create("litmus",0,NULL,&litmus_proc_ops);
  if (litmus_pde == NULL) { return -ENOMEM; }
  stride = stride == 0 ? 1 : stride;
  nonline = num_online_cpus ();
  online = kzalloc(sizeof(*online)*nonline,GFP_KERNEL);
  if (online == NULL) goto clean_pde;
  {
    int cpu,_k;
    _k=0; for_each_cpu(cpu,cpu_online_mask) online[_k++] = cpu;
  }
  if (avail == 0 || avail > nonline) avail = nonline;
  if (ninst == 0) ninst = avail / nthreads ;

  ctx = kzalloc(sizeof(ctx[0])*ninst,GFP_KERNEL);
  if (ctx == NULL) { err = -ENOMEM ; goto clean_online; }
  for (int _k=0 ; _k < ninst ; _k++) {
    ctx[_k] = alloc_ctx(size);
    if (ctx[_k] == NULL) { err = -ENOMEM; goto clean_ctx; }
  }

  wq =  kzalloc(sizeof(*wq), GFP_KERNEL);
  if (wq == NULL) { err = -ENOMEM; goto clean_ctx; }
  init_waitqueue_head(wq);
  return 0; 
clean_ctx:
  for (int k=0 ; k < ninst ; k++) free_ctx(ctx[k]);
  kfree(ctx);
clean_online:
  kfree(online);
clean_pde:
  remove_proc_entry("litmus",NULL);
  return err;
}

static void __exit
litmus_exit(void) {
  for (int k=0 ; k < ninst ; k++) free_ctx(ctx[k]);
  kfree(ctx);
  kfree(online);
  remove_proc_entry("litmus",NULL);
}

module_init(litmus_init);
module_exit(litmus_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Luc");
MODULE_DESCRIPTION("Litmus module");
