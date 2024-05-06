const datos = require('../database/models/index')

const controller = {
    index : function(req, res){
        res.render('index', {datos : datos});
      }
};


module.exports = controller