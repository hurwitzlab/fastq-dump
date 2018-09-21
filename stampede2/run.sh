#!/bin/bash

#SBATCH -J fastq-dump
#SBATCH -A iPlant-Collabs
#SBATCH -p normal
#SBATCH -t 24:00:00
#SBATCH -N 1
#SBATCH -n 1

module load tacc-singularity

echo "all arguments: $@"

IMG="sra-fastq-dump-0.0.1.img"

if [[ ! -e "$IMG" ]]; then
    echo "Missing Singularity image \"$IMG\""
    exit 1
fi

singularity run $IMG $@

echo "Done"
