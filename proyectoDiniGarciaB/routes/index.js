const express = require('express');
const router = express.Router();
const { body } = require('express-validator');

const controller = require('../controllers/indexController')

/* GET home page. */
router.get('/', controller.index);

module.exports = router;
