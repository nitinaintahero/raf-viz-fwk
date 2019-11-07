#!/bin/bash
curl -XGET 'http://192.168.104.101:8500/v1/kv/gurgaon/cloud/clusters/rafcn001/krb5-conf?raw=true' -o krb5.conf
kubectl create secret generic krb5-config-secret -n guavus-raf --from-file=krb5.conf

