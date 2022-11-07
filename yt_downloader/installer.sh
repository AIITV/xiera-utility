#!/usr/bin/env bash     

sudo apt update -y
sudo apt upgrade -y

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get remove python3
sudo apt-get install python3.5
sudo apt install python3-pip -y

pip install tkinter
pip install pytube

python3 download.py
