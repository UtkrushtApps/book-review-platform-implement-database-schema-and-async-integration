#!/bin/bash
set -e

echo "[INFO] Stopping previous containers..."
docker-compose down -v || true

echo "[INFO] Building and starting services..."
docker-compose build --no-cache
docker-compose up -d db

# Wait for PostgreSQL to be ready
until docker exec -it $(docker ps -qf "name=db") pg_isready -U utkrusht_user -d bookreviews; do
  sleep 2
done

echo "[INFO] Applying database schema..."
docker cp schema.sql $(docker ps -qf "name=db"):/schema.sql
docker exec -u postgres -it $(docker ps -qf "name=db") psql -d bookreviews -f /schema.sql


echo "[INFO] Starting API service..."
docker-compose up -d api

echo "[INFO] API running at http://localhost:8000"
