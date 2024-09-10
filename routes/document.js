const express = require('express');

documentController = require('../controllers/document');

const router = express.Router();

router.get('/', documentController.list);

module.exports = router;
