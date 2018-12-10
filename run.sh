#!/bin/bash
export OMP_NUM_THREADS=7
rm out.txt out.err
export MXNET_ENGINE_TYPE=NaiveEngine
nohup taskset -c 0-6 python train_imagenet.py --work-id=0 1>>out.txt 2>>out.err &
sleep 2
nohup taskset -c 7-13 python train_imagenet.py --work-id=1 1>>out.txt 2>>out.err &
nohup taskset -c 14-20 python train_imagenet.py --work-id=2 1>>out.txt 2>>out.err &
nohup taskset -c 21-27 python train_imagenet.py --work-id=3 1>>out.txt 2>>out.err &
#nohup taskset -c 28-34 python train_imagenet.py --work-id=4 1>>out.txt 2>>out.err &
#nohup taskset -c 35-41 python train_imagenet.py --work-id=5 1>>out.txt 2>>out.err &
#nohup taskset -c 42-48 python train_imagenet.py --work-id=6 1>>out.txt 2>>out.err &
#nohup taskset -c 49-55 python train_imagenet.py --work-id=7 1>>out.txt 2>>out.err &
