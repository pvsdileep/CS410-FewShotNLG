git clone https://github.com/czyssrs/Few-Shot-NLG.git
curl -L -o newName.zip https://www.dropbox.com/sh/u3t8yhcctqczpo0/AAAZV7S-qoIyaQW99r_88nUra?dl=0
unzip newName.zip 
unzip models.zip 
unzip sample_data.zip 
# install conda
cd /tmp
curl -O https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh
export PATH=/home/daljeetvirdi/anaconda3/bin:$PATH
cd ~

conda create -n myenv python=3.6
source activate myenv

# install few shot nlg
cd Few-Shot-NLG
pip install  -r requirements.txt

conda install -c anaconda cudatoolkit==9.0
conda install cudatoolkit==9.0

mkdir /home/daljeetvirdi/Data/
mkdir /home/daljeetvirdi/Data/NLP
mkdir /home/daljeetvirdi/Data/NLP/few_shot_nlg
mv ../sample_data/humans/ /home/daljeetvirdi/Data/NLP/few_shot_nlg/

python preprocess 

python ./Main.py --root_path ~/Data/NLP/few_shot_nlg/ --domain humans --gpt_model_name ../models/117M/ --output_path ~/Output/

