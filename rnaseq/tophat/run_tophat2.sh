#PBS -N tophat2-Neolecta -l nodes=1:ppn=12 -q highmem
module load bowtie2
module load tophat/2.0.0
tophat2 -G ../../PASA/Neolecta_asmk67.all.functional.gff --rg-id Neolecta1 --rg-sample Neolecta1 --rg-library Neolecta1 --rg-description "Neolecta irregularis fruiting body" -p 12 --library-type fr-unstranded --b2-very-sensitive index/Neolecta_asmk67 ../Neo_RNA_seq-RNA_l1_1.SeqPrep_trim.fq ../Neo_RNA_seq-RNA_l1_2.SeqPrep_trim.fq
