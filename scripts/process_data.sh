#!/bin/bash

set -x
set -e
export PYTHONUNBUFFERED="True"
export CUDA_VISIBLE_DEVICES=0

export PANGOLIN_WINDOW_URI=headless://

python3 preprocess_data.py --data_dir data --source ~/Datasets/ShapeNetCore.v2/ --name ShapeNetV2 --split examples/splits/sv2_sofas_train.json --skip
