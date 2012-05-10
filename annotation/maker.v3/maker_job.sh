#!/bin/bash
#PBS -l nodes=1:ppn=2,walltime=96:00:00,mem=16gb
#PBS -N NeolectaMaker -j oe
module load stajichlab
module load stajichlab-perl
module load maker/2.25
#module load maker
module load snap
module load augustus
module load RepeatMasker
module load ncbi-blast
which augustus
echo $AUGUSTUS_CONFIG_PATH
which maker
cd /home_stajichlab/jstajich/bigdata/Neolecta/annotation/maker.v3
maker >& maker-$PBS_ARRAYID.out
