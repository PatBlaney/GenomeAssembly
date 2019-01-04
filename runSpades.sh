#!/bin/bash
nice -n19 spades.py -o vibrioAssembly \
--pe1-1 SRR8175786_1.paired.fastq \
--pe1-2 SRR8175786_2.paired.fastq \
-t 8 \
-m 50 \
1>vibrioAssembly.log 2>vibrioAssembly.err &
