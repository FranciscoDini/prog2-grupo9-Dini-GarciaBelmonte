const express = require('express');
const router = express.Router();
const { body } = require('express-validator');

const controller = require('../controllers/productsController')

/* pagina products */

router.get('/id/:id', controller.products);

/* add */

router.get('/add', controller.add);
router.post('/add', controller.store)

/* search */
// router.get('/search-results', controller.search);
router.get('/search-results', controller.showOne);



module.exports = router