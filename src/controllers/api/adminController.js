const path = require('path');
const db = require('../../database/models');
const sequelize = db.sequelize;
const { op } = require('sequelize')

const Products = db.Product;
// console.log('esta es una prueba en el controllador ' + Products) // aca sale: esta es una prueba en el controllador class extends Model {}

const adminController = {
    list: (req, res) => {
        db.Product.findAll()
            .then(products => {
                let respuesta = {
                    meta: {
                        estatus: 200,
                        total: products.length,
                        url: 'api/administar'
                    },
                    data: products
                }
                res.json(respuesta);
            })
    },


    detail: (req, res) => {
        db.Product.findByPk(req.params.id)
            .then(product => { 
                let respuesta= {
                    meta: {
                        status: 200,
                        total: product,
                        url: 'api/administrar/productDetail/:id'
                    },
                    data: product
                }
                res.json(respuesta)
            })
    },
}
module.exports = adminController;