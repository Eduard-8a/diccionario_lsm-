const express = require('express');
const router = express.Router();
const db = require('../api/config'); // Asegúrate de tener este archivo para la conexión a la base de datos

// Ruta para obtener la seña de una palabra o letra específica
router.get('/sign', (req, res) => {
    const word = req.query.word;
    const sql = 'SELECT letra AS palabra, descripcion, imagen FROM alphabet WHERE letra = ? UNION SELECT palabra, descripcion, imagen FROM senas WHERE palabra = ?';
    db.query(sql, [word, word], (err, results) => {
        if (err) {
            res.status(500).json({ status: 'error', message: err });
        } else {
            res.json(results);
        }
    });
});

module.exports = router; // Exportar el router
