#!/bin/bash
# don't propagate ulimits
#SBATCH --propagate=NONE
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem=8G

date
uname -a
ulimit -a
~/.cargo/bin/cpuburn

