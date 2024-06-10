module.exports = function(sequelize, dataTypes){
    let alias = 'Comentario';

    let cols = {
        id : {
            autoIncrement : true,
            primaryKey : true,
            notNull : true,
            type : dataTypes.INTEGER
        },
        idUsuario : {
            type : dataTypes.INTEGER,
            notNull : true,
        },
        idProducto : {
            type : dataTypes.INTEGER,
            notNull : true,
        },
        texto : {
            type : dataTypes.STRING,
            notNull : true,
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
        tableName : "comentarios",
        timestamps : true,
        underscored : false
    }; 

    let comentarios = sequelize.define(alias,cols,config);

    comentarios.associate = function(models){
        comentarios.belongsTo(models.Usuario,{
            as: "comentador",
            foreignKey: "idUsuario",
        })

        comentarios.belongsTo(models.Producto,{
            as: "producto", //producto comentado//
            foreignKey: "idProducto",
        })
    }
    return comentarios; 
}