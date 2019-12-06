SINGULARITY = /usr/local/bin/singularity
IMG = fastq-dump-0.1.0.img
DEF = image.def

run:
	sudo $(SINGULARITY) run $(IMG)

clean:
	rm -f $(IMG)

img: clean
	sudo $(SINGULARITY) build $(IMG) $(DEF)

test:
	$(SINGULARITY) exec $(IMG) fastq-dump --split-files -O fq-out SRR017891
