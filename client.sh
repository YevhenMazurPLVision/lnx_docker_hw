#!/bin/sh
set -eu

HOST="${1:-server}"
PORT="${2:-9000}"
MESSAGE="${3:-Hello from client}"

echo "[client] Sending to ${HOST}:${PORT} ..."
printf "%s\n" "${MESSAGE}" | nc "${HOST}" "${PORT}"
echo "[client] Done."
