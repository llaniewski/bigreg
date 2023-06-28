# `bigreg`

The `test.cpp` is generated from `test.cpp.Rt`. The generation creates a bunch of variables from `x000` to `x{n}` and makes computation first forwards then backwards to ensure that the compiler cannot optimise out any of the variables.

It can be compiled with `make` and run with `./main`. There is a slurm script `test.sh` to run the profiler and pull stats.


