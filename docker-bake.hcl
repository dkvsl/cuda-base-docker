variable "REGISTRY" {
    default = "docker.io"
}
variable "REGISTRY_USER" {
    default = "darkovisual"
}

group "default" {
  targets = ["cu118-torch212", "cu118-torch222", "cu118-torch230", "cu121-torch221"]
}

target "cu118-torch212" {
    dockerfile = "./cu118-torch212/Dockerfile"
    platforms = ["linux/amd64"]
    tags = ["${REGISTRY}/${REGISTRY_USER}/cuda-base-docker:cu118-torch212"]
    args = {
        BASE_IMAGE = "nvidia/cuda:11.8.0-devel-ubuntu22.04"
        URL = "https://download.pytorch.org/whl/cu118"
        TORCH_VER = "torch==2.1.2 torchvision==0.16.2 torchaudio==2.1.2"
        XFORMERS_VER = "0.0.23.post1+cu118"
    }
}

target "cu118-torch222" {
    dockerfile = "./cu118-torch222/Dockerfile"
    platforms = ["linux/amd64"]
    tags = ["${REGISTRY}/${REGISTRY_USER}/cuda-base-docker:cu118-torch222"]
    args = {
        BASE_IMAGE = "nvidia/cuda:11.8.0-devel-ubuntu22.04"
        URL = "https://download.pytorch.org/whl/cu118"
        TORCH_VER = "torch==2.2.2 torchvision==0.17.2 torchaudio==2.2.2"
        XFORMERS_VER = "0.0.25.post1+cu118"
    }
}

target "cu118-torch230" {
    dockerfile = "./cu118-torch230/Dockerfile"
    platforms = ["linux/amd64"]
    tags = ["${REGISTRY}/${REGISTRY_USER}/cuda-base-docker:cu118-torch230"]
    args = {
        BASE_IMAGE = "nvidia/cuda:11.8.0-devel-ubuntu22.04"
        URL = "https://download.pytorch.org/whl/cu118"
        TORCH_VER = "torch torchvision torchaudio"
        XFORMERS_VER = "0.0.26.post1+cu118"
    }
}

target "cu121-torch221" {
    dockerfile = "./cu121-torch221/Dockerfile"
    platforms = ["linux/amd64"]
    tags = ["${REGISTRY}/${REGISTRY_USER}/cuda-base-docker:cu121-torch221"]
    args = {
        BASE_IMAGE = "nvidia/cuda:12.1.1-devel-ubuntu22.04"
        URL = "https://download.pytorch.org/whl/cu121"
        TORCH_VER = "torch==2.2.1 torchvision==0.17.1 torchaudio==2.2.1"
    }
}