#!/bin/sh

set -e

gcloud auth activate-service-account --key-file=/keyFile

gcloud container clusters get-credentials "$clusterName" --zone "$zone" --project "$projectId"

# make request to get access token
kubectl proxy > /dev/null &
kubectl version > /dev/null

cat ~/.kube/config > /kubeConfig