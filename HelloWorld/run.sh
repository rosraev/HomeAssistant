#!/usr/bin/with-contenv bashio
set -e

echo "✅ MCP Server addon started!"

# Инсталираме необходимите библиотеки (пример)
pip install --no-cache-dir fastapi uvicorn requests pydantic openai

# Стартираме Python процеса като PID 1
exec python3 /main.py
