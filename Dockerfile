FROM jupyter/minimal-notebook
USER root

RUN sudo apt-get update
RUN sudo apt-get upgrade -y
RUN sudo apt-get install libgomp1 ffmpeg libsm6 libxext6  -y

COPY requirements.txt .
RUN pip3 install -r requirements.txt

