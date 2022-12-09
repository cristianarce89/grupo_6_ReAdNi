module.exports = (sequelize, dataTypes) => {

    let alias = 'product_size'; 
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
        tableName: 'product_size',
        timestamps: false
    }

    const product_size = sequelize.define(alias,cols,config);
    return product_size;
}
