#!/usr/bin/env bash

KAFKA_VERSION="0.8.2.2"
KAFKA="kafka_2.11-${KAFKA_VERSION}"

if [ ! -d "kafka-install/$KAFKA" ]; then
  mkdir -p kafka-install &&
  cd kafka-install &&
  curl -L http://www.us.apache.org/dist/kafka/${KAFKA_VERSION}/$KAFKA.tgz | tar xvz
fi
