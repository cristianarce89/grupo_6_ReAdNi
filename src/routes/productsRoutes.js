const express = require('express');
const router = express.Router();
const path = require('path');

const productsController = require('../controllers/productsController');

//vistas de products
router.get('/productCart', productsController.productCart);//fabio
router.get('/productDetail', productsController.productDetail);//david  
router.get('/productList', productsController.productList);//david
router.get('/products', productsController.products);//juli


module.exports = router;