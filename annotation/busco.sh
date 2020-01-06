#!/bin/bash
#$ -N MJ_busco3
#$ -S /bin/bash
#$ -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/BUSCO
#$ -e /home/ISAD/ks575/Data/workspace/Maniola_analysis/BUSCO
#$ -q hpc.q
#$ -pe openmpi_ib 30
# Send mail at submission and completion of script
#$ -m abes
#$ -M k.saurabh-singh@exeter.ac.uk
. /etc/profile.d/modules.sh
module load Anaconda/5.0.0_py_2.7 shared sge/2011.11p1
source activate phylogenomics
run_BUSCO.py -i /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/renaming/genome.fa -c 20 -o maniola_eukryota -m geno -l /home/ISAD/ks575/Data/workspace/Maniola_analysis/BUSCO/eukaryota_odb9 -sp fly
