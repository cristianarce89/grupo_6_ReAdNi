module.exports = (sequelize, dataTypes) => {

    let alias = 'User'; 
    let cols = {
        idUser: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },

        name: {
            type: dataTypes.STRING 
        },

        email: {
            type: dataTypes.STRING
        },

        cellphone: {
            type: dataTypes.INTEGER
        },

        address: {
            type: dataTypes.STRING
        },

        id_cities: {
            type: dataTypes.INTEGER
        }

        
    }

    let config = {
        tableName: 'User',
        timestamps: false
    }

    const User = sequelize.define(alias,cols,config);
    return User;
}
