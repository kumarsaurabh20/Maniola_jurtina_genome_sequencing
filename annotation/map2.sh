#!/bin/bash
#$ -N MJstar2
#$ -S /bin/bash
#$ -o /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/star
#$ -e /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/star
#$ -q hpc.q
#$ -pe openmpi_ib 64
# Send mail at submission and completion of script
#$ -m abes
#$ -M k.saurabh-singh@exeter.ac.uk
. /etc/profile.d/modules.sh
module load RepeatScout/1.0.5 Anaconda/5.0.0_py_2.7 shared gcc/7.2.0 sge/2011.11p1 RepeatMasker/4.0.6 ActivePerl/5.24.0
source activate utility
export PATH=/home/ISAD/ks575/Data/workspace/stink_bug/Illumina/RNAseq/STAR/STAR-2.6.0a/bin/Linux_x86_64:$PATH
STAR --genomeDir /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/star/star --readFilesIn /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/SRR3721773.fastq.gz --outFileNamePrefix /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/star/TA_star4 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat --runThreadN 8
STAR --genomeDir /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/star/star --readFilesIn /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/SRR3724195.fastq.gz --outFileNamePrefix /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/star/TA_star5 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat --runThreadN 8
STAR --genomeDir /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/star/star --readFilesIn /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/SRR3724196.fastq.gz --outFileNamePrefix /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/star/TA_star6 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat --runThreadN 8
STAR --genomeDir /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/star/star --readFilesIn /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/SRR3724198.fastq.gz --outFileNamePrefix /home/ISAD/ks575/Data/workspace/maniola/RNAseq_NCBI_downloaded/star/TA_star7 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat --runThreadN 8
