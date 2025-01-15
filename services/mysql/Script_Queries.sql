
-- //////////////////////////
--        Queries 📌
-- /////////////////////////

SELECT * FROM tipo_persona;
SELECT * FROM datos_persona inner join tipo_persona on fk_tipo_persona = id_tipo_persona order by id_persona DESC;
SELECT * FROM usuarios;
SELECT u.alias, dp.*, z.zona
FROM usuarios u
INNER JOIN datos_persona dp ON pfk_usuario = id_persona
INNER JOIN zonas_ventas z ON id_zona = fk_zona_venta
;

SELECT * FROM zonas_ventas;

SELECT * FROM categorias;
SELECT * FROM productos;


-- FACTURA 1RA PARTE
SELECT * FROM facturas;

SELECT f.cod_factura, f.fecha_registro, dp.* FROM facturas f
INNER JOIN datos_persona dp ON id_persona = fk_cliente
ORDER BY cod_factura
;

-- FACTURA 2DA PARTE
SELECT * FROM detalle_factura;

select df.fk_factura, c.categoria, p.nombre_producto, p.precio_producto, df.cantidad, df.subtotal_producto
from detalle_factura df
inner join productos p on fk_producto = cod_producto
left join categorias c on categoria = fk_categoria
inner join facturas f on cod_factura =  fk_factura
ORDER BY f.cod_factura
;

-- FACTURA 3RA PARTE
SELECT * FROM estado_pago_factura;

SELECT * FROM abonos_factura;

SELECT fk_factura, group_concat(metodo_pago) as metodos_pago, group_concat(fecha_abono), sum(valor_abono) as pago_abonos FROM abonos_factura
group by fk_factura
;

-- Queries para conocer el valor TOTAL de una o varias facturas
select fk_factura, SUM(subtotal_producto) as total_factura from detalle_factura group by fk_factura;

select fk_factura, SUM(subtotal_producto) as total_factura from detalle_factura where fk_factura = 1010;

-- Query para verificar valor total de factura vs pago en abonos 📌
SELECT fk_factura, epf.numero_abonos, group_concat(metodo_pago) as metodos_pago_usados, group_concat(fecha_abono) as fechas_de_abono, epf.subtotal, epf.total, sum(valor_abono) as pago_abonos
FROM abonos_factura af
INNER JOIN estado_pago_factura epf ON pfk_factura = fk_factura
where fk_factura < 1025
group by fk_factura
;

-- Query para resumen de factura en la sección de pagos 📌
SELECT f.cod_factura, concat(dp.nombre_1,' ',dp.apellido_1) as cliente, dp.n_identificacion, sum(df.cantidad) as cant_productos, SUM(df.subtotal_producto) as subtotal
FROM facturas f
INNER JOIN datos_persona dp ON id_persona = fk_cliente
INNER JOIN detalle_factura df ON fk_factura = cod_factura
GROUP BY df.fk_factura
order by cod_factura
;
SELECT * FROM facturas
where fecha_registro between '2024-01-01' and '2024-01-31';

-- Query para conocer la cantidad de ventas por vendedor 📌 (card vendedor frontend)
select
fk_vendedor,
u.alias,
concat(dpv.nombre_1,' ',dpv.apellido_1) as vendedor,
fk_zona_venta,
z.zona,
count(cod_factura) as ventas
from facturas
INNER JOIN usuarios u ON u.pfk_usuario = fk_vendedor
INNER JOIN datos_persona dpv ON dpv.id_persona = fk_vendedor
INNER JOIN zonas_ventas z ON fk_zona_venta = z.id_zona
where fecha_registro between '2024-01-01' and '2024-01-31' -- Ene
-- where fecha_registro between '2024-02-01' and '2024-02-29' -- Feb
-- where fecha_registro between '2024-03-01' and '2024-03-30' -- Mar
-- where fecha_registro between '2024-04-01' and '2024-04-30' -- Abr
group by fk_vendedor
;

SELECT * FROM facturas;


