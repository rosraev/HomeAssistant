#!/usr/bin/env bash
set -e

# Активираме виртуалната среда
source /venv/bin/activate

echo "Starting MCP Server..."
# Стартираме uvicorn директно – няма reloader, няма втори процес
exec uvicorn main:app --host 0.0.0.0 --port 8000
