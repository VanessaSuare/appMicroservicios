const mysql = require("mysql2/promise");
const connection = mysql.createPool({
  host: "192.168.100.2",
  port: "32000",
  user: "root",
  password: "root",
  database: "almacen2",
});
async function traerProductos() {
  const result = await connection.query("SELECT * FROM productos");
  return result[0];
}

async function traerProducto(id) {
  const result = await connection.query(
    "SELECT * FROM productos WHERE id = ?",
    id
  );
  return result[0];
}
async function actualizarProducto(id, inventario) {
  const result = await connection.query(
    "UPDATE productos SET inventario = ? WHERE id = ?",
    [inventario, id]
  );
  return result;
}
async function crearProducto(nombre, precio, inventario) {
  const result = await connection.query(
    "INSERT INTO productos VALUES(null,?,?,?)",
    [nombre, precio, inventario]
  );
  return result;
}
module.exports = {
  traerProductos,
  traerProducto,
  actualizarProducto,
  crearProducto,
};
