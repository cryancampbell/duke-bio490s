#!/bin/bash
#
#SBATCH --job-name=srr_dwnld
#SBATCH --output=/work/cc216/490S/duke-bio490s/projects/CancerImmuno/srr_dwnld.out
#SBATCH --error=/work/cc216/490S/duke-bio490s/projects/CancerImmuno/srr_dwnld.err
#SBATCH --mail-user=njg13@duke.edu
#SBATCH --mem=2G
#SBATCH --nodes=1

cat /work/cc216/490S/duke-bio490s/projects/CancerImmuno/Data/SRRList.txt | while read -r a; do /work/cc216/490S/jh510/sratoolkit.2.8.2-1-centos_linux64/bin/fastq-dump -Z -split-files  $a; done 
