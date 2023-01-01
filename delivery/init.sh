#!/usr/bin/env bash

## BOOTSTRAP
## -----------------

# get the ip address of the host
host_ip=$(ipconfig getifaddr en0)

# if host_ip is empty, use en1
if [ -z "$host_ip" ]; then
  host_ip=$(ipconfig getifaddr en1)
fi

# create cluster.yaml if needed
if [ ! -f cluster.yaml ]; then
  cp cluster.template cluster.yaml
fi

# update cluster server address
sed -i '' "s/apiServerAddress: .*$/apiServerAddress: ${host_ip}/" cluster.yaml

## KIND
## -----------------

# Start the delivery cluster
if ! kind get clusters | grep -q "delivery"; then
  kind create cluster --name delivery --config cluster.yaml
fi

## CLEANUP
## -----------------

rm -f cluster.yaml
