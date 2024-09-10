const express = require('express');

schoolController = require('../controllers/school');

const router = express.Router();

router.get('/', schoolController.list);

module.exports = router;
