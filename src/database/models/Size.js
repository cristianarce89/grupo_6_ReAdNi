module.exports = (sequelize, dataTypes) => {

    let alias = 'Size'; 
    let cols = {
        idSize: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },

        Number: {
            type: dataTypes.INTEGER
        }

    }

    let config = {
        tableName: 'Size',
        timestamps: false
    }

    const Size = sequelize.define(alias,cols,config);
    return Size;
}
