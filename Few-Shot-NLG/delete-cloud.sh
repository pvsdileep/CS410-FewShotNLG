export INSTANCE_NAME="my-fastai-instance"
export ZONE="us-west1-b"
gcloud compute instances delete $INSTANCE_NAME --zone $ZONE