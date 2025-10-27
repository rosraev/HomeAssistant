#!/usr/bin/env bash
set -e

echo "✅ MCP Server addon started!"

# Стартираме Python скрипта
exec python3 /data/addons/local/mcp_server/main.py
