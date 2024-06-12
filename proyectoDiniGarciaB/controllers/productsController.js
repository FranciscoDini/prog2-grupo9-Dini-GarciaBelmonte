const datos = require('../database/models/index')

const controller = {
    products : function (req, res) {
        let idCami = req.params.id;
        let filtro = {
            include: [
              {association: "duenio"},
              {association: "comentarios"}
            ]
          }
        datos.Producto.findByPk(idCami, filtro)
        .then(function (results) {
            //return res.render('product',{ datos : results})//

        return res.send(results)
        })
        .catch(function (error) {
          return console.log(error);;
        })
    
    },
    search : (req,res)=>{
        res.render('search-results', {datos : datos})
    },
    add : function(req,res){
        res.render('product-add', {datos : datos})
    }
};


module.exports = controller