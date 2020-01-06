#!/home/ISAD/ks575/Data/software/CAFE/release/cafe
date
version

#specify data file, p-value threshold, # of threads to use, and log file
load -i Orthogroups.GeneCount.tab -p 0.05 -t 10 -l log.txt

#the phylogenetic tree structure with branch lengths
tree (Llunatus:16,(Dmelanogaster:15,(Pxylostella:14,(((Bmori:2,(Pinterpunctella:1,Atransitella:1):1):2,(Csuppressalis:1,Obrumata:1):3):9,(Ppolytes:8,((Psennae:1,Ccecrops:1):6,(Dplexippus:5,((Hmelpomene:2,(Jcoenia:1,Mcinxia:1):1):2,(Banynana:1,Mjurtina:1):3):1):2):1):5):1):1):1)

#search for 2 parameter model
lambda -s -t (((2,2)1,(1,1)1)1,1)

# generate a report
report report.txt
