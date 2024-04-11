const express = require('express');
const router = express.Router();

/* pagina products */

router.get('/', function(req,res){
    res.render('product')
});

/* search */
router.get('/search-results', function(req,res){
    res.render('search-results')
})

/* add */

router.get('/add', function(req,res){
    res.render('product-add')
});


module.exports = router