#!/usr/bin/env bash

ESPTOOL_PORT=/dev/ttyAMA0 \
  exec python -m esptool "$@"
