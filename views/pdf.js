

con.query("select * from proyectos",function(err, result, rows){
    for (let i = 0; i < result.length; i++) {
        const element = result[i];
        
    }
const content = `
<h1>Reporte de proyectos</h1>
<p>${result.nombre}</p>
`;

pdf.create(content).toFile('./proyectos.pdf', function(err, res) {
    if (err){
        console.log(err);
    } else {
        console.log(res);
    }
});
})

