#!/bin/bash

# commandline arguments used with CNV-seq as per https://doi.org/10.1101/215517

perl cnv-seq.pl --test chr1.hits.pimp --ref chr1.hits.lyco --genome-size 823786402 --log2-threshold 0.1 --p 0.1 --annotate --minimum-windows 6 --window-size 276 &
perl cnv-seq.pl --test chr2.hits.pimp --ref chr2.hits.lyco --genome-size 823786402 --log2-threshold 0.1 --p 0.1 --annotate --minimum-windows 6 --window-size 276 &
perl cnv-seq.pl --test chr3.hits.pimp --ref chr3.hits.lyco --genome-size 823786402 --log2-threshold 0.1 --p 0.1 --annotate --minimum-windows 6 --window-size 276 &
perl cnv-seq.pl --test chr4.hits.pimp --ref chr4.hits.lyco --genome-size 823786402 --log2-threshold 0.1 --p 0.1 --annotate --minimum-windows 6 --window-size 276 &
perl cnv-seq.pl --test chr5.hits.pimp --ref chr5.hits.lyco --genome-size 823786402 --log2-threshold 0.1 --p 0.1 --annotate --minimum-windows 6 --window-size 276 &
perl cnv-seq.pl --test chr6.hits.pimp --ref chr6.hits.lyco --genome-size 823786402 --log2-threshold 0.1 --p 0.1 --annotate --minimum-windows 6 --window-size 276 &
perl cnv-seq.pl --test chr7.hits.pimp --ref chr7.hits.lyco --genome-size 823786402 --log2-threshold 0.1 --p 0.1 --annotate --minimum-windows 6 --window-size 276 &
perl cnv-seq.pl --test chr8.hits.pimp --ref chr8.hits.lyco --genome-size 823786402 --log2-threshold 0.1 --p 0.1 --annotate --minimum-windows 6 --window-size 276 &
perl cnv-seq.pl --test chr9.hits.pimp --ref chr9.hits.lyco --genome-size 823786402 --log2-threshold 0.1 --p 0.1 --annotate --minimum-windows 6 --window-size 276 &
perl cnv-seq.pl --test chr10.hits.pimp --ref chr10.hits.lyco --genome-size 823786402 --log2-threshold 0.1 --p 0.1 --annotate --minimum-windows 6 --window-size 276 &
perl cnv-seq.pl --test chr11.hits.pimp --ref chr11.hits.lyco --genome-size 823786402 --log2-threshold 0.1 --p 0.1 --annotate --minimum-windows 6 --window-size 276 &
perl cnv-seq.pl --test chr12.hits.pimp --ref chr12.hits.lyco --genome-size 823786402 --log2-threshold 0.1 --p 0.1 --annotate --minimum-windows 6 --window-size 276
