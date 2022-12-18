module.exports = (sequelize, dataTypes) => {

    let alias = 'category'; 
    let cols = {
        idCategory: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },

        name: {
            type: dataTypes.STRING 
        },

        id_markets: {
            type: dataTypes.INTEGER
        }

    }

    let config = {
        tableName: 'category',
        timestamps: false
    }

    const category = sequelize.define(alias,cols,config);
    return category;
}