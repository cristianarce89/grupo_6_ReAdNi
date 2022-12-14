module.exports = (sequelize, dataTypes) => {

    let alias = 'Usuario'; 
    let cols = {
        id: {
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

        
    };

    let config = {
        tableName: 'usuario',
        timestamps: false
    };

    const Usuario = sequelize.define(alias,cols,config)
    return Usuario
}
