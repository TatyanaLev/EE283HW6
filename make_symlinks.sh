#!/bin/bash

cd /data/class/ecoevo283/tzhuravl/
mkdir DNAseq RNAseq ATACseq
 
cd /data/class/ecoevo283/tzhuravl/DNAseq
ln -s /data/class/ecoevo283/public/RAWDATA/DNAseq/*fq.gz .

cd /data/class/ecoevo283/tzhuravl/ATACseq
ln -s /data/class/ecoevo283/public/RAWDATA/ATACseq/*fq.gz .

cd /data/class/ecoevo283/tzhuravl/RNAseq
ln -s /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex*/Sample_* .
