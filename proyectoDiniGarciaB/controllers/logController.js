const datos = require('../db/datos')

const controller = {
    register : function(req,res){
        res.render('register', {datos : datos})
    },
    login : function(req,res){
        res.render('login', {datos : datos})
    }
};

module.exports = controller