const express = require('express');
const router = express.Router();
var mysql = require('mysql');
//express validator
const {body} = require ('express-validator');
const ProyectoController = require ('../controllers/ProyectoController');


//modificar aqui para enrutar
module.exports = function()
{  //lo que este en el get se mostrara en el exports.proyectosHome
   
    router.get('/', ProyectoController.proyectosHome );
    return router;
}