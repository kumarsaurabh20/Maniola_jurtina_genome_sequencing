#!/bin/bash
#$ -N pilonMj1
#$ -S /bin/bash
#$ -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon
#$ -e /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon
#$ -q hpc.q
#$ -pe openmpi_ib 63
# Send mail at submission and completion of script
#$ -m abes
#$ -M k.saurabh-singh@exeter.ac.uk
. /etc/profile.d/modules.sh
module load sge shared Anaconda/5.0.0_py_2.7 gcc/7.2.0 samtools/1.3.1 Java/1.8.0_152 pilon/1.21 bamtools/2.4.1
source activate test
#bamtools index -in /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_mp1.sorted.bam 
#bamtools index -in /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_mp2.sorted.bam
#bamtools index -in /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_mp3.sorted.bam
#bamtools index -in /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_mp4.sorted.bam
#bamtools index -in /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_pe.sorted.bam
#bamtools index -in /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_se.sorted.bam
#java -Xmx200g -jar /cm/shared/apps/pilon/1.21/pilon-1.21.jar --genome /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola.arrow.iter3.fasta --frags /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_mp1.sorted.bam --jumps /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_mp2.sorted.bam --jumps /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_mp3.sorted.bam --jumps /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_mp4.sorted.bam --jumps /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_pe.sorted.bam --unpaired /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_se.sorted.bam --outdir /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run1 --output maniola_run1 --changes --vcf --diploid --threads 60
java -Xmx350g -jar /cm/shared/apps/pilon/1.21/pilon-1.21.jar --genome /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola.arrow.iter3.fasta --frags /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_pe.sorted.bam --outdir /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run1 --output maniola_run1 --changes --vcf --diploid --threads 30
