IMG="/work/05066/imicrobe/singularity/fastq-dump-0.1.0.img"

if [[ ! -e "$IMG" ]]; then
    echo "Missing Singularity image \"$IMG\""
    exit 1
fi

singularity run $IMG ${ACCN}
