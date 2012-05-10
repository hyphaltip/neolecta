#PBS -N blastpNeolecta -l nodes=1:ppn=4,walltime=36:00:00,mem=2gb -j oe -o blastpNeolecta.out 
#PBS -d /home_stajichlab/jstajich/bigdata/Neolecta/annotation/maker.v3/split
module load ncbi-blast
blastp -query neol.$PBS_ARRAYID -db /home_stajichlab/jstajich/bigdata/db/uniprot_sprot.fasta -outfmt 6 -out neol.$PBS_ARRAYID-vs-sprot.BLASTP.tab -use_sw_tback -num_threads 4 -evalue 1e-4 -max_target_seqs 5
