const { DataTypes } = require('sequelize');
const bcrypt = require('bcrypt.js');
const db = require('../config/db.js');


const Product = db.define('products', {
    idProduct: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },

        name: {
            allowNull: false,
            type: DataTypes.STRING 
        },

        ranking: {
            allowNull: false,
            type: DataTypes.INTEGER
        },

        price: {
            allowNull: false,
            type: DataTypes.INTEGER
        },

        discounts: {
            allowNull: false,
            type: DataTypes.INTEGER
        },

        id_markets: {
            type: DataTypes.INTEGER
        },

        id_categories: {
            type: DataTypes.INTEGER
        },

        id_sizes: {
            type: DataTypes.INTEGER
        },

        
        //token para encryptar contraseñas
        token: DataTypes, 
    }, {
        hooks: {
            beforeCreate: async function(Product){
                const salt = await bcrypt.genSalt(10)
                Product.password = await bcrypt.hash( Product.password, salt)
            }
        }
    })

    module.exports = Product;
