#!/bin/bash
# Erlaubt Docker den Zugriff auf den X-Server (für das GUI-Fenster)
xhost +local:docker

# Startet die Standard-I2P-Umgebung
docker-compose up -d
