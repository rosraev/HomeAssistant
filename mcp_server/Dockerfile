FROM ghcr.io/home-assistant/amd64-base:latest

# Инсталираме Python
RUN apk add --no-cache python3 py3-pip

# Копираме файловете
COPY main.py /main.py
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Инсталираме зависимости
RUN python3 -m venv /venv && \
    /venv/bin/pip install --no-cache-dir fastapi uvicorn requests

# Използваме run.sh като entrypoint
CMD [ "/run.sh" ]