-- Query para listado de las ventas por vendedor y fecha📌
SELECT 
	f.cod_factura, 
	f.fecha_registro, 
    dpc.n_identificacion,
    concat(dpc.nombre_1,' ', dpc.apellido_1) as cliente,
    fk_vendedor,
    concat(dpv.nombre_1,' ',dpv.apellido_1) as vendedor,
    epf.total,
    epf.numero_abonos,
    epf.pago_total	
FROM facturas f
INNER JOIN datos_persona dpc ON dpc.id_persona = fk_cliente
INNER JOIN datos_persona dpv ON dpv.id_persona = fk_vendedor
INNER JOIN estado_pago_factura epf on epf.pfk_factura = f.cod_factura
-- WHERE fk_vendedor = 4 and fecha_registro between '2024-03-01' and '2024-03-30'
WHERE cod_factura = 1010
ORDER BY cod_factura
;

-- Query relacion de ventas - vendedor
SELECT 
	f.cod_factura, 
	f.fecha_registro, 
    dpc.n_identificacion,
    concat(dpc.nombre_1,' ', dpc.apellido_1) as cliente,
    fk_vendedor,
    concat(dpv.nombre_1,' ',dpv.apellido_1) as vendedor,
    epf.total,
    epf.numero_abonos,
	epf.pago_total,
    (epf.total - sum(valor_abono)) as saldo,
    sum(valor_abono) as pago_abonos,
    group_concat(metodo_pago) as metodos_pago_usados, 
group_concat(fecha_abono) as fechas_de_abono, 
group_concat(valor_abono) as valor_abonos
FROM facturas f
INNER JOIN datos_persona dpc ON dpc.id_persona = fk_cliente
INNER JOIN datos_persona dpv ON dpv.id_persona = fk_vendedor
INNER JOIN estado_pago_factura epf on epf.pfk_factura = f.cod_factura
LEFT JOIN abonos_factura af ON af.fk_factura = epf.pfk_factura
WHERE fk_vendedor = 4 and fecha_registro between '2024-05-01' and '2024-05-30'
GROUP BY cod_factura
ORDER BY cod_factura 
;


-- Query para estado de pago por factura(s) 📌 
-- 📍 la fecha es con base a la creación de la factura y no del abono
-- 📍 para que una factura se considere a paz y salvo deber tener pago_total=True y pago_abonos = total de la factura
SELECT 
fk_factura, 
epf.numero_abonos, 
group_concat(metodo_pago) as metodos_pago_usados, 
group_concat(fecha_abono) as fechas_de_abono, 
group_concat(valor_abono) as valor_abonos,
epf.subtotal, 
epf.total, 
(epf.total - sum(valor_abono)) as saldo,
sum(valor_abono) as pago_abonos,
epf.pago_total
FROM abonos_factura af
INNER JOIN estado_pago_factura epf ON pfk_factura = fk_factura
INNER JOIN facturas f ON epf.pfk_factura = f.cod_factura
-- WHERE f.fecha_registro between '2024-01-01' and '2024-01-31' and pago_total = 1
where pago_total = 0
GROUP BY fk_factura
-- HAVING saldo < 0
;

#------------------------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------------------
-- +Endpoint que traiga datos de usuario (nombres, zona, alias, identificacion) relacionadas con el numero de ventas, ventas saldadas y ventas pendientes.
select
fk_vendedor,
u.alias,
dpv.n_identificacion,
concat(dpv.nombre_1,' ',dpv.apellido_1) as vendedor,
fk_zona_venta,
z.zona,
count(cod_factura) as ventas_realizadas,
sum(epf.pago_total) as facturas_saldadas,
(count(cod_factura) - sum(epf.pago_total)) as facturas_pendientes
from facturas
INNER JOIN usuarios u ON u.pfk_usuario = fk_vendedor INNER JOIN datos_persona dpv ON dpv.id_persona = fk_vendedor INNER JOIN zonas_ventas z ON fk_zona_venta = z.id_zona
INNER JOIN estado_pago_factura epf ON epf.pfk_factura = cod_factura -- JOIN abonos_factura af ON af.fk_factura = epf.pfk_factura
-- where fecha_registro between '2024-01-01' and '2024-01-31'
group by fk_vendedor
order by fk_vendedor
;


