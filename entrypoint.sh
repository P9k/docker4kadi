#!/bin/bash
set -e

# Warte auf Elasticsearch
echo "Warte auf Elasticsearch..."
until curl -f http://elasticsearch:9200; do
  echo "Elasticsearch ist noch nicht bereit - warte..."
  sleep 5
done
echo "Elasticsearch ist bereit!"

# Datenbank initialisieren
echo "Datenbank initialisieren..."
kadi db init
echo "Datenbank initialisiert!"

# Suchindex initialisieren
#echo "Suchindex initialisieren..."
#kadi search init
#echo "Suchindex initialisiert!"

#kadi utils uwsgi --default --out kadi-uwsgi.ini

# uWSGI starten
echo "Starte uWSGI..."
exec uwsgi --ini /app/kadi-uwsgi.ini
