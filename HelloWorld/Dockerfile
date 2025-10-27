ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:latest
FROM ${BUILD_FROM}

# Инсталираме Python и pip
RUN apk add --no-cache python3 py3-pip

# Копираме скриптовете
COPY run.sh /run.sh
COPY main.py /main.py

RUN chmod +x /run.sh

# Стартов скрипт
CMD [ "/run.sh" ]
