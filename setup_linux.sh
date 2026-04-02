#!/usr/bin/env bash

set -euo pipefail

# Cria o ambiente virtual no Linux.
python3 -m venv venv

# Ativa o ambiente virtual neste shell antes de instalar dependências.
source venv/bin/activate

# Instala as bibliotecas necessárias para o projeto.
python -m pip install opencv-python
python -m pip install ultralytics
python -m pip install pandas
python -m pip install numpy
python -m pip install kaggle

# Baixa os arquivos do COCO dataset.
wget http://images.cocodataset.org/zips/val2017.zip
wget http://images.cocodataset.org/zips/test2017.zip
wget http://images.cocodataset.org/annotations/annotations_trainval2017.zip

# Descompacta os arquivos baixados.
unzip -o val2017.zip
unzip -o test2017.zip
unzip -o annotations_trainval2017.zip
