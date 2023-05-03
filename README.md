# Inpainting for unsupervised tumor segmentation

This repository contains the code for the paper ["XXXX"] \
The repo consists of the following modules: 

1 - Inpainting model based on Gated Convolution blocks implemented in a U-Net like architecture \
2 - Auto-inpainting framework based on the moving window strategy \
3 - Image preprocessing and preparation of 2D multimodal slices \


## Usage:

the structure of the input directory in which the nifti files of each subjet are stored in a separate folder should be:
```
/mnt/data/AutoPET/
    subjct1
        subjct1_ct.nii.gz
        subjct1_pet.nii.gz
    subject2
        subjct1_ct.nii.gz
        subjct1_pet.nii.gz
        
    ...      
```

