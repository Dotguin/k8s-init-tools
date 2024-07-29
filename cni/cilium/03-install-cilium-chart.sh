#!/bin/bash

helm install cilium cilium/cilium --namespace kube-system -f yaml/values.yaml
