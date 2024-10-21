const express = require('express');
const router = express.Router();
const db = require('../api/config');

// Ruta para obtener las señas en tendencia
router.get('/trending', (req, res) => {
  const sql = `SELECT * FROM senas ORDER BY RAND() LIMIT 6`;
  db.query(sql, (err, results) => {
    if (err) throw err;
    res.json(results);
  });
});

module.exports = router; // Exportar el router
