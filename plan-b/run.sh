#!/bin/bash

echo "all arguments: $@"

CWD=$(dirname "$0")
IMG="$CWD/sra-fastq-dump-0.0.1.img"

if [[ ! -e "$IMG" ]]; then
    echo "Missing Singularity image \"$IMG\""
    exit 1
fi

echo $OUTDIR
singularity run -B $CWD/../data:/data $IMG --outdir /data $@

echo "Done"
