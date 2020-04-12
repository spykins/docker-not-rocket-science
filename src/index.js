'use strict';

const express = require('express');

const PORT = 8080;
const HOST = '0.0.0.0';

// Creating express App
const app = express();
app.get('/', (req, res) => {
  res.send('This is an intro to Docker');
});

app.listen(PORT, HOST);
console.log(`Running: http://${HOST}:${PORT}`);