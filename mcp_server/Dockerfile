# Използваме официалния HA базов образ
ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:latest
FROM ${BUILD_FROM}

# Инсталираме Python
RUN apk add --no-cache python3

# Копираме Python файла
COPY run.py /run.py

# Стартираме го чрез s6-overlay
CMD [ "python3", "/run.py" ]
