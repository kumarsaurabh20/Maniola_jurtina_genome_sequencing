#!/bin/bash
#$ -N pilon6
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
bwa mem -t 90 /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3 /home/ISAD/ks575/Data/workspace/maniola/Project_1263/short_reads_se_inkn_orientation.fastq -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_se.sam
samtools sort -@ 45 -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_se.sorted.bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_se.sam
