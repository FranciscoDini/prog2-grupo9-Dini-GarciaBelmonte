const datos = require('../database/models/index');
const op = datos.Sequelize.Op


const controller = {
  products: function (req, res) {
    let idCami = req.params.id;
    let filtro = {
      include: [
        { association: "duenio" },
        { association: "comentarios" }
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

  search: (req, res) => {
    res.render('search-results', { datos: datos })
  },

  add: function (req, res) {
    if (req.session.user == undefined) {
      res.redirect('/profile/login')
    } else {
      res.render('product-add')
      res.render('product-add', { datos: datos })
    }
  },

  /*showFormCreate: function (req, res) {

    if (req.session.user == undefined) {
        return res.redirect("/profile/login")
    } else {
      return res.render("register");
    }
  },*/

  showOne: (req, res) => {
    let datosProducto = req.query.search;

    let filtro = {
      where: {[op.or]: [{nombreProducto: {[op.like]: "%" + datosProducto + "%"}},{descripcion: {[op.like]: "%" + datosProducto + "%"}}]},
      include : [
        {association : "duenio"},
        {association : "comentarios"}
      ],
      order : [["createdAt", "DESC"]],
    }
    

    datos.Producto.findAll(filtro)
      .then(function (result) {
        //return res.send(result);
         return res.render('search-results', { datos: result })
      }).catch(function (error) {
        return console.log(error);;
      });
  },

  store: function (req, res) {
    let form = req.body

    let product = {
      idUsuario: req.session.id,
      fotoProducto: form.fotoProducto,
      nombreProducto: form.nombreProducto,
      descripcion: form.descripcion
    }

    datos.Producto.create(product)
      .then((result) => {
        return res.redirect("/")
      }).catch((err) => {
        return console.log(err);
      });
  }

};


module.exports = controller