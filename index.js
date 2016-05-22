'use strict';

const express = require('express');
let app = express();
let port = 3000;

app.use(express.static(__dirname + '/public'));

app.listen(port, function() {
  console.log('SERVER START...')
});
