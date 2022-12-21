// module.exports = (sequelize, DataTypes) => {

//     let alias = 'Product_color'; 
//     let cols = {
//         idProducto_color: {
//             type: DataTypes.INTEGER,
//             primaryKey: true,
//             autoIncrement: true
//         },

//         id_product: {
//             type: DataTypes.INTEGER
//         },

//         id_color: {
//             type: DataTypes.INTEGER
//         }

//     }

//     let config = {
//         tableName: 'Product_color',
//         timestamps: false
//     }

//     const Product_color = sequelize.define(alias,cols,config);
//     return Product_color;

// }