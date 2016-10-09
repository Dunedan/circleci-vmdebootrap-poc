#!/bin/bash

set -e

sudo vmdebootstrap \
  --verbose \
  --log amd64-uefi.log \
  --log-level debug \
  --size 1G \
  --distribution jessie \
  jessie.img
