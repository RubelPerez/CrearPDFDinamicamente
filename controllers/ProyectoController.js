const slug = require('slug');
var mysql = require('mysql');
var pdf
exports.proyectosHome =  (req, res) => {  
  
// Parámetros de conexión a la base de datos.
var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database : 'tasker'
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
  con.query("select * from proyectos", function (err, result) {
    if (err) throw err; 
    res.render('index.ejs',
    {
     result
    });
 
  })
});
}

//aqui iria conexion solo se cambia el res.render y tienes vista nueva

