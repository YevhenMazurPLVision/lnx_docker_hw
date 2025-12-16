#!/bin/sh
set -eu

PORT="${1:-9000}"

echo "[server] Listening on port ${PORT} ..."
nc -lk -p "${PORT}"
