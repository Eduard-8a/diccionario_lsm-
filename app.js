// Importar módulos necesarios
const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const app = express();

// Importar las rutas
const indexRouter = require('./routes/index');
const searchRouter = require('./routes/search');
const historyRouter = require('./routes/history');
const trendingRouter = require('./routes/trending');
const signRouter = require('./routes/sign');
const alphabetRouter = require('./routes/alphabet');
const wordsRouter = require('./routes/words'); // Nueva ruta

// Configurar middlewares para manejar JSON y URL-encoded bodies
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Servir archivos estáticos desde la carpeta 'public'
app.use(express.static(path.join(__dirname, 'public')));

// Usar las rutas definidas
app.use('/', indexRouter);
app.use('/api', searchRouter);
app.use('/api', historyRouter);
app.use('/api', trendingRouter);
app.use('/api', signRouter);
app.use('/api', alphabetRouter);
app.use('/api', wordsRouter); // Nueva ruta

// Ruta para enviar archivos HTML desde la carpeta 'views'
app.get('/index.html', (req, res) => {
  res.sendFile(path.join(__dirname, 'views/index.html'));
});

app.get('/learn-more.html', (req, res) => {
  res.sendFile(path.join(__dirname, 'views/learn-more.html'));
});

app.get('/about-us.html', (req, res) => {
  res.sendFile(path.join(__dirname, 'views/about-us.html'));
});

app.get('/sign.html', (req, res) => {
  res.sendFile(path.join(__dirname, 'views/sign.html'));
});

app.get('/alphabet.html', (req, res) => {
  res.sendFile(path.join(__dirname, 'views/alphabet.html'));
});

app.get('/letter.html', (req, res) => {
  res.sendFile(path.join(__dirname, 'views/letter.html'));
});

// Configurar el puerto y arrancar el servidor
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
