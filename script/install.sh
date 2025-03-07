#!/bin/bash

set -ex

python3 -m pip uninstall paddlepaddle_xpu -y
python3 -m pip install -U /opt/output/work_dir/paddle-deepseek/Paddle/build/python/dist/paddlepaddle_xpu-0.0.0-cp39-cp39-linux_x86_64.whl
