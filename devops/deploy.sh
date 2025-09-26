#! /bin/bash

VERSION=master

# Build using cork-kube
cork-kube build gcb -p orb-showcase -v $VERSION

IMAGE="us-west1-docker.pkg.dev/digital-ucdavis-edu/pub/ospo-orb-backend:$VERSION"

# Deploy to Cloud Run
gcloud run deploy orb-showcase-backend \
  --project digital-ucdavis-edu \
  --image $IMAGE \
  --region us-west1 \
  --platform managed \
  --allow-unauthenticated \
  --set-secrets PGFARM_PASSWORD=ospo-pg-farm-service-account-password:latest,PGFARM_USERNAME=ospo-pg-farm-service-account-username:latest \
  --set-env-vars PGFARM_DATABASE=uc-ospo/uc-orb