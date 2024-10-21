const express = require('express');
const router = express.Router();
const db = require('../api/config');

// Ruta para insertar en el historial de búsqueda
router.post('/history', (req, res) => {
  const palabra = req.body.palabra;
  const sql = `INSERT INTO historial_busqueda (palabra) VALUES (?)`;
  db.query(sql, [palabra], (err, result) => {
    if (err) {
      res.status(500).json({ status: 'error', message: err });
    } else {
      res.json({ status: 'success' });
    }
  });
});

// Ruta para obtener el historial de búsqueda
router.get('/history', (req, res) => {
  const sql = 'SELECT palabra FROM historial_busqueda ORDER BY fecha_busqueda DESC LIMIT 10';
  db.query(sql, (err, results) => {
    if (err) {
      res.status(500).json({ status: 'error', message: err });
    } else {
      res.json(results);
    }
  });
});

module.exports = router; // Exportar el router
