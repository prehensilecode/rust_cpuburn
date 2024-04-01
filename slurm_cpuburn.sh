#!/bin/bash
# don't propagate ulimits
#SBATCH --propagate=NONE
#SBATCH --ntasks-per-node=8
#SBATCH --mem=8G

date
uname -a
ulimit -a
~/.cargo/bin/cpuburn