-- +Endpoint que traiga datos de clientes (nombres, zona, identificacion, tipo id, correo, celular) relacionadas con el numero de facturas, ventas saldadas y ventas pendientes.
SELECT 
    id_persona, n_identificacion, fk_tipo_identificacion, CONCAT(nombre_1,'',apellido_1) as cliente, correo, telefono, z.zona,
	count(cod_Factura) as facturas_cliente,
	sum(epf.pago_total) as facturas_saldadas,
    (count(cod_Factura) - sum(epf.pago_total)) as facturas_pendientes
FROM datos_persona dp  
INNER JOIN zonas_ventas z ON fk_zona_venta = z.id_zona
INNER JOIN facturas f ON f.fk_cliente = id_persona
INNER JOIN estado_pago_factura epf ON epf.pfk_factura = cod_factura
WHERE fk_tipo_persona = 1
GROUP BY fk_cliente
ORDER BY id_persona
;

-- + Endpoint de montos (valores totales de factura sumados) por vendedor y filtrado de fecha
select
fk_vendedor,
u.alias,
concat(dpv.nombre_1,' ',dpv.apellido_1) as vendedor,
fk_zona_venta,
z.zona,
count(cod_factura) as ventas,
sum(epf.total) as monto_vendido
from facturas
INNER JOIN estado_pago_factura epf ON epf.pfk_factura = cod_factura
INNER JOIN usuarios u ON u.pfk_usuario = fk_vendedor
INNER JOIN datos_persona dpv ON dpv.id_persona = fk_vendedor
INNER JOIN zonas_ventas z ON fk_zona_venta = z.id_zona
-- where fecha_registro between '2024-02-01' and '2024-02-29'
group by fk_vendedor
order by fk_vendedor
;

-- + Endpoint de relacion ventas-cobros por vendedor que devuelva: 
-- (alias, nombre vendedor, zona, numero de ventas, numero de ventas saldadas, 
-- monto del total de las facturas agrupadas, monto abonado de las facturas agrupadas

SELECT
    v.fk_vendedor,
    v.alias,
    v.n_identificacion,
    v.vendedor,
    v.fk_zona_venta,
    v.zona,
    v.ventas_realizadas,
    v.facturas_saldadas,
    v.facturas_pendientes,
    v.total_facturas,
    COALESCE(a.pago_abonos, 0) as pago_abonos,
    (v.total_facturas - a.pago_abonos) as saldo_pendiente
FROM (
    SELECT
		-- group_concat(fecha_registro) as fecha_registro,
        fk_vendedor,
        u.alias,
        dpv.n_identificacion,
        concat(dpv.nombre_1,' ',dpv.apellido_1) as vendedor,
        fk_zona_venta,
        z.zona,
        count(cod_factura) as ventas_realizadas,
        sum(epf.pago_total) as facturas_saldadas,
        (count(cod_factura) - sum(epf.pago_total)) as facturas_pendientes,
        sum(total) as total_facturas
    FROM facturas
    INNER JOIN usuarios u ON u.pfk_usuario = fk_vendedor
    INNER JOIN datos_persona dpv ON dpv.id_persona = fk_vendedor
    INNER JOIN zonas_ventas z ON fk_zona_venta = z.id_zona
    INNER JOIN estado_pago_factura epf ON epf.pfk_factura = cod_factura
    -- WHERE fecha_registro between '2024-01-01' and '2024-01-31'
    GROUP BY fk_vendedor
) v
LEFT JOIN (
    SELECT 
        f.fk_vendedor,
        sum(af.valor_abono) as pago_abonos
    FROM abonos_factura af
    INNER JOIN estado_pago_factura epf ON af.fk_factura = epf.pfk_factura
    INNER JOIN facturas f ON f.cod_factura = epf.pfk_factura
    -- WHERE fecha_registro between '2024-01-01' and '2024-01-31'
    GROUP BY f.fk_vendedor
) a ON v.fk_vendedor = a.fk_vendedor
ORDER BY v.fk_vendedor;

-- fk_vendedor, alias, n_identificacion, vendedor, fk_zona_venta, zona, ventas_realizadas, facturas_saldadas, facturas_pendientes, total_facturas, pago_abonos, saldo_pendiente
