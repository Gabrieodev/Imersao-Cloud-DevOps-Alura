# Use uma imagem base oficial do Python. A versão 3.10 é especificada no seu readme.md
FROM python:3.10-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo de dependências para o diretório de trabalho
# Copiamos este arquivo primeiro para aproveitar o cache de camadas do Docker
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia o resto do código da aplicação para o diretório de trabalho
COPY . .