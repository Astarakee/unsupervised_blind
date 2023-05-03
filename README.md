# Inpainting for unsupervised tumor segmentation

This repository contains the blind version the code for the paper ["XXXX"] \



## Usage:

the structure of the input directory in which the nifti files of each subjet are stored in a separate folder should be:
```
/mnt/data/INPUT_FOLDER/
    subjct1
        subjct1_ct.nii.gz
        subjct1_pet.nii.gz
    subject2
        subjct1_ct.nii.gz
        subjct1_pet.nii.gz
        
    ...      
```
# Run Inference on Docker Container

To build the docker image, run the following command inside the repo: 

docker build . -t mytest

And then: 

`docker run -v INPUT_FOLDER:/input -v OUTPUT_FOLDER:/data mytest` 

