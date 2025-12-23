FROM python:3.12-slim

# Systemabhängigkeiten
RUN apt-get update && apt-get install -y \
    ffmpeg \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Python-Abhängigkeiten
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Skript kopieren
COPY downloader.py .

# Download-Ordner
VOLUME ["/downloads"]

CMD ["python", "downloader.py"]
