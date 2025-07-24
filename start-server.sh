#!/bin/bash

echo "🚀 Démarrage du serveur Encore..."
echo ""
echo "Le serveur sera accessible à : http://localhost:8080"
echo ""
echo "Appuyez sur Ctrl+C pour arrêter le serveur"
echo ""

# Utiliser Python 3 pour servir les fichiers
python3 -m http.server 8080