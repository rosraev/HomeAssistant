FROM ghcr.io/home-assistant/amd64-base:latest

# Инсталираме Python и pip
RUN apk add --no-cache python3 py3-pip

# Създаваме virtual environment
RUN python3 -m venv /venv
ENV PATH="/venv/bin:$PATH"

# Копираме скрипта
COPY run.py /run.py

# Инсталираме зависимостите вътре във venv
RUN pip install --no-cache-dir fastapi uvicorn requests pydantic openai

CMD ["python3", "/run.py"]
