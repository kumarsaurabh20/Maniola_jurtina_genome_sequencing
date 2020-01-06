#!/bin/bash
#$ -N MJ_repeats
#$ -S /bin/bash
#$ -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/new
#$ -e /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/new
#$ -q hpc.q
#$ -pe openmpi_ib 16
# Send mail at submission and completion of script
#$ -m abes
#$ -M k.saurabh-singh@exeter.ac.uk
. /etc/profile.d/modules.sh
module load Anaconda/5.0.0_py_2.7 shared sge/2011.11p1
source activate repeatmodeler
BuildDatabase -name /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/new/maniola.repbase -engine ncbi /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/new/genome.fa
RepeatModeler -engine ncbi -pa 16 -database /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/new/maniola.repbase
