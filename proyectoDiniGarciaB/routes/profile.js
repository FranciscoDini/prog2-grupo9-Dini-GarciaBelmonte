const express = require('express');
const router = express.Router();
const { body } = require('express-validator');
const controller = require('../controllers/profileController');
const db = require('../database/models');
let validationsRegister = [
    body("email").isEmail().withMessage("Debes completar un email valido").bail()
    .custom(function (value, {req}) {
        return db.Usuario.findOne({
            where : { mail: req.body.email },
        })
        .then(function (user) {
            if (user) {
                throw new Error("Este mail ya fue usado, proba con otro");
            }
            
        })
    }),
    body("usuario").notEmpty().withMessage("Ingresar un nombre de usuario").bail().isAlpha().withMessage("Tu usuario solo puede contener letras"),
    body("contrasenia").notEmpty().withMessage("Ingrese una contraseña").bail().isLength({ min: 4 }).withMessage("Debe contener al menos 4 caracteres")

];

/* profile */
router.get('/id/:id', controller.profile);

/* profile edit */
router.get('/edit', controller.edit);
router.post('/edit', controller.editProfile)

/*register*/
router.get('/register', controller.register);
router.post('/register', validationsRegister, controller.store);

/*login*/
router.get('/login', controller.login);
router.post('/login', controller.loginUsuario);

/*logout*/
router.post('/logout', controller.logout);


module.exports = router  