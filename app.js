const express = require('express')
const mysql = require('mysql')

const bodyParser = require('body-parser')
const PORT = process.env.PORT || 3050

const app = express()

app.use(bodyParser.json())


const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'mascotas_y_mascotas'
})

app.get('/', (req, res) => {
    const sql = 'SELECT * FROM `mascota` WHERE (`adopcion` = 2)'
    connection.query(sql, (error, results) => {
        if (error) throw error
        if (results.length > 0 ){
            res.json(results)
        } else {
            res.send('no existen datos')
        }
    })
})

connection.connect(error => {
    if (error) throw error;
    console.log('Base de datos corriendo')
})
app.listen(PORT, () => console.log(`Servidor en ejecución en el puerto ${PORT}`))