const express = require('express');
const router = express.Router();
/*validaciones*/
const {body} = require('express-validator');
const validations = [
  body('fotoProducto').notEmpty().withMessage('Debes agregar una foto del producto').bail(),
  body('nombreProducto').notEmpty().withMessage('Debes agregar un nombre al producto').bail(),
  body('descripcion').notEmpty().withMessage('Debes agregar una descripcion al producto').bail(),
];

const commentValidations = [
  body('comentario')
  .notEmpty().withMessage('Debes escribir un texto para comentar').bail()
  .isLength({min : 3}).withMessage('El comentario debe tener mínimo 3 caracteres')
]

const controller = require('../controllers/productsController')

/* mostrar todos los productos */
router.get('/', controller.showAll)

/* detail products */
router.get('/id/:id', controller.productDetail);

/* add */
router.get('/add', controller.showFormCreate);
router.post('/add', validations, controller.store);

/* edit */
router.get('/edit/id/:id', controller.showFormUpdate)
router.post('/update', validations, controller.update)

/* destroy */
router.post('/delete', controller.delete)

/* comment */
router.post('/comment', commentValidations, controller.comment)

/* search */
router.get('/search-results', controller.showOne);



module.exports = router