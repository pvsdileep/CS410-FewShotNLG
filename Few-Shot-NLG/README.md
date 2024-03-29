## To run:

- Run ./build-cloud.sh to build a VM with a GPU on Google Cloud
- Run ./box.sh on the VM to pull the code, data, and models and start the algorithm
- To see output go to ~/Output

## Gotchas:
- Make sure to run on Python 3.6 on Ubuntu OS. 
- Run pip install -r requirements.txt

# Few-Shot NLG
Code and data for paper Few-Shot NLG with Pre-Trained Language Model
https://arxiv.org/abs/1904.09521

## Additional Instructions
Data and pre-trained GPT-2 can be downloaded via dropbox: https://www.dropbox.com/sh/u3t8yhcctqczpo0/AAAZV7S-qoIyaQW99r_88nUra?dl=0
```
-- sample_data: a sample train and test data for humans domain
-- data: full datasets for songs and books domain
-- models: pre-trained GPT-2 
```
To run our code, go to the code folder and run with: 

python ./Main.py --root_path ~/Data/NLP/few_shot_nlg/ --domain humans --gpt_model_name ../models/117M/ --output_path ~/Output/

Where the root path is the data folder. Specify an output path to store the results. The data preprocessing code can be found in preprocess.py. 

If you find our work helpful, please cite the arxiv version. 

