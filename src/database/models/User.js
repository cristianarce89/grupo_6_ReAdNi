// module.exports = (sequelize, DataTypes) => {

//     let alias = 'User';
//     let cols = {
//         idUser: {
//             type: DataTypes.INTEGER,
//             primaryKey: true,
//             autoIncrement: true
//         },

//         name: {
//             type: DataTypes.STRING
//         },

//         email: {
//             type: DataTypes.STRING
//         },

//         cellphone: {
//             type: DataTypes.INTEGER
//         },

//         address: {
//             type: DataTypes.STRING
//         }
        
//     }

//     let config = {
//         tableName: 'User',
//         timestamps: false
//     }

//     const User = sequelize.define(alias, cols, config);

//     // User.associate= (models) =>{
//     //     User.belongsToMany(models.Product, {
//     //         through: 'user_product',
//     //         foreignKey: 'id_user',
//     //         otherKey: 'id_product'
//     //     })
//     // }

//     return User;
// }
