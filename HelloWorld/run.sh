#!/usr/bin/env bash
set -e

echo "✅ MCP Server addon started!"

# Стартираме Python директно от същата папка
exec python3 ./main.py
