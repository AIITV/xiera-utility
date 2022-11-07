#!/usr/bin/env bash     

sudo apt update -y
sudo apt upgrade -y

sudo apt install python3 -y
sudo apt install python3-pip -y

pip install tkinter
pip install pytube

python3 download.py
