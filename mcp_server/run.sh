#!/usr/bin/env bash
set -e

# Активираме virtual environment
source /venv/bin/activate

# Стартираме FastAPI като PID 1 (важно за s6-overlay)
exec python3 /run.py
