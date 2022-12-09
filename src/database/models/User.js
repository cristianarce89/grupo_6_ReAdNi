module.exports = (sequelize, dataTypes) => {

    let alias = 'user'; 
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
            type: dataTypes.INTEGER
        },

        cellphone: {
            type: dataTypes.INTEGER
        },

        address: {
            type: dataTypes.INTEGER
        },
 
        id_cities: {
            type: dataTypes.INTEGER
        }

        
    }

    let config = {
        tableName: 'user',
        timestamps: false
    }

    const user = sequelize.define(alias,cols,config);
    return user;
}
