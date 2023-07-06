OPT="$*"
date
echo Compilation command: "klitmus7 -o X.tar LB+onces.litmus"
echo "OPT=$OPT"
echo "uname -r=$(uname -r)"
echo

zyva () {
  name=$1
  ko=$2
  if test -f  $ko
  then
    insmod $ko $OPT
    cat /proc/litmus
    rmmod $ko
  fi
}

zyva "LB+onces" litmus000.ko
date
