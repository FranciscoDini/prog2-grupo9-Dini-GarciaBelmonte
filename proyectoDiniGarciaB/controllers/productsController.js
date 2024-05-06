const datos = require('../database/models/index')

const controller = {
    products : function(req,res){
        res.render('product', {datos : datos})
    },
    search : function(req,res){
        res.render('search-results', {datos : datos})
    },
    add : function(req,res){
        res.render('product-add', {datos : datos})
    }
};


module.exports = controller