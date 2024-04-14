const controller = {
    products : function(req,res){
        res.render('product')
    },
    search : function(req,res){
        res.render('search-results')
    },
    add : function(req,res){
        res.render('product-add')
    }
};


module.exports = controller