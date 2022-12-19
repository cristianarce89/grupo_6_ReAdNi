module.exports = (sequelize, dataTypes) => {

    let alias = 'color'; 
    let cols = {
        idColor: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },

        name: {
            type: dataTypes.STRING 
        }

    }

    let config = {
        tableName: 'color',
        timestamps: false
    }

    const color = sequelize.define(alias,cols,config);

    Color.associate = function (models) {
        Color.hasMany(models.Product, {
            as: 'product',
            foreigkey: 'product_id'
        })


 }
    return color;

    
}