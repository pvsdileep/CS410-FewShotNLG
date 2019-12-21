#!/bin/sh

# run if you dont have a folder called 'env' inside player
if [ -d "env" ] 
then
    echo "Env exists." 
else
    echo "Env does not exist." 
    python3 -m venv env 
fi

# enter environment
source env/bin/activate 

# install libraries
pip install  -r requirements.txt

# jupyter notebook commands
jupyter contrib nbextension install --user
jupyter nbextension enable brain
#run jupyter notebook
jupyter notebook