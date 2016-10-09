#!/bin/bash

set -e

WHO=`whoami`
sudo vmdebootstrap \
  --owner ${WHO} \
  --verbose \
  --log amd64-uefi.log \
  --log-level debug \
  --size 1G \
  --distribution jessie \
  --debootstrapopts="variant=minbase" \
  jessie.img
