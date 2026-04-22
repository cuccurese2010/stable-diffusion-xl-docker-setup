# Stable Diffusion XL Docker Stack (RTX 3080 Ti Optimized)

This repository provides a customized Docker-based environment for running **Stable Diffusion XL** locally. It is specifically tuned for the **NVIDIA GeForce RTX 3080 Ti (12GB VRAM)** and features the **Juggernaut XL** model 
for high-fidelity photorealistic generations.

## 🚀 Key Features
- **UI:** AUTOMATIC1111 WebUI orchestrated via Docker Compose.
- **Primary Model:** Juggernaut XL (Optimized for 1024x1024 native resolution).
- **Infrastructure:** Automated model management via `links.txt`.
- **Performance:** Pre-configured for high-speed sampling on 12GB VRAM cards.

## 🛠 Hardware Requirements
- **GPU:** NVIDIA RTX 3080 Ti (or any NVIDIA GPU with 12GB+ VRAM).
- **RAM:** 32GB RAM recommended.
- **OS:** Linux (Ubuntu/Debian) with NVIDIA Container Toolkit installed.
- **Drivers:** NVIDIA Driver version 525+ recommended.

## 📦 Setup and Usage

1. **Clone the repository:**
   ```bash
   git clone https://github.com/cuccurese2010/stable-diffusion-xl-docker-setup.git
   cd stable-diffusion-xl-docker-setup
   docker compose --profile download up --build
   # wait until its done, then:
   docker compose --profile auto up --build

   # Web address
   http://localhost:7860
   # Stable Diffusion Settings
   Txt2img
   Sampling steps=35
   Hires fix=512x512

   Start up the container:
   docker compose --profile auto up
   Shutdown the container:
   docker compose --profile auto down
