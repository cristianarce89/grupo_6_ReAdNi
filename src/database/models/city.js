module.exports = (sequelize, dataTypes) => {


    let alias = 'city'; 
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
        tableName: 'city',
        timestamps: false
    }

    const city = sequelize.define(alias,cols,config);
    return city;
    
}
//se suben de nuevo las tablas