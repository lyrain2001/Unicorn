#!/bin/bash -x

#SBATCH --output=unicorn-cta-%j.log
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --time=47:59:00
#SBATCH --mem=128GB
#SBATCH --gres=gpu:1
#SBATCH --job-name=unicorn-cta
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=yl6624@nyu.edu

python test.py --load --ckpt UnicornPlus --model deberta_base --dataset_path "data/Limaye_col_type_anno/test.json" --test_metrics "f1"