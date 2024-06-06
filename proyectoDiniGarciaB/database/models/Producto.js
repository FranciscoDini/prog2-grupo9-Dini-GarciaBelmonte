module.exports = function(sequelize, dataTypes){
    let alias = 'Producto';

    let cols = {
        id : {
            autoIncrement : true,
            primaryKey : true,
            type : dataTypes.INTEGER
        },
        idUsuario : {
            type : dataTypes.INTEGER
        },
        fotoProducto : {
            type: dataTypes.STRING
        },
        nombreProducto : {
            type : dataTypes.STRING
        },
        descripcion : {
            type : dataTypes.STRING
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
        tableName : "productos",
        timestamps : true,
        underscored : false
    }; 

    let productos = sequelize.define(alias,cols,config);

    productos.associate = function(models){
        productos.belongsTo(models.Usuario,{
            as: "duenio", // estoy queriendo buscar al duenio del producto// 
            foreignKey: "idUsuario",
        })

        productos.hasMany(models.Comentario,{
            as: "comentarios",
            foreignKey: "id"
        })
    }
    return productos; 
}