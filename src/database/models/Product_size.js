module.exports = (sequelize, dataTypes) => {

    let alias = 'Product_size'; 
    let cols = {
        idProducto_size: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },

        id_products: {
            type: dataTypes.INTEGER
        },

        id_sizes: {
            type: dataTypes.INTEGER
        }

    }

    let config = {
        tableName: 'Product_size',
        timestamps: false
    }

    const Product_size = sequelize.define(alias,cols,config);
    return Product_size;
}
