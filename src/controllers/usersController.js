const path = require('path');
// const fs = require('fs');
// const bcrypt = require('bcryptjs');
// const multer = require('multer');

const usersController = {
    login: (req, res) => {
        res.render(path.resolve(__dirname, '../views/usuarios/login'));
    },
    register: (req,res) => {
        res.render(path.resolve(__dirname, '../views/usuarios/register'));
    }
}

module.exports = usersController;
