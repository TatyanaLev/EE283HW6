# Symlinks

This week we made symlinks to the FASTQ files in order to not copy and propagate very large files.

## python way

[This script](https://github.com/TatyanaLev/EE283HW6/blob/main/make_symlinks.py) makes symbolic links to RNA, DNA, and ATAC sequence data fastq files and renames them. It must be submitted as a [batch job](https://github.com/TatyanaLev/EE283HW6/blob/main/sbatch.sh) to the HPC cluster.

The results, in the form of a directory tree are [here](https://github.com/TatyanaLev/EE283HW6/blob/main/tree.txt)

## bash way

The commented out section of the [batch submission script](https://github.com/TatyanaLev/EE283HW6/blob/main/sbatch.sh) are the commented out ways to make symlinks in bash. This way they are not renamed -- only linked while retaining the original name.

# FASTQC

A random ATACseq sample was run through FASTQC to confirm that the symlinks work. [Results are as HTML](https://github.com/TatyanaLev/EE283HW6/blob/main/Sample_TTCGACG-TATGCAGT_4R009_L1_P030_R2_fastqc.html)
