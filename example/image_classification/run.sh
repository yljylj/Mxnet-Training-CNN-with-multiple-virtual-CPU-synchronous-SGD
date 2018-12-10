#!/bin/bash
export OMP_NUM_THREADS=7
rm out.txt out.err
export MXNET_ENGINE_TYPE=NaiveEngine
nohup taskset -c 0-6 python train_imagenet.py --work-id=0 1>>out.txt 2>>out.err &
sleep 2
nohup taskset -c 7-13 python train_imagenet.py --work-id=1 1>>out.txt 2>>out.err &
nohup taskset -c 14-20 python train_imagenet.py --work-id=2 1>>out.txt 2>>out.err &
nohup taskset -c 21-27 python train_imagenet.py --work-id=3 1>>out.txt 2>>out.err &
