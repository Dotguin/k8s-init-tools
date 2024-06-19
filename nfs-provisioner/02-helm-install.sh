#!/bin/bash

helm install --create-namespace --namespace nfs-provisioner \
	nfs-subdir-external-provisioner \
	nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
         --set nfs.server=<{ nfs server addr or dns }> \
         --set nfs.path=<{ nfs server mount path }> \
         --set storageClass.defaultClass=true \
         --set storageClass.reclaimPolicy=Delete \
         --set storageClass.accessModes=ReadWriteMany
