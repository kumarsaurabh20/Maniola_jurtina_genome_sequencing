#!/bin/bash
#$ -N bwa1
#$ -S /bin/bash
#$ -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon
#$ -e /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon
#$ -q compute.q
#$ -pe openmpi_ib 90
# Send mail at submission and completion of script
#$ -m abes
#$ -M k.saurabh-singh@exeter.ac.uk
. /etc/profile.d/modules.sh
module load sge shared Anaconda/5.0.0_py_2.7 gcc/7.2.0 samtools/1.3.1
source activate test
bwa mem -t 90 /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run1/maniola_run2 /home/ISAD/ks575/Data/workspace/maniola/Project_1263/Sample_100_PE/raw_illumina_reads/100_PE_ACTGAT_L008_R1_001_val_1.fq /home/ISAD/ks575/Data/workspace/maniola/Project_1263/Sample_100_PE/raw_illumina_reads/100_PE_ACTGAT_L008_R2_001_val_2.fq -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run1/maniola_iter3_pe.sam
samtools sort -@ 45 -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run1/maniola_iter3_pe.sorted.bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run1/maniola_iter3_pe.sam

