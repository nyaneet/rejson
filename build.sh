#!/bin/bash
# rebuild RedisJSON image

REDIS_VER=7.0.5
REJSON_VER=v2.4.0
RUST_VER=1.65.0

docker buildx build \
    --build-arg RUST_VER="$RUST_VER" \
    --build-arg REDIS_VER="$REDIS_VER" \
    --build-arg REJSON_VER="$REJSON_VER" \
    --platform linux/amd64,linux/arm/v7,linux/arm64 \
    -t nyaaneet/rejson:"$REJSON_VER" \
    -t nyaaneet/rejson --push .

exit 0
