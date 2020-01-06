#!/bin/bash
#$ -N MjQuali
#$ -S /bin/bash
#$ -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon
#$ -e /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon
#$ -q hpc.q
#$ -pe openmpi_ib 28
# Send mail at submission and completion of script
#$ -m abes
#$ -M k.saurabh-singh@exeter.ac.uk
. /etc/profile.d/modules.sh
module load shared sge Anaconda/5.0.0_py_2.7 samtools/1.3.1
source activate test
export PATH="/home/ISAD/ks575/Data/Simon_data/qualimap_v2.2.1:$PATH"
cd /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon
#qualimap bamqc -bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_pe.sorted.bam -c -sd -outformat PDF --java-mem-size=100G
qualimap bamqc -bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_mp1.sorted.bam -c -sd -outformat PDF --java-mem-size=100G
qualimap bamqc -bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_mp2.sorted.bam -c -sd -outformat PDF --java-mem-size=100G
qualimap bamqc -bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_mp3.sorted.bam -c -sd -outformat PDF --java-mem-size=100G
qualimap bamqc -bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_mp4.sorted.bam -c -sd -outformat PDF --java-mem-size=100G
qualimap bamqc -bam /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/maniola_iter3_se.sorted.bam -c -sd -outformat PDF --java-mem-size=100G
