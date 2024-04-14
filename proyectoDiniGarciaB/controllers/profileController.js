const controller = {
    profile : function(req,res){
        res.render('profile')
    },
    edit : function(req,res){
        res.render('profile-edit')
    }
};


module.exports = controller