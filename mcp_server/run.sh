#!/usr/bin/with-contenv bashio
set -ex

source /venv/bin/activate

bashio::log.info "Starting MCP Server..."
which uvicorn
ls -l /main.py || echo "main.py missing!"

# стартираме uvicorn, без exec, за да видим stderr
/venv/bin/uvicorn main:app --host 0.0.0.0 --port 8000
