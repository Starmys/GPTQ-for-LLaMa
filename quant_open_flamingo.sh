#!/bin/bash

echo "============================== LLAMA 8 Bits =============================="
python llama.py /home/chengzhang/models/llama-hf/llama-7b_hf textvqa \
    --flamingo /home/chengzhang/models/openflamingo/OpenFlamingo-9B-deprecated/checkpoint.pt \
    --wbits 8 --true-sequential --act-order --groupsize -1 --save models/openflamingo-9b-llama-textvqa-8bit.pt

echo "============================== LLAMA 4 Bits =============================="
python llama.py /home/chengzhang/models/llama-hf/llama-7b_hf textvqa \
    --flamingo /home/chengzhang/models/openflamingo/OpenFlamingo-9B-deprecated/checkpoint.pt \
    --wbits 4 --true-sequential --act-order --groupsize -1 --save models/openflamingo-9b-llama-textvqa-4bit.pt

echo "============================== MPT 8 Bits =============================="
python llama.py /home/chengzhang/models/mpt/mpt-7b textvqa \
    --flamingo /home/chengzhang/models/openflamingo/OpenFlamingo-9B-vitl-mpt7b/checkpoint.pt \
    --wbits 8 --true-sequential --act-order --groupsize -1 --save models/openflamingo-9b-mpt-textvqa-8bit.pt

echo "============================== MPT 4 Bits =============================="
python llama.py /home/chengzhang/models/mpt/mpt-7b textvqa \
    --flamingo /home/chengzhang/models/openflamingo/OpenFlamingo-9B-vitl-mpt7b/checkpoint.pt \
    --wbits 4 --true-sequential --act-order --groupsize -1 --save models/openflamingo-9b-mpt-textvqa-4bit.pt
