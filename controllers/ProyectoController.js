const slug = require('slug');
var mysql = require('mysql');
const knex = require('knex')(require('../config/db.js'))

exports.proyectosHome =  (req, res) => {    

knex.select()
    .from('proyectos')
    .then(function(schools){
        knex.select()
        .from('categoria')
        .then(function(students) {
            res.render('index.ejs', {
                students: students,
                schools: schools
            });
        });
    }).catch(function(error) {
        console.log(error);
    });}

//aqui iria conexion solo se cambia el res.render y tienes vista nueva

