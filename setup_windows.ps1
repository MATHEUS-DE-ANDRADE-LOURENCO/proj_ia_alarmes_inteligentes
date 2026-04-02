Write-Host "Criando ambiente virtual..."
python -m venv venv

Write-Host "Ativando ambiente e instalando dependências..."
.\venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
python -m pip install opencv-python ultralytics pandas numpy matplotlib pycocotools

Write-Host "Baixando COCO dataset..."
Invoke-WebRequest -Uri "http://images.cocodataset.org/zips/val2017.zip" -OutFile "val2017.zip"
Invoke-WebRequest -Uri "http://images.cocodataset.org/zips/test2017.zip" -OutFile "test2017.zip"
Invoke-WebRequest -Uri "http://images.cocodataset.org/annotations/annotations_trainval2017.zip" -OutFile "annotations_trainval2017.zip"

Write-Host "Descompactando arquivos..."
Expand-Archive -Path "val2017.zip" -DestinationPath "." -Force
Expand-Archive -Path "test2017.zip" -DestinationPath "." -Force
Expand-Archive -Path "annotations_trainval2017.zip" -DestinationPath "." -Force

Write-Host "Setup concluído!"
