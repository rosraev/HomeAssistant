#!/usr/bin/with-contenv bashio
set -e

echo "✅ MCP Server addon started!"

# Създаваме virtual environment
python3 -m venv /venv

# Активираме venv
. /venv/bin/activate

# Инсталираме нужните библиотеки вътре в venv
pip install --no-cache-dir fastapi uvicorn requests pydantic openai

# Стартираме Python процеса от venv като PID 1
exec python /main.py
