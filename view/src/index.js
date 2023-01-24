'use strict';

let http = require('http');
let fs = require('fs');

let server = http.createServer((req, res) => {
    fs.readFile('./index.html', 'UTF-8', (error, data) => {
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.write(data);
        res.end();
    });
});

server.listen(1324);
console.log('Start Server!');

// const express = require('express');

// // Constants
// const PORT = 1324;
// const HOST = '0.0.0.0';

// // App
// const app = express();
// app.get('/', (req, res) => {
//   res.send('Hello World');
// });

// app.listen(PORT, HOST, () => {
//   console.log(`Running on http://${HOST}:${PORT}`);
// });
