#!/bin/bash

# python llama.py /home/chengzhang/models/llava/llava-v1-0719-336px-lora-merge-vicuna-13b-v1.3 textvqa \
#     --llava /home/chengzhang/models/llava/llava-336px-pretrain-vicuna-13b-v1.3 \
#     --wbits 4 --true-sequential --act-order --groupsize -1 --save models/llava-viquna-13b-textvqa-4bit.pt

python llama.py none textvqa \
    --llava /home/chengzhang/models/llava/llava-v1.5-7b \
    --wbits 4 --true-sequential --act-order --groupsize -1 --save models/llava-1.5-7b-textvqa-4bit.pt

python llama.py none textvqa \
    --llava /home/chengzhang/models/llava/llava-v1.5-7b \
    --wbits 8 --true-sequential --act-order --groupsize -1 --save models/llava-1.5-7b-textvqa-8bit.pt

python llama.py none textvqa \
    --llava /home/chengzhang/models/llava/llava-v1.5-13b \
    --wbits 4 --true-sequential --act-order --groupsize -1 --save models/llava-1.5-13b-textvqa-4bit.pt

python llama.py none textvqa \
    --llava /home/chengzhang/models/llava/llava-v1.5-13b \
    --wbits 8 --true-sequential --act-order --groupsize -1 --save models/llava-1.5-13b-textvqa-8bit.pt
