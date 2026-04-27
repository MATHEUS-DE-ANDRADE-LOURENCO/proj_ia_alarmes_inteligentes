Write-Host "Criando ambiente virtual..."
python -m venv venv

Write-Host "Ativando ambiente e instalando dependências..."
.\venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
python -m pip install opencv-python ultralytics pandas numpy matplotlib pycocotools kagglehub requests

Write-Host "Setup concluído!"
