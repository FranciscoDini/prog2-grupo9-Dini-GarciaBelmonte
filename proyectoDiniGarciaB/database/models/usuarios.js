module.exports = function(sequelize, dataTypes){
    let alias = 'Usuario';

    let cols = {
        id : {
            autoIncrement : true,
            primaryKey : true,
            type : dataTypes.INTEGER
        },
        nombreUsuario : {
            type : dataTypes.STRING
        },
        mail : {
            type : dataTypes.STRING
        },
        contrasenia : {
            type : dataTypes.STRING
        },
        dni : {
            type : dataTypes.INTEGER
        },
        fechaNacimiento : {
            type : dataTypes.INTEGER
        },
        fotoPerfil : {
            typr : dataTypes.STRING
        }, 
        createdAt : {
            type : dataTypes.DATE
        },
        updatedAt : {
            type : dataTypes.DATE
        }, 
        deletedAt : {
            type : dataTypes.DATE
        }
    }; 

    let config = {
        tableName : "usuarios",
        timestamps : true,
        underscored : false
    }; 

    let usuarios = sequelize.define(alias,cols,config);
    return usuarios; 
}