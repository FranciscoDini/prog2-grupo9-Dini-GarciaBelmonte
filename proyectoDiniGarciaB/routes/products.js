const express = require('express');
const router = express.Router();
const { body } = require('express-validator');

const controller = require('../controllers/productsController')

/* pagina products */

router.get('/id/:id', controller.products);

/* add */

router.get('/add', controller.showFormCreate);
router.post('/add', controller.store);

/* edit */
router.get('/edit/id/:id', controller.showFormUpdate)
router.post('/update', controller.update)

/* search */
// router.get('/search-results', controller.search);


router.get('/search-results', controller.showOne);



module.exports = router