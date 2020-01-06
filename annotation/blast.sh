#!/bin/bash
#$ -N MJblast
#$ -S /bin/bash
#$ -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/braker
#$ -e /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/braker
#$ -q hpc.q
#$ -pe openmpi_ib 64
# Send mail at submission and completion of script
#$ -m abes
#$ -M k.saurabh-singh@exeter.ac.uk
. /etc/profile.d/modules.sh
module load Anaconda/5.0.0_py_2.7 shared sge/2011.11p1 ncbi-blast/2.5.0+
source activate test
blastx -query /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/braker/augustus.hints.codingseq -db /home/ISAD/ks575/arthropoda/arthropoda_nr -evalue 1e-5 -max_target_seqs 1 -outfmt 5 -out /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/braker/Maniola_braker.blastx.xml -parse_deflines -num_threads 64
