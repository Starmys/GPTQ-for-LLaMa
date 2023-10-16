#!/bin/bash
# /home/chengzhang/Multimodal-Quantization/MiniGPT-4/checkpoints/vicuna-7b
# /home/chengzhang/Multimodal-Quantization/MiniGPT-4/smooth/vicuna-7b-smoothquant
# /home/chengzhang/Multimodal-Quantization/Multimodal-GPT/checkpoints/llama-7b_hf
# /home/chengzhang/Multimodal-Quantization/MiniGPT-4/smooth/llama-7b-smoothquant
python run_clm.py \
    --torch_dtype float16 \
    --model_class LlamaForCausalLM \
    --model_name_or_path /home/chengzhang/Multimodal-Quantization/Multimodal-GPT/checkpoints/llama-7b_hf \
    --quant_checkpoint /home/chengzhang/Multimodal-Quantization/GPTQ-for-LLaMa/models/llama7b-4bit-128g.pt \
    --quant_wbits 4 \
    --dataset_name wikitext \
    --dataset_config_name wikitext-2-raw-v1 \
    --per_device_eval_batch_size 8 \
    --do_eval \
    --output_dir ../evaluation/WikiText2/llama-7b-w4-a16
