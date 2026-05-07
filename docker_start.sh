#!/bin/bash
docker run --rm -it --device nvidia.com/gpu=all --cap-add=IPC_LOCK -p 8080:8080 -v $(pwd)/models:/models:Z ghcr.io/ggml-org/llama.cpp:server-cuda13 --host 0.0.0.0 --port 8080 --model /models/Qwen3-Coder-Next-UD-Q4_K_XL.gguf --no-mmap --mlock -np 1 --n-gpu-layers 999 --n-cpu-moe 39 --cache-ram 0 --cache-type-k q4_0 --cache-type-v q4_0 -c 0
