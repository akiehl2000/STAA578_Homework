#!/bin/bash

#SBATCH --partition amilan
#SBATCH --qos normal
#SBATCH --account=csu-general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --job-name adam_test_augmented_model
#SBATCH --time 01:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=akiehl@colostate.edu



module load anaconda
conda activate adamKiehlEnvSTAA578


jupyter nbconvert --to html --execute augmentModels.ipynb
jupyter nbconvert --to notebook --execute augmentModels.ipynb
