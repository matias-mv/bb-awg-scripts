#!/bin/bash

pix_type=hp
nside=128
res_arcmin=20
smooth_fwhm=60
n_sims=700
id_sims_start=300
out_dir=/home/matiasmv/SimonsObs/simpure_data/simpure_inputs/input_sims  #  YOUR OUTPUT DIR

mkdir -p $out_dir

bb_awg_scripts_dir=/home/matiasmv/SimonsObs/bb-awg-scripts
pwg_scripts_dir=/shared_home/kwolz/bbdev/pwg-scripts


## Generate a set of pure-T/E/B simulations needed for 
## a) E-to-B leakage deprojection
## b) transfer function estimation
python ${bb_awg_scripts_dir}/pipeline/misc/get_tf_simulations.py \
    --pix_type=$pix_type \
    --nside=$nside \
    --smooth_fwhm=$smooth_fwhm \
    --n_sims=$n_sims \
    --id_sims_start $id_sims_start \
    --out_dir=$out_dir \
    --res_arcmin $res_arcmin \
    --deprojection True