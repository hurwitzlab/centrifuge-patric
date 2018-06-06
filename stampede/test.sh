#!/bin/bash

#SBATCH -A iPlant-Collabs
#SBATCH -N 1
#SBATCH -n 68
#SBATCH -t 48:00:00
#SBATCH -p normal
#SBATCH -J cntrfuge
#SBATCH --mail-type BEGIN,END,FAIL
#SBATCH --mail-user scottdaniel@email.arizona.edu

OUT_DIR="$WORK/crc_mouse_centrifuged"

export MY_PARAMRUN="$HOME/launcher/paramrun"

#[[ -d "$OUT_DIR" ]] && rm -rf $OUT_DIR/*

bash run.sh -k -q "$OUT_DIR/split" -f fastq -o $OUT_DIR -x 9606,32630
