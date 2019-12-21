#!/bin/sh

# run if you dont have a folder called 'env' inside player
# pyenv install 3.6.9
# pyenv local 3.6.9

pip install --upgrade pip
# python --version

# pip install virtualenv
# rm -rf env
# virtualenv env
# source env/bin/activate 

conda create -n myenv python=3.6
conda init
conda activate myenv

# install libraries
pip install  -r requirements.txt
