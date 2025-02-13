var mysql = require('mysql2');

const database = {
    host: 'database-facturacion',
    database: 'Facturacion_DB',
    user: 'root',
    password: ''
}

let conexion;

function handleDisconnect() {
    conexion = mysql.createConnection(database);

    conexion.connect(function(err) {
        if (err) {
            console.error('🔴 Error al conectar a la base de datos _1er:', err);
            setTimeout(handleDisconnect, 10000); // Vuelve a intentar la conexión después de 2 segundos
        } else {
            console.log(`🟢 Conexion con la base de datos ${database.database} fue exitosa`);
        }
    });

    conexion.on('error', function(err) {
        setTimeout(() => {
            console.error('🔴 Error en la conexion a la base de datos _2do:', err);
            if (err) {
                handleDisconnect(); // Reconecta automáticamente en caso de desconexión
            } else {
                throw err;
            } 
        }, 2000);
    });
}

handleDisconnect();

process.on('SIGINT', () => {
    console.log(`🔴 Se cerro la conexion con la base de datos exitosamente`);
    conexion.end(err => {
        if (err) {
            console.error('🔴 Error al cerrar la conexion:', err);
        }
        process.exit();
    });
});

module.exports = conexion;
