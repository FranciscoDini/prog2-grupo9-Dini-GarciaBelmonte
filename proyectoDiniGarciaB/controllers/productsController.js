const datos = require('../database/models/index');
const op = datos.Sequelize.Op


const controller = {
  products: function (req, res) {
    let id = req.params.id;
    let filtro = {
      include: [
        { association: "duenio" },
        { association: "comentarios",
          include : [{association : 'comentador'}]
         }
      ]
    }
    datos.Producto.findByPk(id, filtro)
      .then(function (results) {
        //return res.send(results)
        return res.render('product', { product: results })
      })
      .catch(function (error) {
        return console.log(error);;
      })

  },

  search: (req, res) => {
    res.render('search-results', { datos: datos })
  },

  showFormCreate: function (req, res) {
    if (req.session.user == undefined) {
      res.redirect('/profile/login')
    } else {
      res.render('product-add')
      res.render('product-add', { datos: datos })
    }
  },

  showFormUpdate: function (req, res) {
    let id = req.params.id;

    datos.Producto.findByPk(id)
      .then((result) => {

        return res.render('product-edit', { product: result })
      })
      .catch((result) => {
        return console.log(err);
      })
  },


  showOne: (req, res) => {
    let datosProducto = req.query.search;

    let filtro = {
      where: { [op.or]: [{ nombreProducto: { [op.like]: "%" + datosProducto + "%" } }, { descripcion: { [op.like]: "%" + datosProducto + "%" } }] },
      include: [
        { association: "duenio" },
        { association: "comentarios" }
      ],
      order: [["createdAt", "DESC"]],
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
      idUsuario: req.session.user.id,
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
  },

  update: function (req, res) {
    let form = req.body;


    let filtro = {
      where: [{ id: form.id }]
    };

    datos.Producto.update(form, filtro)
      .then((result) => {
        return res.redirect('/products/id/' + form.id);
      }).catch((err) => {
        return console.log(err);
      });
  },

  delete: function (req, res) {
    let idEliminar = req.body.id

    /*eliminar comentarios asociados al prod */
    let filtroComments = {
      where : [{idProducto : idEliminar}]
    }

    datos.Comentario.destroy(filtroComments)

    /*eliminar producto */

    let filtro = {
      where: { id: idEliminar }
    };

    datos.Producto.destroy(filtro)
    .then((result) => {
      return res.redirect('/')
    }).catch((err) => {
      return console.log(err)
    });

  }

};


module.exports = controller