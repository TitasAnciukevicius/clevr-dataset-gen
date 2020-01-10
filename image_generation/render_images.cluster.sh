#!/bin/bash
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --mem 16G
#SBATCH --gres=gpu:1
#SBATCH --time 1-00:00

/nfs/scistore12/chlgrp/phenders/packages/blender-2.79b-linux-glibc219-x86_64/blender --background -noaudio --python render_images.py -- --num_images=100 --start_idx=${SLURM_ARRAY_TASK_ID}00 --output_masks=1 --use_gpu=1

