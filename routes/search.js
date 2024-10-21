const express = require('express');
const router = express.Router();
const db = require('../api/config');

// Ruta para buscar palabras en la base de datos
router.get('/search', (req, res) => {
  const searchQuery = req.query.q;
  const sql = `SELECT * FROM senas WHERE palabra LIKE ?`;
  db.query(sql, ['%' + searchQuery + '%'], (err, results) => {
    if (err) throw err;
    res.json(results);
  });
});

module.exports = router; // Exportar el router
