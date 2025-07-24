const express = require('express');
const path = require('path');

const app = express();
const PORT = process.env.PORT || 3000;

// Servir les fichiers statiques
app.use(express.static('.'));

// Route principale
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'index.html'));
});

// Démarrer le serveur
app.listen(PORT, () => {
    console.log('\n🚀 Serveur démarré avec succès !');
    console.log(`\n📍 Ouvrez votre navigateur à : http://localhost:${PORT}\n`);
    console.log('Pour arrêter le serveur, appuyez sur Ctrl+C\n');
});