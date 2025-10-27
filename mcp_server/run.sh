#!/usr/bin/with-contenv bashio
set -e

echo "✅ Hello Addon started successfully!"

# Безкраен цикъл, за да не спира
while true; do
    echo "Hello from HA addon!"
    sleep 10
done
