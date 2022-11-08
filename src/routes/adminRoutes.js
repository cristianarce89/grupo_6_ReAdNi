const express = require('express');
const router = express.Router();
const path = require('path');
const multer = require('multer')

const adminController = require('../controllers/adminController');

// indicamos en este apartado para guardar archivos con multer el nombre y donde guardarlo
var storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, path.resolve(__dirname, '../../public/images/products'));
    },
    filename: function (req, file, cb) {
        cb(null, 'TenisReeadni-' + Date.now() + path.extname(file.originalname))
    }
})
const upload = multer({storage})

// const multer = require('multer'),
//     storage =  multer.diskStorage({
//         destination: (req, file, cb)=>{
//             cb(null, path.join('public','images','products'))
//         },
//         filename: (req, file, cb)=>{
//             cb(null, file.originalname)
//         }
//     })

// const upload = multer({storage:storage})
//------------------------------------------------------------------

router.get('/admin', adminController.admin);
router.get('/productCreate', adminController.productCreate);
router.post('/productCreate', upload.any(),adminController.save);
// router.get('/admin/detailProduct/:id', adminController.ver)

module.exports = router;
