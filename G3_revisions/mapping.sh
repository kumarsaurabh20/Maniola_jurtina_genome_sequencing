#!/bin/bash
#$ -N G3_bwa
#$ -S /bin/bash
#$ -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions
#$ -e /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions
#$ -q hpc.q
#$ -pe openmpi_ib 64
# Send mail at submission and completion of script
#$ -m abes
#$ -M k.saurabh-singh@exeter.ac.uk
. /etc/profile.d/modules.sh
module load Anaconda/5.0.0_py_2.7 shared sge/2011.11p1
source activate test
cd /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions
##
bwa mem -t 64 /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/mjurtina /home/ISAD/ks575/Data/workspace/maniola/Project_1263/Sample_100_PE/raw_illumina_reads/100_PE_ACTGAT_L008_R1_001_val_1.fq /home/ISAD/ks575/Data/workspace/maniola/Project_1263/Sample_100_PE/raw_illumina_reads/100_PE_ACTGAT_L008_R2_001_val_2.fq | samtools view -b -S -F 4 -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/100_PE_ACTGAT_L008.bam -
bwa mem -t 64 /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/mjurtina /home/ISAD/ks575/Data/workspace/maniola/Project_1263/Sample_1263/raw_illumina_reads/1263_AGGCAG_L005_R1_001.fastq.gz /home/ISAD/ks575/Data/workspace/maniola/Project_1263/Sample_1263/raw_illumina_reads/1263_AGGCAG_L005_R2_001.fastq.gz | samtools view -b -S -F 4 -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/1263_AGGCAG_L005.bam -
bwa mem -t 64 /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/mjurtina /home/ISAD/ks575/Data/workspace/maniola/Project_1263/Sample_MatePair3000-5000/raw_illumina_reads/MatePair3000-5000_GCCAAT_L003_R1_001.fastq.gz /home/ISAD/ks575/Data/workspace/maniola/Project_1263/Sample_MatePair3000-5000/raw_illumina_reads/MatePair3000-5000_GCCAAT_L003_R2_001.fastq.gz | samtools view -b -S -F 4 -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/MatePair3000-5000_L008.bam -
bwa mem -t 64 /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/mjurtina /home/ISAD/ks575/Data/workspace/maniola/Project_1263/Sample_MatePair5000-7000/raw_illumina_reads/MatePair5000-7000_CAGATC_L003_R1_001.fastq.gz /home/ISAD/ks575/Data/workspace/maniola/Project_1263/Sample_MatePair5000-7000/raw_illumina_reads/MatePair5000-7000_CAGATC_L003_R2_001.fastq.gz | samtools view -b -S -F 4 -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/MatePair5000-7000_L008.bam -
bwa mem -t 64 /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/mjurtina /home/ISAD/ks575/Data/workspace/maniola/Project_1263/Sample_MatePairNogel/raw_illumina_reads/MatePairNogel_CTTGTA_L003_R1_001.fastq.gz /home/ISAD/ks575/Data/workspace/maniola/Project_1263/Sample_MatePairNogel/raw_illumina_reads/MatePairNogel_CTTGTA_L003_R2_001.fastq.gz | samtools view -b -S -F 4 -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/MatePairNogel.bam -
##
samtools sort -@ 64 -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/100_PE_ACTGAT_L008.sort.bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/100_PE_ACTGAT_L008.bam 
samtools sort -@ 64 -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/1263_AGGCAG_L005.sort.bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/1263_AGGCAG_L005.bam
samtools sort -@ 64 -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/MatePair3000-5000_L008.sort.bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/MatePair3000-5000_L008.bam
samtools sort -@ 64 -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/MatePair5000-7000_L008.sort.bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/MatePair5000-7000_L008.bam
samtools sort -@ 64 -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/MatePairNogel.sort.bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/MatePairNogel.bam
