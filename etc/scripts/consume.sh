#!/usr/bin/bash

kcat \
    -vvv \
    -b localhost:9092 \
    -t demo \
    -X security.protocol=SASL_PLAINTEXT \
    -X sasl.mechanisms=SCRAM-SHA-256 \
    -X sasl.username=foo \
    -X sasl.password=baz  \
    -C