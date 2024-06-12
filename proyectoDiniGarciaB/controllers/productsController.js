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
      let form = req.body;
        return res.send(form)
        let filtro = {
            where: [{mail: form.mail}]
        };

        datos.Usuario.findOne(filtro)
        .then((result) => {

            if (result == null) return res.send("No existe el mail " +  form.mail)
            

            let check = bcrypt.compareSync(form.contrasenia, result.contrasenia);
            if (check) {
                req.session.user = result;

                /* que lo guarde en cookie si el usuario lo tildo */
                if (form.rememberme != undefined) {
                    res.cookie("userId", result.id, {maxAge: 1000 * 60 * 15});
                }
                return res.redirect("/product");
            } else {
                return res.send("La contraseña es incorrecta")
            }
            
           

        }).catch((err) => {
            return console.log(err);
        });

        // res.render('search-results', {datos : datos})
    },
    add : function(req,res){
        res.render('product-add', {datos : datos})
    }
};


module.exports = controller