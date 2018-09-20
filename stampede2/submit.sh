#!/bin/bash

set -u

if [[ $# -ne 1 ]]; then
  printf " Usage: %s ACCN\n" $(basename $0)
  exit 1
fi

ACCN=$1

QUEUE="development"
TIME="02:00:00"

#QUEUE="normal"
#TIME="24:00:00"

sbatch -A iPlant-Collabs -N 1 -n 1 -t $TIME -p $QUEUE -J fastq-dump run.sh "$ACCN"
