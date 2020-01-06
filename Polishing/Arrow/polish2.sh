#!/bin/bash
#$ -N polish2
#$ -S /bin/bash
#$ -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing
#$ -e /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing
#$ -q compute.q
#$ -pe openmpi_ib 48
# Send mail at submission and completion of script
#$ -m abes
#$ -M k.saurabh-singh@exeter.ac.uk
. /etc/profile.d/modules.sh
module load sge shared Anaconda/5.0.0_py_2.7 gcc/7.2.0 samtools/1.3.1 bamtools/2.4.1
source activate test
bamtools merge -list /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/bam.list -out /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/blasr.merged.bam
samtools sort -@ 48 -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/blasr.merged.sorted.bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/blasr.merged.bam
#mkdir /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/iter2
mv /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/blasr.merged.sorted.bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/iter3
pbindex /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/iter3/blasr.merged.sorted.bam
cp /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/iter2/maniola.arrow.iter2.fasta /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/iter3
samtools faidx /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/iter3/maniola.arrow.iter2.fasta
arrow /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/iter3/blasr.merged.sorted.bam -j 47 --referenceFilename /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/iter3/maniola.arrow.iter2.fasta -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/iter3/maniola.arrow.iter3.fasta -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/iter3/maniola.arrow.iter3.gff -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/iter3/maniola.arrow.iter3.fastq
