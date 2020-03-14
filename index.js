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
  con.query("select * from proyectos as pro join categoria as cat on pro.id=cat.id_proyectos ", function (err, result) {
  app.get("/generateReport", (req, res) => {
    ejs.renderFile(path.join(__dirname, './views/', "report-template.ejs"), {result: result}, (err, data) => {
    if (err) {
          res.send(err);
    } else {
        let options = {
            "height": "11.25in",
            "width": "8.5in",
            "header": {
                "height": "20mm",
            },
            "footer": {
                "height": "20mm",
            },
        };
        pdf.create(data, options).toFile("report.pdf", function (err, data) {
            if (err) return console.log(err);
        var file= 'report.pdf';
        fs.readFile(file,function(err,data){
            res.contentType("application/pdf");
            res.send(data);
            fs.unlinkSync('report.pdf')

        });
        });
    }
});
})
})
})

    

app.listen(7000);
