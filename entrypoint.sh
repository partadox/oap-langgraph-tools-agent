#!/bin/bash
set -e

# Activate virtual environment if needed
# source /app/venv/bin/activate

# Run LangGraph agent
exec uvicorn langgraph.main:app --host $HOST --port $PORT