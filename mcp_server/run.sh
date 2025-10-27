#!/usr/bin/with-contenv bashio
set -e

bashio::log.info "Starting simple python addon"
exec python3 /run.py
