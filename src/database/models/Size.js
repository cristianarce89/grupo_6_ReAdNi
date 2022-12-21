// module.exports = (sequelize, DataTypes) => {

//     let alias = 'Size';
//     let cols = {
//         idSize: {
//             type: DataTypes.INTEGER,
//             primaryKey: true,
//             autoIncrement: true
//         },

//         number: {
//             type: DataTypes.INTEGER
//         }

//     }

//     let config = {
//         tableName: 'Size',
//         timestamps: false
//     }

//     const Size = sequelize.define(alias, cols, config);


//     // Size.associate = (models) => {
//     //     Size.belongsToMany(models.Product, {
//     //         through: 'product_size',
//     //         foreignKey: 'id_size',
//     //         otherKey: 'id_product'
//     //     }),
//     //     Size.belongsToMany(models.Market, {
//     //         as: 'Sizes'
//     //     })
//     // }

// return Size;
// }