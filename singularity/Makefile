SINGULARITY = /usr/local/bin/singularity
IMG = fastq-dump-1.0.img
DEF = image.def
SIZE = 1536

run:
	sudo $(SINGULARITY) run $(IMG)

clean:
	rm -f $(IMG)

img: 	clean
	sudo $(SINGULARITY) create --size $(SIZE) $(IMG)
	sudo $(SINGULARITY) bootstrap $(IMG) $(DEF)

