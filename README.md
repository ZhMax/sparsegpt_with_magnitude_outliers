# sparsegpt_with_magnitude_outliers
The repository contains code for pruning llama models with sparsegpt. As an feature magnitude outliers can be isolated from the original model and inserted into the pruned one to improve its performance.

---
## Usage
Below is an example command for pruning LLaMA-7B with our method, to achieve semi-structural 2:4 sparsity with 5% of sparse outliers.
```sh
python /home/Sparsification/sparsegpt_with_magnitude_outliers/main.py \
    --model /home/llm_compression/LLaMA/Llama-2-7b-hf \
    --prune_method sparsegpt \
    --sparsity_ratio 0.5 \
    --sparsity_type 2:4 \
    --nsamples 750 \
    --outlier_fraction 0.05 \
    --save path_to_save results \
    --save_model path_to_save pruned model
```

We provide a quick overview of the arguments:  
- `--model`: The identifier for the LLaMA model on the Hugging Face model hub.
- `--prune_method`: We have implemented three pruning methods, namely [`magnitude`, `wanda`, `sparsegpt`, `admm`].
- `--sparsity_ratio`: Denotes the percentage of weights to be pruned.
- `--sparsity_type`: Specifies the type of sparsity [`unstructured`, `2:4`, `4:8`].
- `--nsamples`: Number of the samples used for computing the Hessian. 
- `--outlier_fraction`: Specified the percentage of outliers in weights to be isolated.
- `--save`: Specifies the directory where the result will be stored.
- `--save_model path_to_save pruned model`: Specifies the directory where the pruned model will be stored.

This repo is copy of [ADMM pruning](https://github.com/fmfi-compbio/admm-pruning) repository with our additions. 