const express = require('express');
const router = express.Router();
const multer = require('multer')
const path = require('path');

const adminController = require('../../controllers/api/adminController');


router.get('/administrar', adminController.list)//juli
router.get('/administrar/productDetail/:id', adminController.detail);//fabio



module.exports = router;