module.exports = (sequelize, dataTypes) => {

    let alias = 'user_product'; 
    let cols = {
        idUser_product: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },

        id_user: {
            type: dataTypes.INTEGER
        },

        id_product: {
            type: dataTypes.INTEGER
        }
        
    }

    let config = {
        tableName: 'user_product',
        timestamps: false
    }

    const user_product = sequelize.define(alias,cols,config);
    return user_product;
}
