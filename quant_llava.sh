#!/bin/bash

# python llama.py none textvqa \
#     --llava /home/chengzhang/models/llava/llava-v1.5-7b \
#     --wbits 4 --true-sequential --act-order --groupsize -1 --save models/llava-1.5-7b-textv-4bit.pt

python llama.py /home/chengzhang/models/llava/llava-v1.5-7b c4 \
    --wbits 4 --true-sequential --act-order --groupsize -1 --save models/llava-1.5-7b-c4-4bit.pt
