#!/bin/bash -l

#####################################################################

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --mail-user=the.owner.of.the.dream123@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="Fetch SRP399982"
#SBATCH -p batch

# Print current date
date

#####################################################################


mkdir -p /rhome/naotok/bigdata/RBP_KO/SRP399982/fastq


for i in {30..47}
do

	wget -P /rhome/naotok/bigdata/RBP_KO/SRP399982/fastq ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR217/0${i}/SRR217363${i}/SRR217363${i}_1.fastq.gz
	wget -P /rhome/naotok/bigdata/RBP_KO/SRP399982/fastq ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR217/0${i}/SRR217363${i}/SRR217363${i}_2.fastq.gz

done


# Print end date
date


# Print name of node
hostname
