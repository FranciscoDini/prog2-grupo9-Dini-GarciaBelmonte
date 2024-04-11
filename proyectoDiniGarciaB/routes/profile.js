const express = require('express');
const router = express.Router();

/* profile */
router.get('/', function(req,res){
    res.render('profile')
});

/* profile edit */
router.get('/edit', function(req,res){
    res.render('profile-edit')
});


module.exports = router