const datos = require('../db/datos')

const controller = {
    profile : function(req,res){
        res.render('profile', {datos : datos})
    },
    edit : function(req,res){
        res.render('profile-edit', {datos : datos})
    }
};


module.exports = controller