module.exports = (sequelize, dataTypes) => {

    let alias = 'User_product'; 
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
        tableName: 'User_product',
        timestamps: false
    }

    const User_product = sequelize.define(alias,cols,config);
    return User_product;
}
