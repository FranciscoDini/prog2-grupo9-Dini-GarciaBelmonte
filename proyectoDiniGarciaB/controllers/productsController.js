const datos = require('../database/models/index')

const controller = {
    products : function (req, res) {
        let idPeli = req.params.id;
        let filtrado = {
            include: [
              {association: "duenio"},
              {association: "comentarios"}
            ]
          }
        datos.Producto.findByPk(idPeli, filtrado)
        .then(function (results) {
            //return res.render('product',{ datos : results})//

        return res.send(results)
        })
        .catch(function (error) {
          return console.log(error);;
        })
    
    },
    search : function(req,res){
        res.render('search-results', {datos : datos})
    },
    add : function(req,res){
        res.render('product-add', {datos : datos})
    }
};


module.exports = controller