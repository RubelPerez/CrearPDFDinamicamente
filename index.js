const express = require('express');
const routes = require ('./routes');
const path = require('path');
let ejs = require("ejs");
let pdf = require("html-pdf");
var mysql = require('mysql');
var fs = require('fs');

//conexion dbs


const app = express();
const bodyParser = require('body-parser');
app.use(express.static('public'));
app.set('View engine','ejs');
app.set('views', path.join(__dirname, './views'));
app.use(bodyParser.urlencoded({extended:true}));
app.use('/', routes() );
//views
  // Parámetros de conexión a la base de datos.
  var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database : 'tasker'
  });

  con.connect(function(err) {
  if (err) throw err;
  con.query("select * from proyectos as pro join categoria as cat on pro.id=cat.id_proyectos", function (err, result) {
    app.get("/MiPDF", (req, res) => {
    ejs.renderFile(path.join(__dirname, './views/', "report-template.ejs"), {result: result}, (err, data) => {
    if (err) {
          res.send(err);
    } else {
        let options = {
            "format": "Letter",        // allowed units: A3, A4, A5, Legal, Letter, Tabloid
     "orientation": "portrait", // portrait or landscape
 
            "border": {
                "top": "1cm",            // default is 0, units: mm, cm, in, px
                "right": "1mm",
                "bottom": "1cm",
                "left": "1.5mm"
              },   
        }
        pdf.create(data,options).toBuffer(function (err, buffer) {
            if (err) return res.send(err);
            res.type('pdf');
            res.end(buffer, 'binary');
        });
    }
});
})
})
})

    

app.listen(7000);
