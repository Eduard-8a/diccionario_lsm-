// Cargar las variables de entorno desde el archivo .env
require('dotenv').config();
const mysql = require('mysql2');

// Configurar la conexión a la base de datos
const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME
});

// Conectar a la base de datos
db.connect((err) => {
  if (err) {
    throw err;
  }
  console.log('Connected to database');
});

module.exports = db; // Exportar la conexión a la base de datos
