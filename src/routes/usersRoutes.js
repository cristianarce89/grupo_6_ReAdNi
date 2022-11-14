const express = require('express');
const router = express.Router();
const path = require('path');
const multer = require('multer')

const usersController = require('../controllers/usersController');;

// indicamos en este apartado para guardar archivos con multer el nombre y donde guardarlo
var storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, path.resolve(__dirname, '../../public/images/users'));
    },
    filename: function (req, file, cb) {
        cb(null, 'UsuariosReeadni-' + Date.now() + path.extname(file.originalname))
    }
})
const upload = multer({storage})
//------------------------------------------------------------------------------------

router.get('/users', usersController.users);
router.get('/login', usersController.login);
router.get('/register', usersController.register);
router.post('/register',upload.single('imagen'), usersController.save);
router.get('/users/ver/:id', usersController.ver);
router.get('/users/usersEdit/:id', usersController.edit);
router.post('/users/usersEdit/:id', upload.single('imagen'),usersController.update);

//---------------------------------------------------------------



module.exports = router;