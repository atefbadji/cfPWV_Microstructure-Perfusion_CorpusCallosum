
clc
clear all
dati = load_nii('asl_pre_cbf.nii.gz');   
atlas = load_nii('out_JHU-ICBM-labels-1mm_CC.nii.gz');
stat_mean = nanmean(dati.img((atlas.img==1) & (dati.img>0) & (dati.img<40)));