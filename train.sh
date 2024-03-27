#!/bin/bash
#SBATCH -c 4                # Number of cores (-c)
#SBATCH -t 0-08:10          # Runtime in D-HH:MM, minimum of 10 minutes
#SBATCH -p seas_gpu   # Partition to submit to
#SBATCH --mem=40000           # Memory pool for all cores (see also --mem-per-cpu)
#SBATCH --gres=gpu:2
#SBATCH -o myoutput_%j.out  # File to which STDOUT will be written, %j inserts jobid
#SBATCH -e myerrors_%j.err  # File to which STDERR will be written, %j inserts jobid

# load modules
module load python/3.10.9-fasrc01
conda activate torch
cd /n/home04/amuppidi/marl_vis/Multi-Agent-Reinforcement-Learning
# run code
~/.conda/envs/torch/bin/python main.py