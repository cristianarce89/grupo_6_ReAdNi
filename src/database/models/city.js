module.exports = (sequelize, dataTypes) => {


    let alias = 'City'; 
    let cols = {
        idCity: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },

        name: {
            type: dataTypes.STRING 
        }

    }

    let config = {
        tableName: 'City',
        timestamps: false
    }

    const City = sequelize.define(alias,cols,config);
    return City;
}