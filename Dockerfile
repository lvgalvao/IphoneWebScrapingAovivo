# Usa uma imagem base do Python
FROM python:3.12-slim

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo de dependências para o diretório de trabalho
COPY requirements.txt .

# Instala as dependências do Python
RUN pip install --no-cache-dir -r requirements.txt

# Copia o código da aplicação para o contêiner
COPY . .

# Expõe a porta do PostgreSQL (opcional, caso o banco esteja no mesmo contêiner)
EXPOSE 5432

# Instrução CMD para rodar o aplicativo
CMD ["python", "app_08_postgres.py"]