module.exports = (sequelize, dataTypes) => {

    let alias = 'Market'; 
    let cols = {
        idMarket: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },

        name: {
            type: dataTypes.STRING 
        },

        id_colors: {
            type: dataTypes.INTEGER
        }

    }

    let config = {
        tableName: 'Market',
        timestamps: false
    }

    const Market = sequelize.define(alias,cols,config);
    return Market;
}
