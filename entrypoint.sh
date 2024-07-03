#!/bin/bash
APP_PORT=${PORT:-8000}
HOST_PORT=${HOST:0.0.0.0}
cd /web/
/opt/venv/bin/uvicorn app.main:app --reload --host ${HOST_PORT} --port ${APP_PORT}"