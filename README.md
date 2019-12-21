## Natural Narrative Generation from Structured Data

- Daljeet Virdi (dvirdi2)
- Dileep Pasumarthi (dileepp2)
- Gowri Shankar Ramanan (gsr2)

## Voice Presentation Link
https://1drv.ms/u/s!AiNdqaD5Ygs2sY97kR_Zo3yQTYhoUw?e=ovV00y

## Detailed documentation
https://docs.google.com/document/d/10bnO5mU9xC6K7vELjioiURXT-Yki50PIhBAU8kS4wn0/edit?usp=sharing

## Instructions to run Templatized Summary module

-   Run './dev.sh' - it should install all the required packages​

-   Run 'CS410_Stock_Narrator.ipynb' - it is a jupyter notebook which generates variety of narrations with the given stock data ​

-   This notebook takes "export.csv" as input which is available in the same directory. It contains the sample stock market data exported from external resources​

-   It generates "input.txt" and "summary.txt" as outputs​

-   These are then split into train-test-valid using Spark.​

-   Running entire notebook should take ~ 5mins to complete.​


## Instructions to run Few-Shot-NLG is in Few-Shot-NLG/README.md

-   Please navigate to /Few-Shot-NLG/ directory to go through the Readme included in there​

-   Run ./build-cloud.sh to build a VM with a GPU on Google Cloud​

-   Run ./box.sh on the VM to pull the code, data, and models and start the algorithm​

-   To see output go to ~/Output​

-   It takes ~2 days to complete 2000 epochs on a 128GB RAM and 2 Tesla GPUs​

-   Note: It took a while to run the code. As with most papers and research, the code is specific to a specific OS, python version, etc. This was no difference. We tried running it on our computers, windows, debian, etc. It only worked on Ubuntu, Python 3.6, with an Nvidia GPU. We configured the machine we needed on google cloud.​


## Gitlab link
https://gitlab.com/daljeet3/nlg

