#!/bin/bash
#$ -N MJOrtho
#$ -S /bin/bash
#$ -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/orthologs
#$ -e /home/ISAD/ks575/Data/workspace/Maniola_analysis/orthologs
#$ -q hpc.q
#$ -pe openmpi_ib 64
# Send mail at submission and completion of script
#$ -m abes
#$ -M k.saurabh-singh@exeter.ac.uk
. /etc/profile.d/modules.sh
module load Anaconda/5.0.0_py_2.7 shared sge/2011.11p1
source activate phylogenomics
/home/ISAD/ks575/Data/workspace/whitefly/software/OrthoFinder-2.3.1/./orthofinder -t 32 -a 16 -f /home/ISAD/ks575/Data/workspace/Maniola_analysis/orthologs/Data
