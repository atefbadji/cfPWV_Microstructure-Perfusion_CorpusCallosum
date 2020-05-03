nii = load_untouch_nii('diffdata.nii.gz');
nii1 = load_untouch_nii('out_JHU-ICBM-labels-1mm_CC.nii.gz');
dim = size(nii.img);
SNRt = nii1;
SNRt.img = zeros(dim(1:3));
for i=1:dim(1)
    for j=1:dim(2)
        for k=1:dim(3)
            SNRt.img(i,j,k) = mean(double(nii.img(i,j,k,:)))/std(double(nii.img(i,j,k,:)));
        end
    end
end
save_untouch_nii(SNRt,'asl_cbf_tSNR3.nii.gz')
