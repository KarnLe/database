const express = require('express');

levelController = require('../controllers/level');

const router = express.Router();

router.get('/', levelController.list);

module.exports = router;
