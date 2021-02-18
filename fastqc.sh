#!/bin/bash

#SBATCH -A ecoevo283
#SBATCH -p standard
#SBATCH --cpus-per-task=1
#SBATCH --error=slurm-%J.err

module load fastqc/0.11.9

cd /data/class/ecoevo283/tzhuravl/scripts/EE283HW6/fastqc_try/

fastqc /data/class/ecoevo283/tzhuravl/RAWDATA/ATACseq/Sample_TTCGACG-TATGCAGT_4R009_L1_P030_R2.fq.gz
