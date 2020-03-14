const slug = require('slug');
var mysql = require('mysql');

exports.proyectosHome =  (req, res) => {  
  
    res.render('index.ejs',
    {
    });
}

//aqui iria conexion solo se cambia el res.render y tienes vista nueva

