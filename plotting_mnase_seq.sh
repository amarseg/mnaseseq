#!/bin/sh

file_name=$1
bed_files=$2
plot_name=$3
matrix_file=${file_name}_matrix

computeMatrix reference-point -S ${file_name} -R ${bed_files} -o ${matrix_file} -a 1000 -b 1000

#plotHeatmap --matrixFile ${matrix_file} --outFileName ${plot_name}_heatmap

#plotProfile --matrixFile ${matrix_file} --outFileName ${plot_name}_profile
