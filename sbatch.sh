#!/bin/bash

#SBATCH -A ecoevo283
#SBATCH -p standard
#SBATCH --cpus-per-task=1
#SBATCH --error=slurm-%J.err

module load python

python make_symlinks.py



#bash way - bare bones
#cd /data/class/ecoevo283/tzhuravl/
#mkdir DNAseq RNAseq ATACseq
 
#cd /data/class/ecoevo283/tzhuravl/DNAseq
#ln -s /data/class/ecoevo283/public/RAWDATA/DNAseq/*fq.gz .

#cd /data/class/ecoevo283/tzhuravl/ATACseq
#ln -s /data/class/ecoevo283/public/RAWDATA/ATACseq/*fq.gz .

#cd /data/class/ecoevo283/tzhuravl/RNAseq
#ln -s /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex*/Sample_* .
