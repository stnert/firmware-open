#!/usr/bin/env bash

set -e

if [ -z "$1" ]
then
  echo "$0 [model]" >&2
  exit 1
fi
MODEL="$1"

source scripts/_minipro.sh

sudo minipro --device "${CHIP}" --pin_check --write "build/${MODEL}/firmware.rom"
