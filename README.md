## Docker Base GPU versions

    *   CUDA 11.8.0 & Torch 2.1.2   darkovisual/cuda-base-docker:cu118-torch212
    *   CUDA 11.8.0 & Torch 2.2.2   darkovisual/cuda-base-docker:cu118-torch222
    *   CUDA 11.8.0 & Torch 2.3.0   darkovisual/cuda-base-docker:cu118-torch230
    *   CUDA 12.1.1 & Torch 2.2.1   darkovisual/cuda-base-docker:cu121-torch221

### Start container

```bash
docker run -d \
   --gpus all \
   -p 8888:8888 \
   -v /workspace \
   "PUT VERSION HERE"
```
