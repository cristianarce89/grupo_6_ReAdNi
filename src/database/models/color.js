// module.exports = (sequelize, DataTypes) => {

//     let alias = 'Color';
//     let cols = {
//         idColor: {
//             type: DataTypes.INTEGER,
//             primaryKey: true,
//             autoIncrement: true
//         },

//         name: {
//             type: DataTypes.STRING
//         }

//     }

//     let config = {
//         tableName: 'Color',
//         timestamps: false
//     }

//     const Color = sequelize.define(alias, cols, config);

//     // Color.associate = (models) => {
//     //     Color.belongsToMany(models.Product, {
//     //         through: 'product_color',
//     //         foreignKey: 'id_color',
//     //         otherKey: 'id_product'
//     //     }),
//     //     Color.belongsToMany(models.Market, {
//     //         as: 'Colors'
//     //     })
//     // }

//     return Color;

// }