#!/usr/bin/with-contenv bashio
set -e

# Активираме Python виртуалната среда
source /venv/bin/activate

bashio::log.info "Starting MCP Server..."
exec /venv/bin/uvicorn main:app --host 0.0.0.0 --port 8000
