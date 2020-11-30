# Goal
This project is a basic pipeline for transcriptomic analysis.

* Data type: pair-end mRNA reads;
* Experiment design: time-course virus infection data without biological replicates
* Pipeline: Preprocessing (fastqc - mapping) - quantification and normalization - cluster analysis - DEG test - GO and kegg analysis
* Other: pathway and GO terms based heatmap

## Workflow
1. Quality control: fastqc (https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
2. Mapping: hisat2
3. Counting: HTSeq
4. RPKM calculation
5. Viral genes clustering
6. DEGs
7. GO & KEGG analysis


## Contact
Ruixuan Zhang (ruixuan@kuicr.kyoto-u.a.c.jp) of the Ogata lab in from Kyoto University.
