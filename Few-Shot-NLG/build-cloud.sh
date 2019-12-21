export IMAGE_FAMILY="tf-latest-gpu" # or "pytorch-latest-cpu" for non-GPU instances
export ZONE="us-west1-b"
export INSTANCE_NAME="my-fastai-instance"
export INSTANCE_TYPE="n1-highmem-8" # budget: "n1-highmem-4"

# budget: 'type=nvidia-tesla-k80,count=1'
gcloud compute instances create $INSTANCE_NAME --zone=$ZONE --image-family=$IMAGE_FAMILY --image-project=deeplearning-platform-release --maintenance-policy=TERMINATE --accelerator="type=nvidia-tesla-p100,count=1"  --machine-type=$INSTANCE_TYPE --boot-disk-size=200GB --metadata="install-nvidia-driver=True" 

gcloud compute ssh --project cast-corp --zone $ZONE $INSTANCE_NAME -- -L 8080:localhost:8080
