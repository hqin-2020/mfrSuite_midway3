#! /bin/bash

#SBATCH --account=pi-lhansen
#SBATCH --job-name=run
#SBATCH --output=./job-outs/WZVtilde/chiUnderline_1.0_a_e_0.15_a_h_0.07_gamma_e_1.0_gamma_h_1.0_psi_e_1.0_psi_h_1.0/run.out
#SBATCH --error=./job-outs/WZVtilde/chiUnderline_1.0_a_e_0.15_a_h_0.07_gamma_e_1.0_gamma_h_1.0_psi_e_1.0_psi_h_1.0/run.err
#SBATCH --time=0-10:00:00
#SBATCH --partition=caslake
#SBATCH --nodes=1
#SBATCH --cpus-per-task=28
#SBATCH --mem-per-cpu=2000

module load python/anaconda-2021.05

python3 /project/lhansen/mfrSuite_midway/SolvedModels/run_mfrSuite.py --chiUnderline 1.0 --a_e 0.15 --a_h 0.07 --gamma_e 1.0 --gamma_h 1.0 --psi_e 1.0 --psi_h 1.0                                                     --nV 0 --nVtilde 30 --V_bar 1.0 --Vtilde_bar 1.0 --sigma_V_norm 0 --sigma_Vtilde_norm 0.3 
