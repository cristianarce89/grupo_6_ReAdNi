const { DataTypes } = require("sequelize");

module.exports = (sequelize, dataTypes) => {

    let alias = 'Product';
    let cols = {
        idProduct: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },

        name: {
            type: dataTypes.STRING
        },

        description: {
            type: dataTypes.STRING
        },

        ranking: {
            type: dataTypes.INTEGER
        },

        id_color: {
            type: dataTypes.INTEGER
        },

        priceAnt: {
            type: dataTypes.INTEGER
        },

        price: {
            type: dataTypes.INTEGER
        },

        discounts: {
            type: dataTypes.INTEGER
        },

        id_markets: {
            type: dataTypes.INTEGER
        },

        id_categories: {
            type: dataTypes.INTEGER
        },

        id_sizes: {
            type: dataTypes.INTEGER
        },
        imagen: {
            type: dataTypes.INTEGER
        }
    }

    let config = {
        tableName: 'Product',
        timestamps: false
    }


    const Product = sequelize.define(alias, cols, config);

    Product.associate = function (models) {
        Product.belongsTo(models.Category, {
            as: 'category',
            foreignkey: 'categories_id'
        })
        Product.associate = function (models) {
            Product.belongsTo(models.Market, {
                as: 'market',
                foreignkey: 'markets_id'
            })
            Product.associate = function (models) {
                Product.belongsTo(models.Size, {
                    as: 'size',
                    foreignkey: 'size_id'
                })
            }
        }

    }
    return Product;
}
