FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get install -y wget

# install SRA Toolkit
RUN wget -q -O sratoolkit.tar.gz http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-ubuntu64.tar.gz && mkdir sratoolkit && tar -xf sratoolkit.tar.gz -C sratoolkit --strip-components 1 && mv sratoolkit/bin/* /usr/local/bin && rm *.tar.gz

CMD ["fastq-dump"]
