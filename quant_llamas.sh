#!/bin/bash

# python llama.py /home/chengzhang/Multimodal-Quantization/Multimodal-GPT/checkpoints/llama-7b_hf c4 \
#     --act-scales /home/chengzhang/Multimodal-Quantization/MiniGPT-4/act_scales/llama-7b.pt \
#     --wbits 4 --true-sequential --act-order --groupsize -1 --save models/llama7b-4bit-smooth.pt

# python llama.py /home/chengzhang/Multimodal-Quantization/Multimodal-GPT/checkpoints/llama-7b_hf c4 \
#     --act-scales /home/chengzhang/Multimodal-Quantization/MiniGPT-4/act_scales/llama-7b.pt \
#     --wbits 8 --true-sequential --act-order --groupsize -1 --save models/llama7b-8bit-smooth.pt

# python llama.py /home/chengzhang/Multimodal-Quantization/MiniGPT-4/checkpoints/vicuna-7b c4 \
#     --wbits 4 --true-sequential --act-order --groupsize -1 --save models/vicuna-4bit.pt

# python llama.py /home/chengzhang/Multimodal-Quantization/MiniGPT-4/checkpoints/vicuna-7b c4 \
#     --wbits 8 --true-sequential --act-order --groupsize -1 --save models/vicuna-8bit.pt

# python llama.py /home/chengzhang/Multimodal-Quantization/MiniGPT-4/checkpoints/vicuna-7b c4 \
#     --act-scales /home/chengzhang/Multimodal-Quantization/MiniGPT-4/act_scales/vicuna-7b.pt \
#     --wbits 4 --true-sequential --act-order --groupsize -1 --save models/vicuna-4bit-smooth.pt

# python llama.py /home/chengzhang/Multimodal-Quantization/MiniGPT-4/checkpoints/vicuna-7b c4 \
#     --act-scales /home/chengzhang/Multimodal-Quantization/MiniGPT-4/act_scales/vicuna-7b.pt \
#     --wbits 8 --true-sequential --act-order --groupsize -1 --save models/vicuna-8bit-smooth.pt

# python llama.py /home/chengzhang/models/llava/llava-v1-0719-336px-lora-merge-vicuna-13b-v1.3 c4 \
#     --wbits 8 --true-sequential --act-order --groupsize -1 --save models/llava-viquna-13b-8bit.pt

# python llama.py /home/chengzhang/models/llava/llava-v1-0719-336px-lora-merge-vicuna-13b-v1.3 c4 \
#     --wbits 4 --true-sequential --act-order --groupsize -1 --save models/llava-viquna-13b-4bit.pt

python llama.py /home/chengzhang/models/mpt/mpt-7b c4 \
    --wbits 4 --true-sequential --act-order --groupsize -1 --save models/mpt7b-4bit.pt

python llama.py /home/chengzhang/models/mpt/mpt-7b c4 \
    --wbits 8 --true-sequential --act-order --groupsize -1 --save models/mpt7b-8bit.pt
