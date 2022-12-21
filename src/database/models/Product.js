const { DataTypes } = require("sequelize");
// const { foreignKeys } = require("sequelize/types/query-types");

module.exports = (sequelize, DataTypes) => {

    let alias = 'Product';
    let cols = {
        idProduct: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },

        name: {
            type: DataTypes.STRING
        },

        description: {
            type: DataTypes.STRING
        },

        ranking: {
            type: DataTypes.INTEGER
        },

        color: {
            type: DataTypes.STRING
        },

        priceAnt: {
            type: DataTypes.INTEGER
        },

        price: {
            type: DataTypes.INTEGER
        },

        discount: {
            type: DataTypes.INTEGER
        },

        market: {
            type: DataTypes.STRING
        },

        category: {
            type: DataTypes.STRING
        },

        size: {
            type: DataTypes.INTEGER
        },
        imagen: {
            type: DataTypes.STRING
        }
    }

    let config = {
        tableName: 'Product',
        timestamps: false
    }

    const Product = sequelize.define(alias, cols, config);

    // Product.associate= (models) =>{
    //     Product.belongsToMany(models.Category, {
    //         as: 'Products'
    //     }),

    //     Product.belongsToMany(models.Size, {
    //         through: 'product_size',
    //         foreignKey: 'id_product',
    //         otherKey: 'id_size'
    //     }),

    //     Product.belongsToMany(models.Color, {
    //         through: 'product_color',
    //         foreignKey: 'id_product',
    //         otherKey: 'id_color'
    //     }),

    //     Product.belongsToMany(models.User, {
    //         through: 'user_product',
    //         foreignKey: 'id_product',
    //         otherKey: 'id_user'
    //     }),

    //     Product.belongsToMany(models.Market, {
    //         as: 'Products'
    //     })
    // }

    return Product;
}
