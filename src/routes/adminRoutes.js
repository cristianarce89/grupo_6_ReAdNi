const express = require('express');
const router = express.Router();
const multer = require('multer')
const path = require('path');

const adminController = require('../controllers/adminController');

// indicamos en este apartado para guardar archivos con multer el nombre y donde guardarlo
const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, path.resolve(__dirname, '../../public/images/products'));
    },
    filename: function (req, file, cb) {
        cb(null, 'TenisReeadni-' + Date.now() + path.extname(file.originalname))
    }
})
const upload = multer({storage})
//------------------------------------------------------------------

router.get('/administrar', adminController.list)//juli
router.get('/administrar/productCreate', adminController.new);//fabio
router.post('/administrar/productCreate'/* ,upload.single('imagen') */, adminController.create);//juli
router.get('/administrar/productDetail/:id', adminController.detail);//fabio
router.get('/administrar/productEdit/:id', adminController.edit);//david
router.post('/administrar/update/:id', /* upload.any('imagen') */ adminController.update);//cristian
router.delete('/administrar/delete/:id', adminController.destroy);//cristian

module.exports = router;
