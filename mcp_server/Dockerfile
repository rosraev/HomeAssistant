ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:latest
FROM ${BUILD_FROM}

RUN apk add --no-cache python3 py3-pip
COPY run.py /run.py
RUN pip install fastapi uvicorn requests pydantic openai

CMD ["python3", "/run.py"]
