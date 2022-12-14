const Product = require('../database/models/Product.js');

const productCreate = async (req,res) => {
    await Product.create({
        name,
        ranking,
        price,
        discounts,
        id_markets,
        id_categories,
        id_sizes
    })
}

module.exports = productCreate;