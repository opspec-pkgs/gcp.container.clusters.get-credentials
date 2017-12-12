#!/bin/sh

set -e

gcloud auth activate-service-account --key-file=/keyFile

gcloud container clusters get-credentials "$clusterName" --zone "$zone" --project "$projectId"