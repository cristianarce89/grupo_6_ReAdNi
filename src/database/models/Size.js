module.exports = (sequelize, dataTypes) => {

    let alias = 'size'; 
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
        tableName: 'size',
        timestamps: false
    }

    const size = sequelize.define(alias,cols,config);
    return size;
}
