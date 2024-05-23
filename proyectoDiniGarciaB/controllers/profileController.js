const datos = require('../database/models/index')
const db = require('../database/models')
const usuarios = db.Usuario
const productos = db.Producto

const controller = {
    profile : function(req,res){
        let id = req.params.id
        let data = {
            usuario : null,
            productos : null,
        }
        usuarios.findByPk(id)
        .then((usuario)=>{
            data.usuario = usuario
            productos.findAll()
            .then((producto)=>{
                data.productos = producto
                res.render('profile', {datos : data})
            })
            //return res.send(result)//
        })
    },
    edit : function(req,res){
        res.render('profile-edit', {datos : datos})
    },
    register : function(req,res){
        res.render('register', {datos : datos})
    },
    login : function(req,res){
        res.render('login', {datos : datos})
    }
};


module.exports = controller