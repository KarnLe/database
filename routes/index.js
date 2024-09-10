const express = require('express');
const levelRouter = require('./level');
const schoolRouter = require('./school');

const router = express.Router();

router.use('/levels', levelRouter);
router.use('/schools', schoolRouter);

module.exports = router;
