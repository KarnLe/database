const express = require('express');
const cookieParser = require('cookie-parser');
const cors = require('cors');
const path = require('path');
require('dotenv').config();

const router = require('./routes');
const db = require('./configs/database');

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use('/public', express.static(path.join(__dirname, 'public')));
app.use(cors());

app.use('/api', router);

(async () => {
    await db.connect();
})();

module.exports = app;
