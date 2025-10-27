# Използваме официалния Home Assistant base образ
FROM ghcr.io/home-assistant/amd64-base:latest

# Инсталираме Python и pip
RUN apk add --no-cache python3 py3-pip

# Създаваме virtual environment
RUN python3 -m venv /venv
ENV PATH="/venv/bin:$PATH"

# Копираме скрипта и стартовия файл
COPY run.py /run.py
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Задаваме run.sh като главен entrypoint
CMD ["/run.sh"]
