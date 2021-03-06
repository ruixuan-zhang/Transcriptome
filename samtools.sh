#!/bin/bash
# Goal: Convert sam file generated by Hisat2 to Bam

mapping_result= # Add your mapping result folder here

for sample in $(ls ${mapping_result})
do
        # transfer from sam to bam
        sam_input=${mapping_result}/${sample}/${sample}.sam
        sam_output=${mapping_result}/${sample}/${sample}.bam

        nohup samtools view -hb ${sam_input} > ${sam_output}  &

done
