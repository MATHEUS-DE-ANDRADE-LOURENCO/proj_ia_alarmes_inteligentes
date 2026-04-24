# 🚨 Projeto: Alarmes Inteligentes

## 🎓 Disciplinas

Inteligência Artificial e Visão Computacional.

## 👥 Grupo

⚠️ **ATENÇÃO:** No grupo, está sinalizada a(s) disciplina(s) que cada membro está executando para o trabalho.

**Legenda:**

- IA: Inteligência Artificial
- CV: Computação Visual

**Integrantes**

- Lucas Tuon de Matos - 10417987 (CV)
- Matheus de Andrade Lourenço - 10419691 (IA/CV)
- Murillo Cardoso Ferreira - 10418082 (IA/CV)
- Pietro Zanaga Neto - 10418574 (IA/CV)

## 💡 Proposta do Projeto

Este projeto implementa, passo a passo, um sistema de alerta inteligente com Inteligência Artificial e Visão Computacional. O objetivo é demonstrar, de forma prática, como redes neurais podem ser utilizadas para detectar objetos em cenários de segurança.

**Dados utilizados:**

- COCO Dataset: val2017

**Modelo utilizado:**

- YOLOv8

## ⚙️ Funcionamento Básico

A proposta do grupo é apresentar todo o fluxo de implementação, desde o entendimento e filtragem da base de dados até a construção do alerta final. Ao término do notebook, o sistema será capaz de enviar mensagens automaticamente quando detectar pessoas na webcam da máquina em execução.

## 🧱 Arquitetura do Repositório

- [setup_linux.sh](setup_linux.sh): script para Linux que cria ambiente virtual Python, instala dependências e baixa os arquivos do COCO Dataset necessários ao projeto.
- [setup_windows.ps1](setup_windows.ps1): script para Windows com o mesmo objetivo de preparação de ambiente e download de dependências/dados.
- [1_analise_exploratoria.ipynb](1_analise_exploratoria.ipynb): notebook de análise exploratória, leitura das anotações e compreensão da estrutura dos dados.
- [2_implementacao_projeto.ipynb](2_implementacao_projeto.ipynb): notebook principal de implementação do sistema de detecção e alerta (imagem e webcam).

## 🛠️ Como Configurar o Ambiente

Execute o script correspondente ao seu sistema operacional para preparar o ambiente local.

**Windows:** [powershell -ExecutionPolicy Bypass -File .\setup_windows.ps1]

**Linux:** [chmod +x setup_linux.sh && ./setup_linux.sh]

Após o término das instalações, sua máquina estará pronta para executar os notebooks.

Recomendação importante:

- Selecione o ambiente virtual correto na sua IDE antes de executar as células.
- Verifique se os arquivos do dataset foram descompactados corretamente no diretório do projeto.

## 📌 Fluxo de Execução Recomendado

1. Executar o notebook [1_analise_exploratoria.ipynb](1_analise_exploratoria.ipynb).
2. Em seguida, executar o notebook [2_implementacao_projeto.ipynb](2_implementacao_projeto.ipynb).

## 🧩 Responsabilidades do Grupo

- Lucas Tuon de Matos
    - {INSERIR AQUI}
    - ...
- Matheus de Andrade Lourenço
    - Gerenciamento e formatação do Repositório
    - Criação do README
    - Implementação da Avaliação do Modelo
- Murillo Cardoso Ferreira
    - {INSERIR AQUI}
    - ...
- Pietro Zanaga Neto
    - {INSERIR AQUI}
    - ...

## 🎥 Link do Vídeo de Apresentação

{INSERIR AQUI}

