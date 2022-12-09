module.exports = (sequelize, dataTypes) => {

    let alias = 'market'; 
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
        tableName: 'market',
        timestamps: false
    }

    const market = sequelize.define(alias,cols,config);
    return market;
}
