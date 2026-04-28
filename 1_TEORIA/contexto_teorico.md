# 🧠 Síntese Teórica: Sistema de Alarmes com Visão Computacional

## 1. Introdução: Da Vigilância Passiva à Ativa
Sistemas de segurança tradicionais são frequentemente passivos, baseando-se em gravação contínua e intervenção humana para detecção de incidentes. Este projeto implementa um sistema de monitoramento proativo utilizando Visão Computacional e Deep Learning, capaz de identificar padrões específicos, especificamente pessoas, e disparar alertas em tempo real, reduzindo a latência de resposta e o erro humano.

## 2. A Arquitetura do Alerta
O funcionamento do alarme baseia-se em um pipeline de processamento de imagem em quatro estágios críticos:

1. Captura e Pré-processamento: Fluxo de vídeo via webcam submetido à normalização e redimensionamento para garantir a compatibilidade com a entrada do modelo.
2. Extração de Características (CNN): Utilização de Redes Neurais Convolucionais para aprendizado de padrões hierárquicos. A rede identifica desde bordas e texturas até formas complexas, como a figura humana.
3. Detecção e Inferência: O modelo YOLOv8n mapeia a presença de objetos, retornando a classe detectada e as coordenadas da 'bounding box' com uma pontuação de confiança.
4. Lógica de Decisão e Trigger: O sistema avalia a detecção contra um threshold de confiança definido. Ao confirmar o evento, o sistema executa o disparo do alerta, gerenciando o estado do alarme para evitar disparos duplicados ou ruídos.

## 3. Justificativa Tecnológica: YOLOv8n
A escolha do YOLOv8n, na versão Nano, para este tutorial justifica-se pelo equilíbrio técnico necessário:
* Eficiência: É a versão mais compacta da arquitetura YOLOv8, permitindo inferência em tempo real em hardware limitado (CPU convencional).
* Precisão: Apresenta excelente Mean Average Precision (mAP) para o dataset COCO (Common Objects in Context), que é o padrão da indústria para detecção de objetos.
* Modularidade: Facilita a integração com scripts de automação e bots de notificação, conforme detalhado na prática deste repositório.

## 4. Fundamentos da Visão Computacional
Diferente da computação tradicional, onde regras são codificadas manualmente, este sistema utiliza o aprendizado de máquina. Através do backpropagation e otimização por gradiente descendente, a rede neural ajustou seus pesos durante o treinamento no dataset COCO para reconhecer "pessoas" em diferentes ângulos e iluminação, tornando o sistema robusto para o ambiente real do usuário.

## 5. Referências Técnicas
- GOODFELLOW, I.; BENGIO, Y.; COURVILLE, A. Deep Learning. MIT Press, 2016.
- LECUN, Y.; BENGIO, Y.; HINTON, G. Deep learning. Nature, v. 521, p. 436-444, 2015.
- ULTRALYTICS. YOLOv8 Documentation. Disponível em: https://docs.ultralytics.com/.
- COCO DATASET. Common Objects in Context. Disponível em: https://cocodataset.org/.

---
Para a implementação prática e o fluxo completo de execução, consulte [0_informacoes_projeto.md](../2_PRATICA/0_informacoes_projeto.md).
