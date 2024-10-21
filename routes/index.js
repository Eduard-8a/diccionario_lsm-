const express = require('express');
const router = express.Router();
const path = require('path');

// Ruta para servir el archivo index.html
router.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '../views/index.html'));
});

// Ruta para servir el archivo alphabet.html
router.get('/alphabet', (req, res) => {
  res.sendFile(path.join(__dirname, '../views/alphabet.html'));
});

module.exports = router; // Exportar el router
