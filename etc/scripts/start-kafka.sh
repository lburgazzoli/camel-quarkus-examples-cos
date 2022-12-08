#!/usr/bin/bash

docker run \
  -ti \
  --rm \
  --name=rp \
  -p 8081:8081 \
  -p 8082:8082 \
  -p 9092:9092 \
  -p 9644:9644 \
  docker.redpanda.com/vectorized/redpanda:latest \
  redpanda start \
    --mode dev-container \
    --set redpanda.enable_sasl=true \
    --set redpanda.superusers=["admin"]


# rpk acl user create admin -p admin
# rpk acl user create foo -p baz
# rpk acl create \
#    --allow-principal '*' \
#    --operation all \
#    --topic demo  \
#    --group '*' \
#    --user admin \
#    --password admin \
#    --sasl-mechanism SCRAM-SHA-256