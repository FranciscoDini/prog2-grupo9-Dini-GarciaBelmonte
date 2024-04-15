const datos = require('../db/datos')

const controller = {
    index : function(req, res){
        res.render('index', {datos : datos});
      }
};


module.exports = controller