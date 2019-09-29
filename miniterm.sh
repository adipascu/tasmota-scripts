#!/usr/bin/env bash

exec python -m serial.tools.miniterm /dev/ttyAMA0 115200 -e
