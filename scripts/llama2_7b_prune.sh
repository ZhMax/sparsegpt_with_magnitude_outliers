#!/bin/bash

python /home/Sparsification/sparsegpt_with_magnitude_outliers/main.py \
    --model /home/llm_compression/LLaMA/Llama-2-7b-hf \
    --prune_method sparsegpt \
    --sparsity_ratio 0.5 \
    --sparsity_type 2:4 \
    --nsamples 750 \
    --outlier_fraction 0.05 \
    --save /home/llm_compression/SparseGPT/llama-2-7b-sparsegpt-2@4-2048-wiki \
    --save_model /home/llm_compression/SparseGPT/llama-2-7b-sparsegpt-2@4-2048-wiki