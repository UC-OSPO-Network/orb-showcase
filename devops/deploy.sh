#! /bin/bash

VERSION=master

# Build using cork-kube
cork-kube build gcb -p orb-showcase -v $VERSION

BACKEND_IMAGE="us-west1-docker.pkg.dev/digital-ucdavis-edu/pub/ospo-orb-backend:$VERSION"
FRONTEND_IMAGE="us-west1-docker.pkg.dev/digital-ucdavis-edu/pub/ospo-orb-frontend:$VERSION"
NEXT_PUBLIC_API_URL=https://orb-showcase-backend-326679616213.us-west1.run.app

# Deploy to Cloud Run
gcloud run deploy orb-showcase-backend \
  --project digital-ucdavis-edu \
  --image $BACKEND_IMAGE \
  --region us-west1 \
  --platform managed \
  --allow-unauthenticated \
  --set-secrets PGFARM_PASSWORD=ospo-pg-farm-service-account-password:latest,PGFARM_USERNAME=ospo-pg-farm-service-account-username:latest \
  --set-env-vars PGFARM_DATABASE=uc-ospo/uc-orb

gcloud run deploy orb-showcase-frontend \
  --project digital-ucdavis-edu \
  --image $FRONTEND_IMAGE \
  --region us-west1 \
  --platform managed \
  --allow-unauthenticated \
  --set-env-vars NEXT_PUBLIC_API_URL=$NEXT_PUBLIC_API_URL \
  --memory 1Gi \
  --command "pnpm,start"