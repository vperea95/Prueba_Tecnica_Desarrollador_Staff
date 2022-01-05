// punto 1 ---------------------------------------------------------------------------------------------------------
        function metodo(valor) {
            if (valor < 3) {
                return valor;
            }
            console.log(metodo)
            return metodo(valor - 1) * metodo(valor - 2)
        }
        //el resultado es 8      <--------------------------------------- RESULTADO


// punto 2 --------------------------------------------------------------------------------------------------------- 


        //opcion 1
        function Division(valor1, valor2) {
            var division = (valor1 / valor2)
            return division
        }

        //opcion 2

        const valorA = prompt('ingrese el primer numero ');
        const valorB = prompt('ingrese el segundo  numero ');

        const division = valorA / valorB
        alert(`El resultado de la division es: ${division}`)

// punto 3 --------------------------------------------------------------------------------------------------------- 

        const numero = 28
        var suma = 0

        for (i = 1; i <= numero; i++) {
            const resultado = (numero / i)
            if (numero % resultado === 0 && resultado != numero) {
                suma = suma + resultado

            }
        }
        if (suma != numero){
            console.log('El numero no es un entero perfecto')
        }else{
            console.log('El numero es un entero perfecto')
        }
       

// punto 4 ---------------------------------------------------------------------------------------------------------

        for (i = 1; i <= 100; i++) {
            console.log(`-----------------`)
            console.log(`numero: ${i}`)
            if (i % 5 == 0 && i % 3 == 0) {
                console.log(`FizzBuzz`)

            }
            else if (i % 3 == 0) {
                console.log(`Fizz`)
            }
            else if (i % 5 == 0) {
                console.log(`Buzz`)

            }
}

// punto 5 ----------------

        //Listar todas las mascotas.
        SELECT * FROM`mascota`
        // Listar las mascotas que no han sido adoptadas.
        SELECT * FROM`mascota` WHERE(`adopcion` = 2);
        //Listar el número de mascotas por cada tipo de mascota.
        SELECT descripcion, COUNT(*) FROM tipo_mascota,mascota WHERE idtipo_mascota=tipo_mascota GROUP BY tipo_mascota;
        //Listar el número de mascotas por cada tipo de mascota y por cada propietario.
        SELECT descripcion,nombre_propietario,COUNT(*) FROM tipo_mascota,mascota,propietario WHERE idtipo_mascota=tipo_mascota AND propietario=id_propietario GROUP BY tipo_mascota,nombre_propietario;
        //Listar los propietarios que tengan más de una mascota.
        SELECT if(COUNT(*)>1,nombre_propietario,"no tiene mas de una mascota") FROM mascota,propietario WHERE propietario=id_propietario GROUP BY nombre_propietario;