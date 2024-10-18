const express = require('express');
const levelRouter = require('./level');
const schoolRouter = require('./school');
const documentRouter = require('./document');

const router = express.Router();

router.use('/levels', levelRouter);
router.use('/schools', schoolRouter);
router.use('/documents', documentRouter);

module.exports = router;
