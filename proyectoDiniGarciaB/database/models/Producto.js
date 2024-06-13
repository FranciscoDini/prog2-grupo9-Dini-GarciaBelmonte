module.exports = function(sequelize, dataTypes){
    let alias = 'Producto';

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
        fotoProducto : {
            type: dataTypes.STRING,
            notNull : true,
        },
        nombreProducto : {
            type : dataTypes.STRING,
            notNull : true,
        },
        descripcion : {
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
            foreignKey: "idProducto"
        })
    }
    return productos; 
}