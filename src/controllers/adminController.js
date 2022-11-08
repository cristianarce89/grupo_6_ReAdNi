const path = require('path');
const fs = require('fs');

const adminController = {
    admin: (req,res) => {
        //llamo el objeto json y lo paso de un string a un objeto literal
        let productos = JSON.parse(fs.readFileSync(path.resolve(__dirname, '../database/productos.json'))); 
        res.render(path.resolve(__dirname, '../views/admin/administrador'), {productos});
    },
    productCreate: (req,res) => {
        let productos = JSON.parse(fs.readFileSync(path.resolve(__dirname, '../database/productos.json'))); 
        res.render(path.resolve(__dirname, '../views/productos/productCreate'), {productos});
    },
    save: (req,res) => {
        let productos = JSON.parse(fs.readFileSync(path.resolve(__dirname, '../database/productos.json')));
        let ultimoProducto = productos.pop();
        productos.push(ultimoProducto);
        console.log(req.files[0]);
        let nuevoProducto = {
            id: (ultimoProducto.id +1),
            nombre: req.body.nombre,
            descripcion: req.body.descripcion,
            precio: req.body.precio,
            descuento: req.body.descuento,
            categoria: req.body.categoria,
            talla: req.body.talla,
            marca: req.body.marca,
            imagen: req.body.imagen
        }
        productos.push(nuevoProducto);
        let nuevoProductoGuardar = JSON.stringify(productos,null,2) //aca se guarda esa informacion de una manera organizada con el null y 2
        fs.writeFileSync(path.resolve(__dirname, '../database/productos.json'), nuevoProductoGuardar); //writeFileSync me permite guardar el archvio
        res.redirect('/admin');
    }
    // ver: (req,res) => {
    //     let productos = JSON.parse(fs.readFileSync(path.resolve(__dirname, '../database/productos.json')));
    //     let miProducto;
    //     productos.forEach(producto =>{
    //         if(producto.id == req.params.id){
    //             miProducto = producto;
    //         }
    //     });
    //     res.render(path.resolve(__dirname, '../views/admin/detailProduct'), {miProducto})
    // }
}

module.exports = adminController;