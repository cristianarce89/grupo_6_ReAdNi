module.exports = (sequelize, DataTypes) => {

    let alias = 'Product'; // como se nombre el modelo
    let cols = {
        idProduct: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },

        name: {
            type: DataTypes.STRING(50),
        },

        description: {
            type: DataTypes.STRING(100),
        },

        ranking: {
            type: DataTypes.INTEGER,
        },

        priceAnt: {
            type: DataTypes.INTEGER,
        },

        price: {
            type: DataTypes.INTEGER,
        },

        discount: {
            type: DataTypes.INTEGER,
        },

        market: {
            type: DataTypes.STRING(10),
        },

        color: {
            type: DataTypes.STRING(20),
        },

        category: {
            type: DataTypes.STRING(10),
        },

        size: {
            type: DataTypes.INTEGER,
        },

        imagen: {
            type: DataTypes.STRING(100),
        }
    }

    let config = {
        tableName: 'product', //nombre de la tabla en la base de datos
        timestamps: false
    }

    const Product = sequelize.define(alias, cols, config);
    // console.log("este es el resultado en el modelo product " + Product) // este es el resultado en el modelo product class extends Model {}
    return Product
}


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

