// module.exports = (sequelize, DataTypes) => {

//     let alias = 'Category'; 
//     let cols = {
//         idCategory: {
//             type: DataTypes.INTEGER,
//             primaryKey: true,
//             autoIncrement: true
//         },

//         name: {
//             type: DataTypes.STRING 
//         },

//         id_product: {
//             type: DataTypes.INTEGER
//         }

//     }

//     let config = {
//         tableName: 'Category',
//         timestamps: false
//     }

//     const Category = sequelize.define(alias,cols,config);


//     // Category.associate = (models) =>{
//     //     Category.hasMany(models.Product, {
//     //         as: 'Categories',
//     //         foreignKey: 'id_product'
//     //     })
//     // }
    
// return Category;

// }