#!/bin/bash
#$ -N MJrepet
#$ -S /bin/bash
#$ -o /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking
#$ -e /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking
#$ -q hpc.q
#$ -pe openmpi_ib 64
# Send mail at submission and completion of script
#$ -m abes
#$ -M k.saurabh-singh@exeter.ac.uk
. /etc/profile.d/modules.sh
module load RepeatScout/1.0.5 Anaconda/5.0.0_py_2.7 shared gcc/7.2.0 sge/2011.11p1 RepeatMasker/4.0.6 ActivePerl/5.24.0
export PERL5LIB=/home/ISAD/ks575/perl5/lib/perl5:$PERL5LIB
export PATH=/home/ISAD/ks575/Data/workspace/Tuta/Polishing/Pilon_polishing/iter2/masking/nseg:$PATH
build_lmer_table -sequence /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.fa -freq /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.freq
RepeatScout -sequence /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.fa -output /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.repseq.fa -freq /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.freq
cat /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.repseq.fa | filter-stage-1.prl > /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.repseq.f1.fa
grep -c ">"  /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.repseq.f1.fa /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.repseq.fa
RepeatMasker /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.fa -e ncbi -lib /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.repseq.f1.fa -dir /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking -pa 40
cat /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.repseq.f1.fa | filter-stage-2.prl --cat=/home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.fa.out > /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.repseq.f2.fa 
grep -c ">" /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.repseq.f2.fa /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.repseq.f1.fa /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.repseq.fa
RepeatMasker /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.fa -e ncbi -lib /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.repseq.f2.fa -dir /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking -pa 40 
mv /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.fa.masked /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.fa.hardmasked
RepeatMasker /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.fa -e ncbi -lib /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.repseq.f2.fa -dir /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking -xsmall -pa 40
mv /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.fa.masked /home/ISAD/ks575/Data/workspace/Maniola_analysis/Polishing/pilon/run2/masking/genome.fa.softmasked
