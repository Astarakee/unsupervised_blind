# Inpainting for unsupervised tumor segmentation

This repository contains the code for the paper ["XXXX"] \
The repo consists of the following modules: 

1 - Inpainting model based on Gated Convolution blocks implemented in a U-Net like architecture \
2 - Auto-inpainting framework based on the moving window strategy \
3 - Image preprocessing and preparation of 2D multimodal slices \


## Usage:

To run the autoinpainting pipeline do:

change the directory into "Autoinpinting" folder and:
```
python run.py --checkpoint_dir PATH_TO_WEIGHTS --upper_cut INT1 --lower_cut INT2 --input_dir PATH_TO_NIFTI --output_dir PATH_TO_SAVE_RESULTS
```
Here, **"PATH_TO_WEIGHTS"** is the directory in which the checkpoints of a pretrained model are stored.\
Parameter **"INT1"** refers to an integer to cut certain number of slices from the upper part of the volumes.
Basically, it is used to speed up computational time by avoiding the analyses of very top part of the body such as brain (experimentally something like 20 is good).
Parameter **"INT2"** is another integer similiar to "INT1" but refers to lower organs to avoid analysis on e.g, legs  (can be 20).\
**"PATH_TO_SAVE_RESULTS"** is the directory in which all the results and logs will be stored.\
**"PATH_TO_NIFTI"** is the input directory in which the nifti files of each subjet are stored in a separate folder, for example:
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

Please note that there is no restriction for the filename of each subjects.

## Model output:
Within the "PATH_TO_SAVE_RESULTS" there will be directory named as AutoPET (can be modified in args.exp_name):
```
/PATH/AutoPET/
    2D
      input : containing the 2D slices for inpainting
      output : containing the inpainted slices
    
    3d_nifti
      ct_residual : containing the nifti volumes of differences between original CTs and inpainted CTs
      pet_residual : containing the nifti volumes of differences between original CTs and inpainted CTs
 ```
 ## TODO:
 
 installation and model weights will be added.
 
