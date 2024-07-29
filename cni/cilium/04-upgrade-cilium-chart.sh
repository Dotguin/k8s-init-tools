#!/bin/bash

helm upgrade cilium cilium/cilium --namespace kube-system -f yaml/values.yaml
