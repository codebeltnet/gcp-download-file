#!/bin/sh

bucketName=`cat /secrets/bucketname`
objectName=`cat /secrets/objectname`

gcloud auth activate-service-account --key-file=/secrets/gcpkey.json

sh -c "gcloud storage cp gs://$bucketName/$objectName ."

cat ./$objectName

gcloud auth revoke --all
