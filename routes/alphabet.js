const express = require('express');
const router = express.Router();
const db = require('../api/config');

// Ruta para obtener todas las señas del alfabeto
router.get('/alphabet', (req, res) => {
    const sql = 'SELECT * FROM alphabet';
    db.query(sql, (err, results) => {
        if (err) {
            console.error('Error fetching alphabet:', err); // Añadir mensaje de error en la consola
            res.status(500).json({ status: 'error', message: err });
        } else {
            res.json(results);
        }
    });
});

module.exports = router; // Exportar el router
