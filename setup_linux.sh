#!/usr/bin/env bash
set -euo pipefail

echo "Criando ambiente virtual..."
python3 -m venv venv
source venv/bin/activate

echo "Instalando dependências..."
python -m pip install --upgrade pip
python -m pip install opencv-python ultralytics pandas numpy matplotlib pycocotools

echo "Baixando COCO dataset (Val e Test)..."
wget -c http://images.cocodataset.org/zips/val2017.zip
wget -c http://images.cocodataset.org/zips/test2017.zip
wget -c http://images.cocodataset.org/annotations/annotations_trainval2017.zip

echo "Descompactando arquivos..."
unzip -q val2017.zip
unzip -q test2017.zip
unzip -q annotations_trainval2017.zip

echo "Setup concluído com sucesso!"
