#!/bin/bash
#
# Re-run the code locally, to re-create the data and figure.
#
# Usage:
#
#   ./scripts/rerun.sh
#
#SBATCH --partition=gelifes
#SBATCH --time=48:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=pirex45
#SBATCH --output=example_45.log
#
rm -rf example_45
rm *.png
time Rscript example_45.R
zip -r pirouette_example_45.zip example_45 example_45.R scripts *.png

