#!/bin/bash
# 4.31

python llama.py none textvqa \
    --llava /home/chengzhang/models/llava/llava-v1.5-7b \
    --wbits 4 --true-sequential --act-order --groupsize 128 --save models/llava-1.5-7b-textv-4bit-128.pt

python llama.py /home/chengzhang/models/llava/llava-v1.5-7b c4 \
    --wbits 4 --true-sequential --act-order --groupsize 128 --save models/llava-1.5-7b-c4-4bit-128.pt
