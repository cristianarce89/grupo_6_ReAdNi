window.addEventListener("load", function () {
    const formulario = document.querySelector("form.formulario");

    // this.alert("mensaje de prueba creacion de productos")

    formulario.addEventListener("submit", function (e) {
        // e.preventDefault();

        let errores = [];

        const name = document.querySelector("input#name");
        const description = document.querySelector("input#description");
        const priceAnt = document.querySelector("input#priceAnt");
        const price = document.querySelector("input#price");
        const discount = document.querySelector("input#discount");
        const ranking = document.querySelector("input#ranking");
        const color = document.querySelector("input#color");
        const category = document.querySelector("select#category");
        const size = document.querySelector("select#size");
        const market = document.querySelector("select#market");


        //campo name
        if (name.value == "") {
            errores.push("El campo de nombre debe de estar completo");
        } else if (name.value.length < 5) {
            errores.push("El campo de nombre debe tener al menos 5 caracteres");
        }

        //campo description

        if (description.value == "") {
            errores.push("El campo de descripcion debe de estar completo");
        }

        //campo priceAnt

        if (priceAnt.value == "") {
            errores.push("El campo de precio anterior debe de estar completo")
        } 

         //campo price

        if (price.value == "") {
            errores.push("El campo de precio actual debe de estar completo")
        } 

        //campo discount

        if (discount.value == "") {
            errores.push("El campo de descuento debe de estar completo")
        } else if (discount.value.length > 99) {
            errores.push("El descuento debe tener minimo 2 caracteres")
        }

        //campo ranking

        if (ranking.value == "") {
            errores.push("El campo de ranking debe de estar completo")
        } else if (ranking.value.length > 5) {
            errores.push("El valor en estrellas debe ser de (1 a 5)")
        }

        //campo color

        if (color.value == "") {
            errores.push("El campo de color debe de estar completo")
        }


        //campo category
        if (category.value == "") {
            errores.push("Debes seleccionar una categoria")
        }

        //campo size
        if (size.value == "") {
            errores.push("Debes seleccionar una talla")
        }

        //campo market
        if (market.value == "") {
        errores.push("Debes seleccionar una marca de calzado")
        }

        //campo imagen

        const imagen = document.querySelector("button#boton_add");

        let extensionesValidas = ".png, .gif, .jpeg, .jpg";
        let ruta = imagen.value;
        let extension = ruta.substring(ruta.lastIndexOf('.') + 1).toLowerCase();
        let extensionValida = extensionesValidas.indexOf(extension);

        if (imagen.value == "") {
            errores.push("debes cargar una imagen de perfil")
        } 
    
        if(extensionValida < 0) {
                errores.push('La extensión no es válida Su fichero tiene de extensión: .'+ extension);
            }

        //agregando validaciones en el array vacio
        if (errores.length > 0) {

        let h5Errores = document.querySelector("div.errores h5")
        for (let i = 0; i < errores.length; i++) {
            h5Errores.innerHTML += "<li>" + "<br>" + "X)" + errores[i] + "</li>"
            }
        }
    });
});