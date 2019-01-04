#!/bin/sh
nice -n 19 java -jar /usr/local/programs/Trimmomatic-0.36/trimmomatic-0.36.jar PE \
-threads 1 -phred33 \
SRR8175786_1.fastq \
SRR8175786_2.fastq \
SRR8175786_1.paired.fastq \
SRR8175786_1.unparied.fastq \
SRR8175786_2.paired.fastq \
SRR8175786_2.unpaired.fastq \
HEADCROP:0 \
ILLUMINACLIP:/usr/local/programs/Trimmomatic-0.36/adapters/NexteraPE-PE.fa:2:30:10 \
LEADING:20 TRAILING:20 SLIDINGWINDOW:4:30 MINLEN:36 \
1>SRR8175786.trim.log 2>SRR8175786.trim.err &
