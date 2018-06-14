#!/bin/bash

#SBATCH -A iPlant-Collabs
#SBATCH -N 4
#SBATCH -n 16
#SBATCH -t 48:00:00
#SBATCH -p normal
#SBATCH -J cntrfuge
#SBATCH --mail-type BEGIN,END,FAIL
#SBATCH --mail-user scottdaniel@email.arizona.edu

OUT_DIR="$WORK/crc_mouse_centrifuged"

export MY_PARAMRUN="$HOME/launcher/paramrun"

[[ -d "$OUT_DIR" ]] && rm -rf $OUT_DIR

bash run.sh -q "$WORK/in" -f fastq -o $OUT_DIR -x 9606,32630 -t 12 -k 
