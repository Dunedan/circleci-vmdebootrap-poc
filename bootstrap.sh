#!/bin/bash

set -e

vmdebootstrap \
  --verbose \
  --log amd64-uefi.log \
  --log-level debug \
  --size 1G \
  --distribution stretch \
  --image stretch.img
