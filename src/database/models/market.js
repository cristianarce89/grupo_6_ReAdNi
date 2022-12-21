// module.exports = (sequelize, DataTypes) => {

//     let alias = 'Market'; 
//     let cols = {
//         idMarket: {
//             type: DataTypes.INTEGER,
//             primaryKey: true,
//             autoIncrement: true
//         },

//         name: {
//             type: DataTypes.STRING 
//         },

//         id_products: {
//             type: DataTypes.INTEGER 
//         },

//         id_colors: {
//             type: DataTypes.INTEGER 
//         },

//         id_sizes: {
//             type: DataTypes.INTEGER 
//         }
//     }

//     let config = {
//         tableName: 'Market',
//         timestamps: false
//     }

//     const Market = sequelize.define(alias,cols,config);

//     // Market.associate= (models) =>{
//     //     Market.hasMany(models.Product, {
//     //         foreignKey: 'id_product'
//     //     }),
//     //     Market.hasMany(models.Color, {
//     //         foreignKey: 'id_color'
//     //     }),
//     //     Market.hasMany(models.Size, {
//     //         foreignKey: 'id_size'
//     //     })
//     // }

//     return Market;
// }
