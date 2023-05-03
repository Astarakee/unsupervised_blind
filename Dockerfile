FROM tensorflow/tensorflow:2.4.1-gpu

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A4B469963BF863CC
RUN apt-get update --allow-unauthenticated && apt-get install ffmpeg libsm6 libxext6  -y

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

## COPY main.py scripts and libs
RUN mkdir /input
RUN mkdir /data
RUN mkdir /model_weights
RUN mkdir libs
COPY libs ./libs
COPY run.py run.py
COPY autoinpaint.py autoinpaint.py
COPY data_prepare.py data_prepare.py
COPY WriteBackNifti.py WriteBackNifti.py

## DOWNLOAD Pre-trained weights
RUN gdown --id 1ayfpr-XDd4svobywY5UZjU3Rumcyp1eo
RUN unzip model_weight.zip
CMD ["python","run.py"]
