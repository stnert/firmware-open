#!/usr/bin/env bash

if [ ! -d "models/${MODEL}" ]
then
  echo "model '${MODEL}' not found" >&2
  exit 1
fi
MODEL_DIR="$(realpath "models/${MODEL}")"

if [ ! -f "${MODEL_DIR}/minipro.txt" ]
then
  echo "model '${MODEL}' does not have minipro.txt" >&2
  exit 1
fi
CHIP="$(cat "${MODEL_DIR}/minipro.txt")"
