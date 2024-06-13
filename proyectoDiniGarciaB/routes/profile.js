const express = require('express');
const router = express.Router();
const { body } = require('express-validator');

const controller = require('../controllers/profileController')

/* profile */
router.get('/id/:id', controller.profile);

/* profile edit */
router.get('/edit', controller.edit);

/*register*/
router.get('/register', controller.register);
router.post('/register', controller.store);

/*login*/
router.get('/login', controller.login);
router.post('/login', controller.loginUsuario)

/*logout*/
router.post('/logout', controller.logout);


module.exports = router  