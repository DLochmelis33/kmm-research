# Unordered vs baseline: obtaining final results methodologie

This report describes how exactly we obtained outcomes of the evaluation of performance degradation of *NotAtomic* to *Unordered* change.

## Multiple reports aggregation: median & coefficient of variation

In order to mitigate noise, we conducted multiple complete runs of all benchmarks and subsequently calculate the average results. We executed a total of `20` runs for both the baseline and modified compilers on each of the machines. Furthermore, we employed the configuration parameters `benchmarkSize = 20,000` and `attempts = 30` as an optimal setup based on our earlier preliminary experiments. 

The benchmark reports can be found in the [macosArm64/unordered-vs-baseline-final](macosArm64/unordered-vs-baseline-final/) and [linuxX64/unordered-vs-baseline-final](linuxX64/unordered-vs-baseline-final/) directories for the *MacOS Arm64* and *Linux x64* machines respectively.

Multiple reports aggregation procedure was held in the following way:
* firstly, we computed the median value for each test performed on each compiler &mdash; in order to mitigate sporadic random outliers impact on the final results;
* secondly, we calculated the coefficient of variation for each test, which represents the ratio of the standard deviation to the mean, i.e. relative estimation of the spread of measurement noise &mdash; by estimating the noise level in percentage, we could compare the noise levels of even very different tests in terms of scale, as well as provide error estimates for other metrics.

## Filtering out the noisy tests

Following this aggregation process, we obtained the finalized dataset. Initially, we computed the percentage change in the average score of each test when using the modified compiler compared to the baseline one. Subsequently, we filtered changes that can be considered at least moderately significant. Specifically, ***we retained only those tests where the percentage of score change exceeded the noise estimation percentage***. 

Consequently, out of the total of `329` tests conducted on *Linux x64* and `351` tests on *MacOS Arm64*, `135` and `115` tests respectively exhibited substantial performance differences. The majority of the remaining tests demonstrated no notable change in performance: `152` tests exhibited a score change of less than `1%`, and an additional `38` filtered tests displayed a change of less than `5%` on *Linux x64*. Likewise, on *MacOS Arm64*, `201` removed tests had a score change of less than `1%`, and a further `33` tests exhibited a change of less than `5%`. Among the remaining unfiltered tests, only `4` and `2` tests on *Linux x64* and *MacOS Arm64* respectively, displayed a level of noise comparable to the percentage of changes.

Therefore, our filtering methodology enabled us to retain nearly all tests (namely, about `90%`) with significant performance variations while safeguarding against the influence of noise.