const express = require('express');
const router = express.Router();
const { body } = require('express-validator');

const controller = require('../controllers/productsController')

/* detail products */
router.get('/id/:id', controller.products);

/* comment */
router.post('/comment', controller.comment)

/* add */
router.get('/add', controller.showFormCreate);
router.post('/add', controller.store);

/* edit */
router.get('/edit/id/:id', controller.showFormUpdate)
router.post('/update', controller.update)

/* destroy */
router.post('/delete', controller.delete)

/* comment */
router.post('/comment', controller.comment)

/* search */
router.get('/search-results', controller.showOne);



module.exports = router