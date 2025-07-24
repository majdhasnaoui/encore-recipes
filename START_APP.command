#!/bin/bash

cd "$(dirname "$0")"

echo "🍕 Démarrage d'Encore Recipe Manager..."
echo ""

# Vérifier si Node.js est installé
if ! command -v node &> /dev/null; then
    echo "❌ Node.js n'est pas installé"
    echo "Veuillez installer Node.js depuis : https://nodejs.org"
    echo ""
    echo "Appuyez sur une touche pour fermer..."
    read -n 1
    exit 1
fi

# Installer les dépendances si nécessaire
if [ ! -d "node_modules" ]; then
    echo "📦 Installation des dépendances..."
    npm install
fi

# Démarrer le serveur
echo "🚀 Lancement du serveur..."
echo ""
npm start

# Garder la fenêtre ouverte en cas d'erreur
echo ""
echo "Appuyez sur une touche pour fermer..."
read -n 1