# Create environment variables that will be used later in the lab for your project ID and the storage bucket that will contain your data:

export PROJECT_ID=$(gcloud info --format='value(config.project)')
export BUCKET=${PROJECT_ID}-ml
