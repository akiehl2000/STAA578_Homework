#!/bin/bash

#SBATCH --partition amilan
#SBATCH --qos normal
#SBATCH --account=csu-general
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --job-name adam_first_rnns_128
#SBATCH --time 10:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=akiehl@colostate.edu



module load anaconda
conda activate adamKiehlEnvSTAA578


jupyter nbconvert --to html --execute RNNscriptHPC128.ipynb
