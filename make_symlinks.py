#!/usr/bin/python

##THESE ARE FROM ANSWERS FILE AND NOT MINE

import os
import re
import sys

#DNAseq

files = os.listdir("/data/class/ecoevo283/public/RAWDATA/DNAseq")
for f in files:
if f.endswith('.fq.gz'):
    os.symlink("/data/class/ecoevo283/public/RAWDATA/DNAseq/"+f, "/data/class/ecoevo283/tzhuravl/RAWDATA/DNAseq/"+f)


#ATACseq

files = os.listdir("/data/class/ecoevo283/public/RAWDATA/ATACseq")
for f in files:
    if f.endswith('.fq.gz'):
        f2 = re.search("P[0-9]+_R[0-9]",f).group(0).replace("_R","_").replace("_1","_F").replace("_2","_R")
        os.symlink("/data/class/ecoevo283/public/RAWDATA/ATACseq/"+f, "/data/class/ecoevo283/tzhuravl/RAWDATA/ATACseq/"+f2+"fq.gz")


#RNAseq

d = {}
with open("dict.txt") as FILEIN:
    for	line in	FILEIN:
       	(key,val) = line.split()
       	d[int(key)] = val
with open("fastqs.txt") as FILEIN2:
    for f in FILEIN2:
        f = f.strip('\n')
        if f.endswith('.fastq.gz') and "Undetermined" not in f:
            num=re.search("[0-9]+_",f).group(0).replace("_","")
            dir=re.search("_R[0-9]_",f).group(0).replace("_R1_","F").replace("_R2_","R")
            out="/data/class/ecoevo283/public/RAWDATA/RNAseq/" + d[int(num)] + "_" + dir +".fq.gz"
            print(f,num,dir,out)
            os.symlink(f, out)
