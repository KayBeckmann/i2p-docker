# I2P Docker-Umgebungen

Dieses Repository enthält zwei verschiedene Docker-Compose-Konfigurationen, um einen I2P-Router und einen vorkonfigurierten Browser (Firefox) zu starten.

## Voraussetzungen

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Varianten

### 1. Standard-Umgebung (`docker-compose.yml`)

Diese Konfiguration nutzt X11-Forwarding für den Browser. Der Browser wird direkt auf deinem Host-System angezeigt, benötigt aber einen laufenden X-Server (auf Linux meist Standard).

**Starten:**
```bash
./start.sh
```

- **Router Console:** [http://localhost:7657](http://localhost:7657)
- **Firefox:** Öffnet sich als Fenster auf deinem Desktop.

### 2. Speicher-optimierte Umgebung (`docker-compose.weak.yml`)

Diese Version ist für Systeme mit weniger Arbeitsspeicher optimiert und nutzt einen Web-VNC-Zugriff für den Browser. Ideal für Server oder schwächere Laptops.

**Starten:**
```bash
./start-weak.sh
```

- **Router Console:** [http://localhost:7657](http://localhost:7657)
- **Browser-Zugriff (VNC):** [http://localhost:5800](http://localhost:5800)

## Ordnerstruktur

- `./Settings/i2p_router`: Konfigurationsdateien des I2P-Routers.
- `./Settings/browser_profile`: Browser-Profil und Einstellungen.
- `./Downloads`: Gemeinsamer Download-Ordner für I2P und den Browser.

## Lizenz

Siehe [LICENSE](LICENSE) Datei.
