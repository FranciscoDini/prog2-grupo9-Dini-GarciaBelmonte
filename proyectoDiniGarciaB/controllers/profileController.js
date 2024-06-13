const datos = require('../database/models/index')
const db = require('../database/models')
const productos = db.Producto
const bcrypt = require("bcryptjs")
const { validationResult } = require("express-validator")


const controller = {
    profile: function (req, res) {
        let id = req.params.id
        let criterio = {
            include: [
                {association: "camisetas"},
                {association: "comentarios"},
            ],
            order: [["createdAt", "DESC"]],
        }
        datos.Usuario.findByPk(id, criterio)
            .then((usuario) => {
                //return res.send(usuario)
                return res.render('profile', { user: usuario })

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

    login: (req, res) => {
        if (req.session.user != undefined) {
            return res.redirect("/");
        } else {
            return res.render("login")
        }
    },

    loginUsuario: (req, res) => {
        let formulario = req.body;

        let filtrar = {
            where: { mail: formulario.mail }
        };

        console.log('filtro', filtrar)

        datos.Usuario.findOne(filtrar)
            .then((results) => {

                if (results === null) {
                    return res.send("No existe un usuario con el mail " + formulario.mail);
                }

                let chequear = bcrypt.compareSync(formulario.contrasenia, results.contrasenia);
                console.log('check', chequear);
                if (chequear) {
                    req.session.user = results;

                    //guardar en cookie si el usuario puso que si
                    if (formulario.recordarme !== undefined) {
                        res.cookie("idUsuario", results.id, { maxAge: 1000 * 60 * 15 });
                    }
                    return res.redirect("/");
                } else {
                    return res.send("La contraseña es incorrecta");
                }

            }).catch((err) => {
                console.log(err);
                return res.status(500).send("Error en el servidor");
            });
    },


    store: (req, res) => {
        let errores = validationResult(req)
        return res.send(errores)
        if (errores.isEmpty()) {
            let form = req.body;

            let user = {
                nombreUsuario: form.usuario,
                mail: form.email,
                contrasenia: bcrypt.hashSync(form.contrasenia, 10),
                fechaNacimiento: form.fechaNacimiento,
                dni: form.nroDocumento,
                fotoPerfil: form.fotoPerfil
            };

            db.Usuario.create(user)
                .then((result) => {
                    return res.redirect("/profile/login");
                }).catch((err) => {
                    return console.log(err);
                });

        } else {
            return res.render("register", {
                mensajeError: errores.mapped(),
                old: req.body,
            })
        }
    },

    logout: function (req, res) {
        req.session.destroy();
        res.clearCookie("userId")
        return res.redirect("/")
    }
};


module.exports = controller