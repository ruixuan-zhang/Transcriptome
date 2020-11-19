#!/bin/bash
# Goal: map reads to genome

mapping_result_path= # Add output path here

index_path= # Add genome index here (built by hisat2 before)

# I have 
READS=(0 1 2 4 8 16 24 48)
for I in ${READS[@]}
do
        FILE1= # Add forward read here, normally end with xxx_1.fastq
        FILE2= # Add reverse read here, normally end with xxx_2.fastq
        
        # create subfolder
        mkdir -p  ${mapping_result_path}/sub_folder${I}
        log_file=${mapping_result_path}/sub_folder${I}/hisat2_log.txt

        nohup hisat2 -x ${index_path} -1 ${FILE1} -2 ${FILE2} -p 8 --max-intronlen 1000 --no-discordant -S ${mapping_result_path}/sub_folder${I}/output_file${I}.sam > ${log_file} 2>&1 &
done 
