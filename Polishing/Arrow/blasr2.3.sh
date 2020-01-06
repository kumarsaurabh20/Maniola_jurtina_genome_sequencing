#!/bin/bash
#$ -N blasr2.3
#$ -S /bin/bash
#$ -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing
#$ -e /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing
#$ -q compute.q
#$ -pe openmpi_ib 47
# Send mail at submission and completion of script
#$ -m abes
#$ -M k.saurabh-singh@exeter.ac.uk
. /etc/profile.d/modules.sh
module load sge shared Anaconda/5.0.0_py_2.7 gcc/7.2.0 samtools/1.3.1
source activate test
blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r161209_B02_1/r161209_B02_1.subreads.bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/iter2/maniola.arrow.iter2.fasta --out /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/r161209_B02_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 45 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1
samtools sort -@ 45 -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/r161209_B02_1.sorted.bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/r161209_B02_1.bam
blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r160317_A01_1/r160317_A01_1.subreads.bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/iter2/maniola.arrow.iter2.fasta --out /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/r160317_A01_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 45 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1
samtools sort -@ 45 -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/r160317_A01_1.sorted.bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/r160317_A01_1.bam
blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r161129_D01_1/r161129_D01_1.subreads.bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/iter2/maniola.arrow.iter2.fasta --out /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/r161129_D01_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 45 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1
samtools sort -@ 45 -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/r161129_D01_1.sorted.bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/r161129_D01_1.bam
