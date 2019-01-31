#!/bin/sh

set -e

gcloud auth activate-service-account --key-file=/keyFile


getCredentialsCmd="gcloud container clusters get-credentials $clusterName"

if [ "$internalIp" = "true" ]; then
  getCredentialsCmd=$(printf "%s --internal-ip" "$getCredentialsCmd")
fi
if [ "$region" != " " ]; then
  getCredentialsCmd=$(printf "%s --region %s" "$getCredentialsCmd" "$region")
fi
if [ "$zone" != " " ]; then
  getCredentialsCmd=$(printf "%s --zone %s" "$getCredentialsCmd" "$zone")
fi

eval "$getCredentialsCmd"

# make request to get access token
kubectl proxy > /dev/null &
kubectl version > /dev/null

cat ~/.kube/config > /kubeConfig