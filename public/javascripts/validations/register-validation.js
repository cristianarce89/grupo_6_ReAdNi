window.addEventListener("load", function () {
    const formulario = document.querySelector("form.register");

    // this.alert("mensaje de prueba")

    formulario.addEventListener("submit", function (e) {
        // e.preventDefault();

        let errores = [];

        const name = document.querySelector("input#nombre");
        const email = document.querySelector("input#email");
        const password = document.querySelector("input#password");
        const repetir_password = document.querySelector("input#repetir_password");
        const cellphone = document.querySelector("input#cellphone");
        const direccion = document.querySelector("input#direccion");
        const aceptarTerminos = document.querySelector("input#aceptarTerminos");

        //campo name
        if (name.value == "") {
            errores.push("El campo de nombre debe de estar completo");
        } else if (name.value.length < 2) {
            errores.push("El campo de nombre completo debe tener al menos 2 caracteres");
        }

        //campo email
        const emailRegex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
        const email_arroba = email.value.indexOf("@");
        const email_punto = email.value.lastIndexOf(".");

        if (email.value == emailRegex) {
            errores.push("Alguno de los caracteres en el email no son validos")
        } else if (email.value == "") {
            errores.push("El campo de email debe de estar completo")
        } else if (email_arroba < 1 || email_punto < email_arroba + 2 || email_punto + 2 >= email.length) {
            errores.push("Asegurese de que la direccion de correo electronico contega @ y .com");
        }

        //campo contraseña

        let validPassword = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])/;

        /*

        (?=.*[a-z]) Debe contener al menos una letra en minuscula
        (?=.*[A-Z]) Debe contener al menos una letra en mayuscula
        (?=.*[0-9]) Debe contener al menos un numero
        (?=.*[!@#\$%\^&\*]) Debe contener al menos un caracter especial

        */

        if (password.value == "") {
            errores.push("El campo de email debe de estar completo")
        } else if (password.value.length < 8) {
            errores.push("La constraseña ingresada debe tener al menos 8 caracteres")
        } /* else if(password.value !== (validPassword)){
            errores.push("La constraseña ingresada debe tener al menos una letra minuscula, mayuscula, numero y caracter especial")
        }  */

        //campo repetir - contraseña
        if (repetir_password.value == "") {
            errores.push("El campo de email debe de estar completo")
        } else if (repetir_password.value != password.value) {
            errores.push("La constraseña ingresada no es igual")
        }

        //campo cellphone

        let validarCellphone = /^\(? (\ d {3}) \)? [-]? (\ d {3}) [-]? (\ d {4}) $ /;

        /*
            / ^ \ (?: Una de las formas opcionales del número puede comenzar con un paréntesis abierto.
            (\ d {3}): Entonces debe incluir tres dígitos numéricos. Si no hay paréntesis, el número debe comenzar con estos dígitos, por ejemplo - (541 o 541.
            \) ?: Aqui se proporciona una opción para incluir un paréntesis cerrado.
            [-] ?: La cadena puede contener opcionalmente un guión después del paréntesis o después de los primeros tres dígitos.
            (\ d {3}): Entonces el número debe contener otros tres dígitos. Dependiendo de sus opciones anteriores, puede verse como (541) -753, 541-753 o 541753.
            [-] ?: Una vez más, puede incluir un guión opcional al final - (541) -753-, 541-753- o 541753-.
            (\ d {4}) $ /: Por último, la secuencia debe terminar con una secuencia de cuatro dígitos. Puede verse como (541) -753-6010, 541-753-6010, 541753-6010 o 541753-6010.
        */

        if (cellphone.value == "") {
            errores.push("El campo telefono debe de estar completo")
        }/* else if (cellphone.value != validarCellphone){
            errores.push("los caracteres del campo Telefono no son validos, se permite ( ) 0 - 9")
        } */

        //campo direccion
        if (direccion.value == "") {
            errores.push("El campo direccion debe de estar completo")
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

        //campo aceptar terminos
        if (aceptarTerminos.value == "") {
            errores.push("debes seleccionar aceptar los terminos")
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