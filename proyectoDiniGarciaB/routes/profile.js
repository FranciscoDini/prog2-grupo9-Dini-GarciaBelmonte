const express = require('express');
const router = express.Router();
const { body } = require('express-validator');
let validations = [
    body("email").notEmpty().withMessage("Debes ingresar un mail de usuario").bail(),
    body("usuario").notEmpty().withMessage("Ingresar un nombre de usuario").bail(),

];

const controller = require('../controllers/profileController')

/* profile */
router.get('/id/:id', controller.profile);

//router.get('/id/:id', controller.productProfile);

/* profile edit */
router.get('/edit', controller.edit);

/*register*/
router.get('/register', controller.register);
router.post('/register', validations, controller.store);

/*login*/
router.get('/login', controller.login);
router.post('/login', controller.loginUsuario);

/*logout*/
router.post('/logout', controller.logout);


module.exports = router  