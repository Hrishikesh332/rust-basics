#!/bin/sh

set -eux

URL=https://raw.githubusercontent.com/otter-sec/solana-setup/main/Dockerfile

docker build $URL

docker run --network host \
  -v $(pwd):/work \
  -it \
  $(docker build -q $URL) /bin/zsh < /dev/tty