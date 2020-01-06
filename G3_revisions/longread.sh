#!/bin/bash
#$ -N longread
#$ -S /bin/bash
#$ -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions
#$ -e /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions
#$ -q hpc.q
#$ -pe openmpi_ib 64
# Send mail at submission and completion of script
#$ -m abes
#$ -M k.saurabh-singh@exeter.ac.uk
. /etc/profile.d/modules.sh
module load sge shared Anaconda/5.0.0_py_2.7
source activate purge_haplotigs_env 
minimap2 -t 32 -ax map-ont /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/genome.fa /home/ISAD/ks575/Data/workspace/maniola/maniola_minion/minion_merged_all.fasta | samtools view -hF 256 - | samtools sort -@ 32 -m 10G -o minion.bam -T tmp.ali
minimap2 -t 32 -ax map-pb /home/ISAD/ks575/Data/workspace/Maniola_analysis/G3_revisions/genome.fa /home/ISAD/ks575/Data/workspace/maniola/subreads_merged_18_SMRT.fasta | samtools view -hF 256 - | samtools sort -@ 32 -m 10G -o pacbio.bam -T tmp.ali
