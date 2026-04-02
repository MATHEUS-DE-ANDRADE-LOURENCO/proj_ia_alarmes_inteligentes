#!/usr/bin/env bash

set -euo pipefail

# Cria o ambiente virtual no Windows.
python -m venv venv

# Ativa o ambiente virtual no Git Bash/WSL.
source venv/Scripts/activate

# Instala as bibliotecas necessárias para o projeto.
python -m pip install opencv-python
python -m pip install ultralytics
python -m pip install pandas
python -m pip install numpy
python -m pip install kaggle

# Baixa os arquivos do COCO dataset.
curl -L -o val2017.zip http://images.cocodataset.org/zips/val2017.zip
curl -L -o test2017.zip http://images.cocodataset.org/zips/test2017.zip
curl -L -o annotations_trainval2017.zip http://images.cocodataset.org/annotations/annotations_trainval2017.zip

# Descompacta os arquivos baixados.
unzip -o val2017.zip
unzip -o test2017.zip
unzip -o annotations_trainval2017.zip