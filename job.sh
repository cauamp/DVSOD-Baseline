#!/bin/bash
#SBATCH --time=00:50:00          # Time limit (HH:MM:SS) 
#SBATCH --output=run_%j/result.out   # Output file name 
#SBATCH --error=run_%j/log.err
#SBATCH --job-name=caua_dvsod-test   # Name of the job

#SBATCH --account=def-vislearn

#SBATCH --mem=128G                 # Request 128GB of memory
#SBATCH --cpus-per-task=32        # Request CPU core
#SBATCH --gpus-per-node=2         # Request GPU per node

module purge # Clear all loaded modules

# 1. Load the same modules you used to create the env
module load python/3.11

# 2. Activate your virtual environment
# source /home/caua/projects/def-vislearn/cauamp/qwen/bin/activate
source ~/miniconda3/etc/profile.d/conda.sh
conda activate dvsod

# 3. Run your python script
python ~/projects/def-vislearn/caua/DVSOD-Baseline/test.py