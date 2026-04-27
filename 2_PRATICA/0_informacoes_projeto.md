# 🚨 Projeto: Alarmes Inteligentes

## 💡 Proposta da implementação

Esta implementação consiste em um protótipo de alerta inteligente com Inteligência Artificial e Visão Computacional. O objetivo é exemplificar o uso de Redes Neurais e Computação Visual no ramo da segurança.

**Dados utilizados:**

- COCO Dataset: val2017

**Modelo utilizado:**

- YOLOv8

## ⚙️ Funcionamento Básico

A proposta do grupo é apresentar todo o fluxo de implementação, desde o entendimento e filtragem da base de dados até a construção do alerta final. Ao término do notebook, o sistema será capaz de enviar mensagens automaticamente quando detectar pessoas na webcam da máquina em execução.

## 🧱 Arquitetura

- [setup_linux.sh](1_TEORIA/setup_linux.sh): script para Linux que cria ambiente virtual Python, instala dependências e baixa os arquivos do COCO Dataset necessários ao projeto.
- [setup_windows.ps1](1_TEORIA/setup_windows.ps1): script para Windows com o mesmo objetivo de preparação de ambiente e download de dependências/dados.
- [1_analise_exploratoria.ipynb](1_TEORIA/1_analise_exploratoria.ipynb): notebook de análise exploratória, leitura das anotações e compreensão da estrutura dos dados.
- [2_implementacao_projeto.ipynb](1_TEORIA/2_implementacao_projeto.ipynb): notebook principal de implementação do sistema de detecção e alerta (imagem e webcam).
- [extra_criacao_bots.md](1_TEORIA/extra_criacao_bots.md): markdown com tutorial para criação de bots no Telegram, a ser consultado durante a execução do arquivo de implementação do projeto.

## 🛠️ Como Configurar o Ambiente

Execute o script correspondente ao seu sistema operacional para preparar o ambiente local.

**Windows:** 
```powershell
powershell -ExecutionPolicy Bypass -File .\setup_windows.ps1
```

**Linux:** 
```bash
chmod +x setup_linux.sh && ./setup_linux.sh
```

Após o término das instalações, sua máquina estará pronta para executar os notebooks.

Recomendação importante:

- Selecione o ambiente virtual correto na sua IDE antes de executar as células.
- Verifique se os arquivos do dataset foram descompactados corretamente no diretório do projeto.

## 📌 Fluxo de Execução Recomendado

1. Executar o notebook [1_analise_exploratoria.ipynb](1_analise_exploratoria.ipynb).
2. Em seguida, executar o notebook [2_implementacao_projeto.ipynb](2_implementacao_projeto.ipynb).

