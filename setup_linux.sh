#!/usr/bin/env bash
set -euo pipefail

echo "Criando ambiente virtual..."
python3 -m venv venv
source venv/bin/activate

echo "Instalando dependências..."
python -m pip install --upgrade pip
python -m pip install opencv-python ultralytics pandas numpy matplotlib pycocotools kagglehub requests image

echo "Setup concluído com sucesso!"
