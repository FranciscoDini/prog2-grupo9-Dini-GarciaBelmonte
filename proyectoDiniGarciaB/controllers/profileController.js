const datos = require('../database/models/index')
const db = require('../database/models')
const usuarios = db.Usuario
const productos = db.Producto

/*const bcrypt = require("bcryptjs")*/

const controller = {
    profile: function (req, res) {
        let id = req.params.id
        let criterio = {
            include: {
                association: "camisetas"
            }
        }
        usuarios.findByPk(id, criterio)
            .then((usuario) => {
                return res.render('profile',{usuario:usuario})
                
            }).catch(function (err) {
                return console.log(err);
            })
    },
    edit: function (req, res) {
        res.render('profile-edit', { datos: datos })
    },
    register: (req, res) => {
        if (req.session.user != undefined) {
            return res.redirect("/");
        } else {
            return res.render("register")
        }
    },

    login: function (req, res) {
        res.render('login', { datos: datos })
    },

    store: (req, res) => {
        let form = req.body;

        let user = {
            nombreUsuario: form.usuario,
            mail: form.email,
            contrasenia: form.contrasenia,
            fechaNacimiento : form.fechaNacimiento,
            dni : form.nroDocumento,
            fotoPerfil : form.fotoPerfil
        };

        db.Usuario.create(user)
            .then((result) => {
                return res.redirect("/profile/login");
            }).catch((err) => {
                return console.log(err);
            });
    }
};


module.exports = controller