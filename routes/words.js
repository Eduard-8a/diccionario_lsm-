const express = require('express');
const router = express.Router();
const db = require('../api/config');

// Ruta para obtener palabras por letra
router.get('/words', (req, res) => {
  const letter = req.query.letter;
  const sql = 'SELECT palabra, imagen FROM senas WHERE palabra LIKE ?';
  db.query(sql, [`${letter}%`], (err, results) => {
    if (err) {
      res.status(500).json({ status: 'error', message: err });
    } else {
      res.json(results);
    }
  });
});

module.exports = router; // Exportar el router
