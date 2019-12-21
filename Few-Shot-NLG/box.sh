tmux
git clone https://github.com/czyssrs/Few-Shot-NLG.git
curl -L -o newName.zip https://www.dropbox.com/sh/u3t8yhcctqczpo0/AAAZV7S-qoIyaQW99r_88nUra?dl=0

unzip newName.zip 
unzip models.zip 
unzip sample_data.zip 

# install conda
cd /tmp
curl -O https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh
export PATH=~/anaconda3/bin:$PATH
cd ~

conda create -n myenv python=3.6
source activate myenv

# install few shot nlg
cd Few-Shot-NLG
pip install  -r requirements.txt

conda install -c anaconda cudatoolkit==9.0
conda install cudatoolkit==9.0

mkdir ~/Data/
mkdir ~/Data/NLP
mkdir ~/Data/NLP/few_shot_nlg
mv ../sample_data/humans/ ~/Data/NLP/few_shot_nlg/

# pre process data
rm -rf '~/Data/NLP/few_shot_nlg/humans/original_data'
rm -rf '~/Data/NLP/few_shot_nlg/humans/processed_data'
gcloud compute scp --recurse sample_data/humans/original_data/ my-big-instance:~/Data/NLP/few_shot_nlg/humans --zone=$ZONE
mv ../human_books_songs_films_field_vocab.txt ~/Data/NLP/few_shot_nlg/human_books_songs_films_field_vocab.txt
mv ../demonyms.csv '~/Data/NLP/few_shot_nlg/demonyms.csv'
rm -rf '~/Data/NLP/few_shot_nlg/humans/processed_data'
python preprocess.py ~/Data/NLP/few_shot_nlg humans

python ./Main.py --root_path ~/Data/NLP/few_shot_nlg/ --domain humans --gpt_model_name ../models/117M/ --output_path ~/Output/

