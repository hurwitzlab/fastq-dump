up:
	copy_from_manifest.py

app:
	tapis apps create -F app.json

template:
	jobs-template -A sra-fastq-dump-0.1.0 > job.json

job:
	tapis jobs submit -F job.json
