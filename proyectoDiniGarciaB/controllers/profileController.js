const datos = require('../db/datos')

const controller = {
    profile : function(req,res){
        res.render('profile', {datos : datos})
    },
    edit : function(req,res){
        res.render('profile-edit', {datos : datos})
    },
    register : function(req,res){
        res.render('register', {datos : datos})
    },
    login : function(req,res){
        res.render('login', {datos : datos})
    }
};


module.exports = controller