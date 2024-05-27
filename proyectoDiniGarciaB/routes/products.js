const express = require('express');
const router = express.Router();

const controller = require('../controllers/productsController')

/* pagina products */

router.get('/id/:id', controller.products);

/* search */
router.get('/search-results', controller.search)

/* add */

router.get('/add', controller.add);


module.exports = router