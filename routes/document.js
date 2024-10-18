const express = require('express');

documentController = require('../controllers/document');

const router = express.Router();

router.get('/', documentController.list);

router.get('/details/:id', documentController.getDocumentDetail);

module.exports = router;
