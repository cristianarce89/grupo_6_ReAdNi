const path = require('path');
const db = require('../database/models')
const sequelize = db.sequelize;
const {op} = require('sequelize')

const Products = db.Product;
// console.log('esta es una prueba en el controllador ' + Products) // aca sale: esta es una prueba en el controllador class extends Model {}

const adminController = {
    list: (req, res) => {
        Products.findAll()
        .then(products => {
            res.render('admin/administrador', {products})             
        })        
    },

    new: (req, res) => {
        res.render('productos/productCreate');
    },

    detail: (req,res) => {
        Products.findByPk(req.params.id)
        .then(products => {
            res.render('productos/productDetail', {products})
        })
    },
    
    //CRUD
    edit: (req,res) => {
        Products.findByPk(req.params.id)
        .then(products => {
            res.render('productos/productEdit', {products})
        })
        .catch(error => res.send(error));
    },

    create: (req,res) => {
        Products.create ({
            ...req.body
        })       
        .then(() => {
            res.redirect('/administrar');
        })           
        .catch(error => res.send(error))
    },

    update: (req,res) => {
        const id= req.params.id;
        Products.update( 
            {
            name: req.body.name,
            description: req.body.description,
            priceAnt: req.body.priceAnt,
            price: req.body.price,
            discount: req.body.discount,
            ranking: req.body.ranking,
            color: req.body.color,
            category: req.body.category,
            size: req.body.size,
            market: req.body.id_market,
            // imagen: req.body.id.imagen
        }, 
        {where: {idProduct: id}})
            .then(products => {
                res.redirect('/administrar')
            })
            .catch(error => res.send(error));
    },
    
    destroy: (req, res) => {
        const id= req.params.id;
        Products.destroy({where:{ idProduct : id}})
        .then(() => {
            res.redirect('/administrar');          
        })
        .catch(error => res.send(error))
    }
} 
module.exports = adminController;








    // Products.create(
    //     {
    //         name: req.body.name,
    //         description: req.body.description,
    //         priceAnt: parseInt(req.body.priceAnt, 10),
    //         price: parseInt(req.body.price, 10),
    //         discount: parseInt(req.body.discount, 10),
    //         ranking: parseInt(req.body.ranking, 10),
    //         color: req.body.color,
    //         category: req.body.category,
    //         size: parseInt(req.body.size, 10),
    //         market: req.body.id_market,
    //         imagen: req.body.id.imagen
    //     }
    // )




//METODO CRUD CON JSON

    // admin: (req,res) => {
    //     //llamo el objeto json y lo paso de un string a un objeto literal
    //     let productos = JSON.parse(fs.readFileSync(path.resolve(__dirname, '../database/productos.json'))); 
    //     res.render(path.resolve(__dirname, '../views/admin/administrador'), {productos});
    // },
    
    // productCreate: (req,res) => {
    //     let productos = JSON.parse(fs.readFileSync(path.resolve(__dirname, '../database/productos.json'))); 
    //     res.render(path.resolve(__dirname, '../views/productos/productCreate'), {productos});
    // },
    // save: (req,res) => {
    //     let productos = JSON.parse(fs.readFileSync(path.resolve(__dirname, '../database/productos.json')));
    //     let ultimoProducto = productos.pop();
    //     productos.push(ultimoProducto);
    //     console.log(req.body);
    //     console.log(req.file);
    //     let nuevoProducto = {
    //         id: parseInt(ultimoProducto.id + 1),
    //         nombre: req.body.nombre,
    //         descripcion: req.body.descripcion,
    //         precioAnt: req.body.precioAnt,
    //         precio: req.body.precio,
    //         descuento: req.body.descuento,
    //         ranking: req.body.ranking,
    //         color: req.body.color,
    //         categoria: req.body.categoria,
    //         talla: req.body.talla,
    //         marca: req.body.marca,
    //         imagen: req.file.filename
    //     }
    //     productos.push(nuevoProducto);
    //     let nuevoProductoGuardar = JSON.stringify(productos,null,2) //aca se guarda esa informacion de una manera organizada con el null y 2
    //     fs.writeFileSync(path.resolve(__dirname, '../database/productos.json'), nuevoProductoGuardar); //writeFileSync me permite guardar el archvio
    //     res.redirect('/admin');
    // },
    // ver: (req,res) => {
    //     let productos = JSON.parse(fs.readFileSync(path.resolve(__dirname, '../database/productos.json')));
    //     let miProducto;
    //     productos.forEach(producto =>{
    //         if(producto.id == req.params.id){
    //             miProducto = producto;
    //         }
    //     });
    //     res.render(path.resolve(__dirname, '../views/productos/productDetail'), {miProducto})
    // },
    // edit: (req,res) => {
    //     let productos = JSON.parse(fs.readFileSync(path.resolve(__dirname, '../database/productos.json')));
    //     const productosId = req.params.id;
    //     let productoEditar = productos.find(producto => producto.id == productosId);
    //     res.render (path.resolve(__dirname, '../views/productos/productEdit'), {productoEditar});
    // },
    // update: (req,res) => {
    //     let productos = JSON.parse(fs.readFileSync(path.resolve(__dirname, '../database/productos.json')));
    //     req.body.id = req.params.id;
    //     req.body.imagen = req.file ? req.file.filename : req.body.oldImagen;

        //si la info es igual haga lo del if

    //     let productosUpdate = productos.map(producto => {
    //         if(producto.id == req.body.id){
    //             return producto = req.body;
    //         }
    //         return producto;
    //     })
    //     let productoActualizar = JSON.stringify(productosUpdate,null,2);
    //     fs.writeFileSync(path.resolve(__dirname, '../database/productos.json'), productoActualizar);
    //     res.redirect('/admin')
    // },
    // delete: (req,res) =>{
    //     let productos = JSON.parse(fs.readFileSync(path.resolve(__dirname, '../database/productos.json')));
    //     const productoDelete = req.params.id;
    //     const productosFinal = productos.filter(producto => producto.id != productoDelete);
    //     let productosGuardar = JSON.stringify(productosFinal,null,2)
    //     fs.writeFileSync(path.resolve(__dirname, '../database/productos.json'), productosGuardar); //writeFileSync me permite guardar el archvio
    //     res.redirect('/admin');
    // }
// }

