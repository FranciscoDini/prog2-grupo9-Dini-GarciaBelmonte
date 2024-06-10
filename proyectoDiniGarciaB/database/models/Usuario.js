module.exports = function(sequelize, dataTypes){
    let alias = 'Usuario';

    let cols = {
        id : {
            autoIncrement : true,
            primaryKey : true,
            notNull : true,
            type : dataTypes.INTEGER.UNSIGNED
        },
        nombreUsuario : {
            type : dataTypes.STRING,
            notNull : true,
        },
        mail : {
            type : dataTypes.STRING,
            notNull : true,
        },
        contrasenia : {
            type : dataTypes.STRING,
            notNull : true,
        },
        dni : {
            type : dataTypes.INTEGER,
        },
        fechaNacimiento : {
            type : dataTypes.INTEGER,
        },
        fotoPerfil : {
            type : dataTypes.STRING,
        }, 
        createdAt : {
            type : dataTypes.DATE,
            notNull : true,
        },
        updatedAt : {
            type : dataTypes.DATE,
            notNull : true,
        }, 
        deletedAt : {
            type : dataTypes.DATE,
            notNull : true,
        }
    }; 

    let config = {
        tableName : "usuarios",
        timestamps : true,
        underscored : false
    }; 

    let usuarios = sequelize.define(alias,cols,config);

    usuarios.associate = function(models){
        usuarios.hasMany(models.Producto, {
            as: "camisetas",// nombre de la relacion//
            foreignKey: "id",

        })
        
        usuarios.hasMany(models.Comentario,{
            as: "comentarios",
            foreignKey: "id",
        })

    }


    return usuarios; 
}