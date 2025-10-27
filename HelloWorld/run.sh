#!/usr/bin/with-contenv bashio
set -e

echo "✅ MCP Server addon started!"

# Създаваме virtual environment
python3 -m venv /venv
. /venv/bin/activate

# Инсталираме библиотеки в venv
pip install --no-cache-dir fastapi uvicorn requests pydantic openai

# Стартираме FastAPI като PID 1
exec python /main.py
