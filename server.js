// console.log(`Your port is ${process.env.PORT}`); // undefined
// const dotenv = require('dotenv');
// dotenv.config();
// console.log(`Your port is ${process.env.PORT}`); // 8626
// const express = require('express');
// const app = express();
const { port } = require('./src/config');
const { API_URL } = require('./src/config');
console.log(`Your port and endpouint is ${port} ${API_URL}`);

// app.get('*', function (request, response){
//   response.sendFile(path.resolve(__dirname, 'public', 'index.html'))
// });