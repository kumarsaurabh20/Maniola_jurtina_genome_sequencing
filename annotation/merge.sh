#!/bin/bash
#$ -N MJmerge
#$ -S /bin/bash
#$ -o /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded
#$ -e /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded
#$ -q hpc.q
#$ -pe openmpi_ib 64
# Send mail at submission and completion of script
#$ -m abes
#$ -M k.saurabh-singh@exeter.ac.uk
. /etc/profile.d/modules.sh
module load Anaconda/5.0.0_py_2.7 shared gcc/7.2.0 sge/2011.11p1 bamtools/2.4.1
source activate test
bamtools merge -list /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/star/bam.list -out /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/star/Maniola.merged.bam
samtools sort -@ 60 -o /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/star/Maniola.merged.sorted.bam /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/star/Maniola.merged.bam
