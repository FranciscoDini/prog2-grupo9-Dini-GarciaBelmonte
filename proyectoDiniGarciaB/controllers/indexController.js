const datos = require('../database/models')

const controller = {
  index: function (req, res) {
    datos.Producto.findAll()
    .then(function (results) {
      /*return res.send(results)*/
      return res.render('index', {datos:results})
    })
    .catch(function (error) {
      return console.log(error);;
    })

  }
};


module.exports = controller