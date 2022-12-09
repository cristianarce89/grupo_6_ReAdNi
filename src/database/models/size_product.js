module.exports = (sequelize, dataTypes) => {

    let alias = 'size_product'; 
    let cols = {
        idSize_product: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },

        id_product: {
            type: dataTypes.STRING 
        },

        id_size: {
            type: dataTypes.INTEGER
        }
  
    }

    let config = {
        tableName: 'size_product',
        timestamps: false
    }

    const size_product = sequelize.define(alias,cols,config);
    return size_product;
}
