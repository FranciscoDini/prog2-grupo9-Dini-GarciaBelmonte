const datos = require('../database/models/index')
const db = require('../database/models')
const usuarios = db.Usuario
const productos = db.Producto
const bcrypt = require("bcryptjs")

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

    login: (req, res)=>{
        return res.render("login")
    },

    /*loginUsuario: (req, res)=>{
        let formulario = req.body;
        return res.send(formulario)
    
        let filtro = {
            where: { mail: formulario.mail }
        };
    
        datos.Usuario.findOne(filtro)
        .then((results) => {
    
            if (results === null) {
                return res.send("No existe el mail " + formulario.mail);
            }
    
            let chequear = bcrypt.compareSync(formulario.contrasenia, results.contrasenia);
            if (chequear) {
                req.session.Usuario = results;
    
                /* que lo guarde en cookie si el usuario lo tildo
                if (formulario.rememberme !== undefined) {
                    res.cookie("idUsuario", results.id, { maxAge: 1000 * 60 * 15 });
                }
                return res.redirect("/product");
            } else {
                return res.send("La contraseña es incorrecta");
            }
    
        }).catch((err) => {
            console.log(err);
            return res.status(500).send("Error en el servidor");
        });
    },*/
    

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