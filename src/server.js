const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('Welcome to the Docker demo application!');
});

app.listen(3000, function () {
    console.log('Server is running (i.e., app is listening) on port 3000');
});