#PBS -N cufflinks -l nodes=1:ppn=8 -j oe
/opt/cufflinks/1.3.0/cufflinks -o cufflinks -p 8 -G ../../annotation/maker.v3/Neolecta_asmk67.all_functional.gff -I 1500 \
 --library-type fr-unstranded tophat_out/accepted_hits.bam
