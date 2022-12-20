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

router.get('/administrar', adminController.list)

router.get('/administrar/productCreate', adminController.new);
router.post('/administrar/productCreate'/* ,upload.single('imagen') */, adminController.create);

router.get('/administrar/productDetail/:id', adminController.detail);
router.get('/administrar/productEdit/:id', adminController.edit);

// router.get('/admin/productEdit/:id', adminController.edit);
// router.post('/admin/productEdit/:id', upload.single('imagen'),adminController.update);
// router.get('/admin/productDelete/:id', adminController.delete);

module.exports = router;
