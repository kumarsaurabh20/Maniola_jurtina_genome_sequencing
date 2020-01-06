#!/bin/bash
#$ -N blasr
#$ -S /bin/bash
#$ -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing
#$ -e /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing
#$ -q compute.q
#$ -pe openmpi_ib 144
# Send mail at submission and completion of script
#$ -m abes
#$ -M k.saurabh-singh@exeter.ac.uk
. /etc/profile.d/modules.sh
module load sge shared Anaconda/5.0.0_py_2.7 gcc/7.2.0
source activate test

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r160321_D02_1/r160321_D02_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r160321_D02_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r161209_A02_1/r161209_A02_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r161209_A02_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r160318_F01_1/r160318_F01_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r160318_F01_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r161125_G01_1/r161125_G01_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r161125_G01_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r160321_C02_1/r160321_C02_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r160321_C02_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r161209_E02_1/r161209_E02_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r161209_E02_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r161209_B02_1/r161209_B02_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r161209_B02_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r160317_A01_1/r160317_A01_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r160317_A01_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r161129_D01_1/r161129_D01_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r161129_D01_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r161209_C02_1/r161209_C02_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r161209_C02_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r161125_H01_1/r161125_H01_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r161125_H01_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r160318_E01_1/r160318_E01_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r160318_E01_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r160317_B01_1/r160317_B01_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r160317_B01_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r160321_B02_1/r160321_B02_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r160321_B02_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r161209_H01_1/r161209_H01_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r161209_H01_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r160321_A02_1/r160321_A02_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r160321_A02_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r161209_F02_1/r161209_F02_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r161209_F02_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1

blasr /home/ISAD/ks575/Data/workspace/maniola/01_raw_data/r161209_H02_1/r161209_H02_1.subreads.bam /home/ISAD/ks575/Data/workspace/maniola/haplomerger/HaploMerger2/20180603/myManiola/scaffolds.filled.fa --out r161209_H02_1.bam --bam --bestn 10 --minMatch 12 --maxMatch 30 --nproc 8 --minSubreadLength 50 --minAlnLength 50 --minPctSimilarity 70 --minPctAccuracy 70 --hitPolicy randombest --randomSeed 1
