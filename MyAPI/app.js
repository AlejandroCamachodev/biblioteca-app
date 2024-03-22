const express = require('express');
const mysql = require('mysql2');
const cors = require('cors'); 

const app = express();
const port = 3000;

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'admin',
  database: 'Biblioteca'
});

connection.connect((err) => {
  if (err) {
    console.error('Error connecting to database:', err.stack);
    return;
  }
  console.log('Connected to database as id', connection.threadId);
});

app.use(cors());


app.get('/autores', (req, res) => {
  connection.query('SELECT * FROM Autores', (error, results, fields) => {
    if (error) {
      console.error('Error querying database:', error);
      res.status(500).send('Error en el servidor');
      return;
    }
    res.json(results);
  });
});


app.get('/categorias', (req, res) => {
  connection.query('SELECT * FROM Categorias', (error, results, fields) => {
    if (error) {
      console.error('Error querying database:', error);
      res.status(500).send('Error en el servidor');
      return;
    }
    res.json(results);
  });
});


app.get('/subcategorias', (req, res) => {
  connection.query('SELECT * FROM Subcategorias', (error, results, fields) => {
    if (error) {
      console.error('Error querying database:', error);
      res.status(500).send('Error en el servidor');
      return;
    }
    res.json(results);
  });
});

app.get('/titulos', (req, res) => {
  connection.query('SELECT * FROM Titulos', (error, results, fields) => {
    if (error) {
      console.error('Error querying database:', error);
      res.status(500).send('Error en el servidor');
      return;
    }
    res.json(results);
  });
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
