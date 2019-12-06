TAG = hurwitzlab/fastq-dump:0.0.1

img:
	docker build --no-cache --tag=$(TAG) .

run:
	docker run --rm $(TAG)

shell:
	docker run --rm -it $(TAG) bash

test:
	docker run -v /data:/data --rm hurwitzlab/fastq-dump:0.0.1 fastq-dump --split-files -O /data/kyclark/fq-out SRR017891

push: 
	docker push $(TAG)
