const express = require('express');
const router = express.Router();

const controller = require('../controllers/profileController')

/* profile */
router.get('/id/:id', controller.profile);

/* profile edit */
router.get('/edit', controller.edit);

router.get('/register', controller.register);

router.post('/register', controller.store);

router.get('/login', controller.login);


module.exports = router  