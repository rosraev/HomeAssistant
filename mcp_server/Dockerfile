ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:latest
FROM ${BUILD_FROM}

# Инсталираме Python и pip
RUN apk add --no-cache python3 py3-pip

# Копираме файловете
COPY main.py /main.py
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# Инсталираме зависимостите
RUN python3 -m venv /venv && \
    /venv/bin/pip install --no-cache-dir fastapi uvicorn requests

# s6-overlay иска командата да е в /run.sh, но да не се стартира shell
CMD [ "/run.sh" ]
