APP = sra-fastq-dump-0.0.1
EMAIL = $(CYVERSEUSERNAME)@email.arizona.edu
SINGULARITY = /usr/local/bin/singularity
IMG = singularity/$(APP).img
DEF = singularity/image.def
SIZE = 384

ifndef CYVERSEUSERNAME
$(error CYVERSEUSERNAME is not set)
endif

clean:
	find . \( -name \*.img \) -exec rm {} \;

img: clean
	sudo $(SINGULARITY) create --size $(SIZE) $(IMG)
	sudo $(SINGULARITY) bootstrap $(IMG) $(DEF)

run:
	sudo $(SINGULARITY) run $(IMG)

template:
	jobs-template -A $(APP) > job.json

job:
	jobs-submit -F job.json

delete:
	files-delete $(CYVERSEUSERNAME)/applications/$(APP)

upload:
	files-upload -F stampede2/ $(CYVERSEUSERNAME)/applications/$(APP)
	iput -PT singularity/$(APP).img /iplant/home/$(CYVERSEUSERNAME)/applications/$(APP)/stampede2

app:
	apps-addupdate -F stampede2/app.json

deploy-app: delete upload app

test: clean
	sbatch test.sh
