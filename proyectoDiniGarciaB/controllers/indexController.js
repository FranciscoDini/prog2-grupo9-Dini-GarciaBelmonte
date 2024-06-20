const { Association } = require('sequelize');
const datos = require('../database/models');

const controller = {
  index: function (req, res) {
    datos.Producto.findAll({
      include: [{association: "duenio"}],
      order: [["createdAt", "DESC"]],
      limit: 8, //Para que no tarde la pagina, solo queremos que nos de 8//
    })
    .then(function (results) {
      //return res.send(results)
      return res.render('index', {datos:results})
    })
    .catch(function (error) {
      return console.log(error);;
    })

  }
};


module.exports = controller