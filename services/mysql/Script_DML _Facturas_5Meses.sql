INSERT INTO facturas(fk_cliente, fecha_registro, fk_vendedor)
VALUES 
    (6, '2024-01-01', 2),
    (7, '2024-01-01', 5),
    (8, '2024-01-01', 3),
    (9, '2024-01-01', 4),
    (6, '2024-01-02', 2),
    (15, '2024-01-02', 3),
    (22, '2024-01-04', 4),
    (7, '2024-01-05', 2),
    (30, '2024-01-05', 5),
    (16, '2024-01-06', 3),
    (8, '2024-01-08', 2),
    (23, '2024-01-08', 4),
    (17, '2024-01-10', 3),
    (24, '2024-01-12', 4),
    (31, '2024-01-12', 5),
    (9, '2024-01-14', 2),
    (18, '2024-01-14', 3),
    (10, '2024-01-16', 2),
    (25, '2024-01-16', 4),
    (19, '2024-01-18', 3),
    (11, '2024-01-20', 2),
    (26, '2024-01-20', 4),
    (27, '2024-01-22', 4),
    (31, '2024-01-23', 5),
    (28, '2024-01-24', 4),
    (12, '2024-01-25', 2),
    (29, '2024-01-26', 4),
    (13, '2024-01-27', 2),
    (32, '2024-01-27', 5);

INSERT INTO detalle_factura(fk_factura, fk_producto, cantidad, subtotal_producto)
VALUES 
    (1010, 2, 1, (select precio_producto from productos where cod_producto = 2)),
    (1010, 5, 2, ((select precio_producto from productos where cod_producto = 5) * 2)),
    (1010, 6, 1, (select precio_producto from productos where cod_producto = 6)),
    (1011, 1, 1, (select precio_producto from productos where cod_producto = 1)),
    (1011, 9, 2, ((select precio_producto from productos where cod_producto = 9) * 2)),
    (1011, 12, 10, ((select precio_producto from productos where cod_producto = 12) * 10)),
    (1011, 25, 3, ((select precio_producto from productos where cod_producto = 25) * 3)),
    (1012, 43, 3, ((select precio_producto from productos where cod_producto = 43) * 3)),
    (1012, 39, 5, ((select precio_producto from productos where cod_producto = 39) * 5)),
    (1012, 17, 1, (select precio_producto from productos where cod_producto = 17)),
    (1012, 20, 13, ((select precio_producto from productos where cod_producto = 20) * 13)),
    (1013, 31, 3, ((select precio_producto from productos where cod_producto = 31) * 3)),
    (1013, 19, 1, (select precio_producto from productos where cod_producto = 19)),
    (1013, 28, 5, ((select precio_producto from productos where cod_producto = 28) * 5)),
    (1013, 3, 3, ((select precio_producto from productos where cod_producto = 3) * 3)),
    (1013, 21, 5, ((select precio_producto from productos where cod_producto = 21) * 5)),
    (1014, 1, 4, (select precio_producto from productos where cod_producto = 1) * 4),
    (1014, 14, 4, (select precio_producto from productos where cod_producto = 14) * 4),
    (1015, 2, 1, (select precio_producto from productos where cod_producto = 2)),
    (1015, 7, 1, (select precio_producto from productos where cod_producto = 7)),
    (1016, 3, 3, (select precio_producto from productos where cod_producto = 3) * 3),
    (1016, 16, 12, (select precio_producto from productos where cod_producto = 16) * 12),
    (1016, 21, 2, (select precio_producto from productos where cod_producto = 21) * 2),
    (1017, 4, 1, (select precio_producto from productos where cod_producto = 4)),
    (1017, 10, 3, (select precio_producto from productos where cod_producto = 10) * 3),
    (1017, 19, 8, (select precio_producto from productos where cod_producto = 19) * 8),
    (1017, 23, 6, (select precio_producto from productos where cod_producto = 23) * 6),
    (1017, 41, 2, (select precio_producto from productos where cod_producto = 41) * 2),
    (1018, 5, 2, (select precio_producto from productos where cod_producto = 5) * 2),
    (1018, 8, 3, (select precio_producto from productos where cod_producto = 8) * 3),
    (1018, 11, 1, (select precio_producto from productos where cod_producto = 11)),
    (1019, 9, 4, (select precio_producto from productos where cod_producto = 9) * 4),
    (1019, 13, 5, (select precio_producto from productos where cod_producto = 13) * 5),
    (1019, 25, 3, (select precio_producto from productos where cod_producto = 25) * 3),
    (1020, 15, 6, (select precio_producto from productos where cod_producto = 15) * 6),
    (1020, 22, 10, (select precio_producto from productos where cod_producto = 22) * 10),
    (1020, 26, 5, (select precio_producto from productos where cod_producto = 26) * 5),
    (1020, 30, 10, (select precio_producto from productos where cod_producto = 30) * 10),
    (1021, 31, 3, (select precio_producto from productos where cod_producto = 31) * 3),
    (1021, 33, 2, (select precio_producto from productos where cod_producto = 33) * 2),
    (1021, 35, 1, (select precio_producto from productos where cod_producto = 35)),
    (1021, 37, 2, (select precio_producto from productos where cod_producto = 37) * 2),
    (1022, 36, 10, (select precio_producto from productos where cod_producto = 36) * 10),
    (1022, 38, 4, (select precio_producto from productos where cod_producto = 38) * 4),
    (1022, 44, 5, (select precio_producto from productos where cod_producto = 44) * 5),
    (1022, 50, 1, (select precio_producto from productos where cod_producto = 50)),
    (1023, 40, 5, (select precio_producto from productos where cod_producto = 40) * 5),
    (1023, 42, 10, (select precio_producto from productos where cod_producto = 42) * 10),
    (1023, 45, 6, (select precio_producto from productos where cod_producto = 45) * 6),
    (1023, 47, 3, (select precio_producto from productos where cod_producto = 47) * 3),
    (1024, 48, 8, (select precio_producto from productos where cod_producto = 48) * 8),
    (1024, 49, 4, (select precio_producto from productos where cod_producto = 49) * 4),
    (1025, 32, 5, (select precio_producto from productos where cod_producto = 32) * 5),
    (1025, 34, 3, (select precio_producto from productos where cod_producto = 34) * 3),
    (1025, 46, 2, (select precio_producto from productos where cod_producto = 46) * 2),
    (1026, 24, 5, (select precio_producto from productos where cod_producto = 24) * 5),
    (1026, 27, 8, (select precio_producto from productos where cod_producto = 27) * 8),
    (1026, 29, 6, (select precio_producto from productos where cod_producto = 29) * 6),
    (1026, 39, 5, (select precio_producto from productos where cod_producto = 39) * 5),
    (1026, 50, 3, (select precio_producto from productos where cod_producto = 50) * 3),
    (1027, 12, 10, (select precio_producto from productos where cod_producto = 12) * 10),
    (1027, 20, 8, (select precio_producto from productos where cod_producto = 20) * 8),
    (1028, 16, 5, (select precio_producto from productos where cod_producto = 16) * 5),
    (1028, 18, 4, (select precio_producto from productos where cod_producto = 18) * 4),
    (1028, 22, 8, (select precio_producto from productos where cod_producto = 22) * 8),
    (1029, 26, 5, (select precio_producto from productos where cod_producto = 26) * 5),
    (1029, 28, 6, (select precio_producto from productos where cod_producto = 28) * 6),
    (1029, 30, 4, (select precio_producto from productos where cod_producto = 30) * 4),
    (1030, 31, 3, (select precio_producto from productos where cod_producto = 31) * 3),
    (1030, 32, 8, (select precio_producto from productos where cod_producto = 32) * 8),
    (1031, 33, 3, (select precio_producto from productos where cod_producto = 33) * 3),
    (1031, 34, 4, (select precio_producto from productos where cod_producto = 34) * 4),
    (1032, 40, 2, (select precio_producto from productos where cod_producto = 40) * 2),
    (1032, 41, 6, (select precio_producto from productos where cod_producto = 41) * 6),
    (1033, 42, 3, (select precio_producto from productos where cod_producto = 42) * 3),
    (1033, 43, 5, (select precio_producto from productos where cod_producto = 43) * 5),
    (1034, 45, 6, (select precio_producto from productos where cod_producto = 45) * 6),
    (1034, 46, 4, (select precio_producto from productos where cod_producto = 46) * 4),
    (1035, 47, 10, (select precio_producto from productos where cod_producto = 47) * 2),
    (1035, 48, 4, (select precio_producto from productos where cod_producto = 48) * 4),
    (1035, 49, 3, (select precio_producto from productos where cod_producto = 49) * 3),
    (1036, 49, 3, (select precio_producto from productos where cod_producto = 49) * 3),
    (1036, 50, 2, (select precio_producto from productos where cod_producto = 50) * 2),
    (1037, 20, 3, (select precio_producto from productos where cod_producto = 20) * 3),
    (1037, 22, 8, (select precio_producto from productos where cod_producto = 22) * 8),
    (1038, 23, 4, (select precio_producto from productos where cod_producto = 23) * 4),
    (1038, 25, 5, (select precio_producto from productos where cod_producto = 25) * 5),
    (1038, 27, 2, (select precio_producto from productos where cod_producto = 27) * 2);

INSERT INTO estado_pago_factura (pfk_factura, iva_aplicado, subtotal, total, pago_total, numero_abonos)
VALUES 
    (1010, 19, 184900, 220031, true, 1),
    (1011, 19, 244080, 290455, true, 3),
    (1012, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1012), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),
    (1013, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1013), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 4),
    (1014, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1014), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),
    (1015, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1015), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),
    (1016, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1016), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),
    (1017, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1017), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),
    (1018, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1018), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 4),
    (1019, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1019), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),
    (1020, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1020), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),
    (1021, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1021), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),
    (1022, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1022), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),
    (1023, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1023), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 4),
    (1024, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1024), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),
    (1025, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1025), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),
    (1026, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1026), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),
    (1027, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1027), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 4),
    (1028, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1028), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),
    (1029, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1029), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),
    (1030, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1030), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),
    (1031, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1031), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),
    (1032, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1032), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),
    (1033, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1033), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),
    (1034, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1034), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),
    (1035, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1035), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),
    (1036, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1036), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),
    (1037, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1037), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),
    (1038, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1038), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 4);

INSERT INTO abonos_factura (fk_factura, metodo_pago, valor_abono, fecha_abono)
VALUES
    (1010, 'Tarjeta', 220031, '2024-01-01'),
    (1011, 'Efectivo', 110000, '2024-01-01'),
    (1011, 'Digital', 85000, '2024-01-09'),
    (1011, 'Efectivo', 95455, '2024-01-15'),
    (1012, 'Digital', 100000, '2024-01-01'),
    (1012, 'Digital', 65172, '2024-01-10'),
    (1013, 'Efectivo', 155000, '2024-01-01'),
    (1013, 'Efectivo', 90500, '2024-01-11'),
    (1013, 'Digital', 122000, '2024-01-19'),
    (1013, 'Efectivo', 107905, '2024-01-26'),
    (1014, 'Efectivo', 194589, '2024-01-02'),
    (1015, 'Efectivo', 70000, '2024-01-02'),
    (1015, 'Digital', 46620, '2024-01-17'),
    (1016, 'Tarjeta', 26000, '2024-01-04'),
    (1016, 'Efectivo', 140000, '2024-01-19'),
    (1016, 'Digital', 98775, '2024-01-26'),
    (1017, 'Efectivo', 692580, '2024-01-05'),
    (1018, 'Digital', 20000, '2024-01-05'),
    (1018, 'Efectivo', 40000, '2024-01-10'),
    (1018, 'Efectivo', 40000, '2024-01-15'),
    (1018, 'Efectivo', 31114, '2024-01-20'),
    (1019, 'Efectivo', 141848, '2024-01-06'),
    (1020, 'Efectivo', 60000, '2024-01-08'),
    (1020, 'Tarjeta', 120000, '2024-01-13'),
    (1020, 'Digital', 82990, '2024-01-27'),
    (1021, 'Digital', 74000, '2024-01-08'),
    (1021, 'Efectivo', 49760, '2024-01-23'),
    (1022, 'Efectivo', 136255, '2024-01-10'),
    (1023, 'Digital', 50000, '2024-01-12'),
    (1023, 'Efectivo', 80000, '2024-01-17'),
    (1023, 'Efectivo', 80000, '2024-01-22'),
    (1023, 'Efectivo', 138670, '2024-01-27'),
    (1024, 'Efectivo', 190400, '2024-01-12'),
    (1025, 'Efectivo', 50000, '2024-01-14'),
    (1025, 'Digital', 32110, '2024-01-29'),
    (1026, 'Tarjeta', 29000, '2024-01-14'),
    (1026, 'Digital', 140000, '2024-01-29'),
    (1026, 'Efectivo', 114101, '2024-02-13'),
    (1027, 'Digital', 40000, '2024-01-16'),
    (1027, 'Efectivo', 60000, '2024-01-22'),
    (1027, 'Efectivo', 60000, '2024-01-27'),
    (1027, 'Efectivo', 102752, '2024-02-01'),
    (1028, 'Efectivo', 161840, '2024-01-16'),
    (1029, 'Efectivo', 120000, '2024-01-18'),
    (1029, 'Digital', 166790, '2024-01-27'),
    (1030, 'Digital', 70000, '2024-01-20'),
    (1030, 'Efectivo', 59710, '2024-02-04'),
    (1031, 'Efectivo', 68544, '2024-01-20'),
    (1032, 'Efectivo', 38000, '2024-01-22'),
    (1032, 'Digital', 25308, '2024-02-06'),
    (1033, 'Tarjeta', 10000, '2024-01-23'),
    (1033, 'Digital', 60000, '2024-02-02'),
    (1033, 'Efectivo', 37100, '2024-02-08'),
    (1034, 'Efectivo', 204680, '2024-01-24'),
    (1035, 'Efectivo', 90000, '2024-01-25'),
    (1035, 'Digital', 62320, '2024-02-09'),
    (1036, 'Efectivo', 120000, '2024-01-26'),
    (1036, 'Digital', 84680, '2024-02-10'),
    (1037, 'Efectivo', 79492, '2024-01-27'),
    (1038, 'Efectivo', 20000, '2024-01-27'),
    (1038, 'Digital', 20000, '2024-02-05'),
    (1038, 'Efectivo', 20000, '2024-02-12'),
    (1038, 'Efectivo', 26632, '2024-02-20');

INSERT INTO facturas(fk_cliente, fecha_registro, fk_vendedor)
VALUES
    (6, '2024-02-01', 2), 
    (15, '2024-02-02', 3),
    (22, '2024-02-03', 4),
    (7, '2024-02-03', 2), 
    (30, '2024-02-04', 5),
    (8, '2024-02-05', 2), 
    (16, '2024-02-06', 3),
    (23, '2024-02-07', 4),
    (9, '2024-02-08', 2), 
    (31, '2024-02-08', 5),
    (24, '2024-02-10', 4),
    (17, '2024-02-10', 3),
    (10, '2024-02-11', 2),
    (25, '2024-02-12', 4),
    (11, '2024-02-14', 2),
    (26, '2024-02-15', 4),
    (32, '2024-02-16', 5),
    (18, '2024-02-16', 3),
    (27, '2024-02-18', 4),
    (12, '2024-02-19', 2),
    (28, '2024-02-21', 4),
    (19, '2024-02-21', 3),
    (13, '2024-02-23', 2),
    (29, '2024-02-24', 4),
    (33, '2024-02-24', 5),
    (14, '2024-02-28', 2),
    (20, '2024-02-27', 3),
    (22, '2024-02-27', 4),
    (23, '2024-02-28', 4),
    (24, '2024-02-29', 4);

INSERT INTO detalle_factura(fk_factura, fk_producto, cantidad, subtotal_producto)
VALUES 
    (1039, 1, 4, (select precio_producto from productos where cod_producto = 1) * 4),
    (1039, 2, 2, (select precio_producto from productos where cod_producto = 2) * 2),
    (1040, 3, 3, (select precio_producto from productos where cod_producto = 3) * 3),
    (1040, 4, 1, (select precio_producto from productos where cod_producto = 4)),
    (1040, 5, 2, (select precio_producto from productos where cod_producto = 5) * 2),
    (1041, 6, 4, (select precio_producto from productos where cod_producto = 6) * 4),
    (1041, 7, 5, (select precio_producto from productos where cod_producto = 7) * 5),
    (1041, 8, 1, (select precio_producto from productos where cod_producto = 8)),
    (1041, 9, 5, (select precio_producto from productos where cod_producto = 9) * 5),
    (1042, 10, 5, (select precio_producto from productos where cod_producto = 10) * 5),
    (1042, 11, 1, (select precio_producto from productos where cod_producto = 11)),
    (1042, 12, 6, (select precio_producto from productos where cod_producto = 12) * 6),
    (1043, 13, 3, (select precio_producto from productos where cod_producto = 13) * 3),
    (1043, 14, 4, (select precio_producto from productos where cod_producto = 14) * 4),
    (1043, 15, 6, (select precio_producto from productos where cod_producto = 15) * 6),
    (1044, 16, 5, (select precio_producto from productos where cod_producto = 16) * 5),
    (1044, 17, 3, (select precio_producto from productos where cod_producto = 17) * 3),
    (1044, 18, 4, (select precio_producto from productos where cod_producto = 18) * 4),
    (1045, 19, 8, (select precio_producto from productos where cod_producto = 19) * 8),
    (1045, 20, 10, (select precio_producto from productos where cod_producto = 20) * 10),
    (1046, 21, 7, (select precio_producto from productos where cod_producto = 21) * 7),
    (1046, 22, 5, (select precio_producto from productos where cod_producto = 22) * 5),
    (1047, 23, 6, (select precio_producto from productos where cod_producto = 23) * 6),
    (1047, 24, 10, (select precio_producto from productos where cod_producto = 24) * 10),
    (1048, 25, 8, (select precio_producto from productos where cod_producto = 25) * 8),
    (1048, 26, 7, (select precio_producto from productos where cod_producto = 26) * 7),
    (1049, 27, 5, (select precio_producto from productos where cod_producto = 27) * 5),
    (1049, 28, 6, (select precio_producto from productos where cod_producto = 28) * 6),
    (1050, 29, 10, (select precio_producto from productos where cod_producto = 29) * 10),
    (1050, 30, 5, (select precio_producto from productos where cod_producto = 30) * 5),
    (1051, 31, 6, (select precio_producto from productos where cod_producto = 31) * 6),
    (1051, 32, 8, (select precio_producto from productos where cod_producto = 32) * 8),

    -- Factura 1052: Subtotal = 
    (1052, 33, 6, (select precio_producto from productos where cod_producto = 33) * 6),
    (1052, 34, 8, (select precio_producto from productos where cod_producto = 34) * 8),

    -- Factura 1053: Subtotal = 
    (1053, 35, 6, (select precio_producto from productos where cod_producto = 35) * 6),
    (1053, 36, 4, (select precio_producto from productos where cod_producto = 36) * 4),

    -- Factura 1054: Subtotal = 
    (1054, 37, 7, (select precio_producto from productos where cod_producto = 37) * 7),
    (1054, 38, 10, (select precio_producto from productos where cod_producto = 38) * 10),

    -- Factura 1055: Subtotal = 
    (1055, 39, 4, (select precio_producto from productos where cod_producto = 39) * 4),
    (1055, 40, 6, (select precio_producto from productos where cod_producto = 40) * 6),

    -- Factura 1056: Subtotal = 
    (1056, 41, 6, (select precio_producto from productos where cod_producto = 41) * 6),
    (1056, 42, 4, (select precio_producto from productos where cod_producto = 42) * 4),

    -- Factura 1057: Subtotal = 
    (1057, 43, 5, (select precio_producto from productos where cod_producto = 43) * 5),
    (1057, 44, 3, (select precio_producto from productos where cod_producto = 44) * 3),

    -- Factura 1058: Subtotal = 
    (1058, 45, 6, (select precio_producto from productos where cod_producto = 45) * 6),
    (1058, 46, 8, (select precio_producto from productos where cod_producto = 46) * 8),

    -- Factura 1059: Subtotal = 
    (1059, 47, 10, (select precio_producto from productos where cod_producto = 47) * 10),
    (1059, 48, 6, (select precio_producto from productos where cod_producto = 48) * 6),

    -- Factura 1060: Subtotal = 
    (1060, 49, 6, (select precio_producto from productos where cod_producto = 49) * 6),
    (1060, 50, 4, (select precio_producto from productos where cod_producto = 50) * 4),

    -- Factura 1061: Subtotal = 
    (1061, 1, 5, (select precio_producto from productos where cod_producto = 1) * 5),
    (1061, 2, 3, (select precio_producto from productos where cod_producto = 2) * 3),

    -- Factura 1062: Subtotal = 
    (1062, 3, 4, (select precio_producto from productos where cod_producto = 3) * 4),
    (1062, 4, 6, (select precio_producto from productos where cod_producto = 4) * 6),

    -- Factura 1063: Subtotal = 
    (1063, 5, 7, (select precio_producto from productos where cod_producto = 5) * 7),
    (1063, 6, 2, (select precio_producto from productos where cod_producto = 6) * 2),

    -- Factura 1064: Subtotal = 
    (1064, 7, 5, (select precio_producto from productos where cod_producto = 7) * 5),
    (1064, 8, 10, (select precio_producto from productos where cod_producto = 8) * 10),

    -- Factura 1065: Subtotal = 
    (1065, 9, 6, (select precio_producto from productos where cod_producto = 9) * 6),
    (1065, 10, 8, (select precio_producto from productos where cod_producto = 10) * 8),

    -- Factura 1066: Subtotal = 
    (1066, 11, 5, (select precio_producto from productos where cod_producto = 11) * 5),
    (1066, 12, 4, (select precio_producto from productos where cod_producto = 12) * 4),

    -- Factura 1067: Subtotal = 
    (1067, 13, 3, (select precio_producto from productos where cod_producto = 13) * 3),
    (1067, 14, 5, (select precio_producto from productos where cod_producto = 14) * 5),

    -- Factura 1068: Subtotal = 
    (1068, 15, 10, (select precio_producto from productos where cod_producto = 15) * 10),
    (1068, 16, 3, (select precio_producto from productos where cod_producto = 16) * 3)
;

-- Febrero 2024 📌
INSERT INTO estado_pago_factura (pfk_factura, iva_aplicado, subtotal, total, pago_total, numero_abonos)
VALUES 
    (1039, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1039), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1040, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1040), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1041, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1041), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1042, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1042), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1043, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1043), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1044, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1044), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1045, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1045), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 4),

    (1046, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1046), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1047, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1047), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1048, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1048), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1049, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1049), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1050, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1050), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1051, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1051), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1052, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1052), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1053, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1053), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1054, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1054), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1055, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1055), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1056, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1056), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1057, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1057), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1058, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1058), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1059, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1059), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1060, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1060), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1061, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1061), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1062, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1062), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1063, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1063), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1064, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1064), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1065, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1065), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1066, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1066), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1067, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1067), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1068, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1068), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3)
;

-- Febrero 2024 📌
INSERT INTO abonos_factura (fk_factura, metodo_pago, valor_abono, fecha_abono) VALUES
    -- Factura 1039 numero_abonos = 1 / total = 308115
    (1039, 'Efectivo', 308115, '2024-02-01'),
    -- Factura 1040 numero_abonos = 1 / total = 178738
    (1040, 'Efectivo', 178738, '2024-02-02'),
    -- Factura 1041 numero_abonos = 2 / total = 118881
    (1041, 'Digital', 71000, '2024-02-03'),
    (1041, 'Efectivo', 47881, '2024-02-18'),
    -- Factura 1042 numero_abonos = 3 / total = 171931
    (1042, 'Efectivo', 70000, '2024-02-03'),
    (1042, 'Digital', 60000, '2024-02-18'),
    (1042, 'Tarjeta', 41931, '2024-03-04'),
    -- Factura 1043 numero_abonos = 2 / total = 235144
    (1043, 'Efectivo', 140000, '2024-02-04'),
    (1043, 'Digital', 95144, '2024-02-19'),
    -- Factura 1044 numero_abonos = 1 / total = 161245
    (1044, 'Efectivo', 161245, '2024-02-05'),
    -- Factura 1045 numero_abonos = 4 / total = 614040
    (1045, 'Efectivo', 200000, '2024-02-06'),
    (1045, 'Digital', 150000, '2024-02-14'),
    (1045, 'Efectivo', 140000, '2024-02-22'),
    (1045, 'Digital', 124040, '2024-03-01'),
    -- Factura 1046 numero_abonos = 2 / total = 224910
    (1046, 'Efectivo', 135000, '2024-02-07'),
    (1046, 'Digital', 89910, '2024-02-22'),
    -- Factura 1047 numero_abonos = 1 / total = 84252
    (1047, 'Efectivo', 84252, '2024-02-08'),
    -- Factura 1048 numero_abonos = 1 / total = 132090
    (1048, 'Efectivo', 132090, '2024-02-08'),
    -- Factura 1049 numero_abonos = 2 / total = 260610
    (1049, 'Efectivo', 160000, '2024-02-10'),
    (1049, 'Digital', 100610, '2024-02-25'),
    -- Factura 1050 numero_abonos = 1 / total = 77350
    (1050, 'Efectivo', 77350, '2024-02-10'),
    -- Factura 1051 numero_abonos = 2 / total = 183260
    (1051, 'Efectivo', 110000, '2024-02-11'),
    (1051, 'Digital', 73260, '2024-02-26'),
    -- Factura 1052 numero_abonos = 1 / total = 137088
    (1052, 'Efectivo', 137088, '2024-02-12'),
    -- Factura 1053 numero_abonos = 2 / total = 170884
    (1053, 'Efectivo', 100000, '2024-02-14'),
    (1053, 'Digital', 70884, '2024-02-29'),
    -- Factura 1054 numero_abonos = 1 / total = 112574
    (1054, 'Efectivo', 112574, '2024-02-15'),
    -- Factura 1055 numero_abonos = 1 / total = 71400
    (1055, 'Efectivo', 71400, '2024-02-16'),
    -- Factura 1056 numero_abonos = 2 / total = 99008
    (1056, 'Efectivo', 60000, '2024-02-16'),
    (1056, 'Digital', 39008, '2024-03-02'),
    -- Factura 1057 numero_abonos = 3 / total = 87465
    (1057, 'Efectivo', 30000, '2024-02-18'),
    (1057, 'Digital', 30000, '2024-03-04'),
    (1057, 'Efectivo', 27465, '2024-03-19'),
    -- Factura 1058 numero_abonos = 2 / total = 230860
    (1058, 'Efectivo', 140000, '2024-02-19'),
    (1058, 'Digital', 90860, '2024-03-05'),
    -- Factura 1059 numero_abonos = 1 / total = 85680
    (1059, 'Efectivo', 85680, '2024-02-21'),
    -- Factura 1060 numero_abonos = 2 / total = 409360
    (1060, 'Efectivo', 240000, '2024-02-21'),
    (1060, 'Digital', 169360, '2024-03-07'),
    -- Factura 1061 numero_abonos = 1 / total = 440181
    (1061, 'Efectivo', 440181, '2024-02-23'),
    -- Factura 1062 numero_abonos = 3 / total = 266798
    (1062, 'Efectivo', 100000, '2024-02-24'),
    (1062, 'Digital', 90000, '2024-03-10'),
    (1062, 'Efectivo', 76798, '2024-03-25'),
    -- Factura 1063 numero_abonos = 1 / total = 373422
    (1063, 'Efectivo', 373422, '2024-02-24'),
    -- Factura 1064 numero_abonos = 1 / total = 125545
    (1064, 'Efectivo', 125545, '2024-02-28'),
    -- Factura 1065 numero_abonos = 1 / total = 109956
    (1065, 'Efectivo', 109956, '2024-02-27'),
    -- Factura 1066 numero_abonos = 1 / total = 96033
    (1066, 'Efectivo', 96033, '2024-02-27'),
    -- Factura 1067 numero_abonos = 2 / total = 183260
    (1067, 'Efectivo', 110000, '2024-02-28'),
    (1067, 'Digital', 73260, '2024-03-14'),
    -- Factura 1068 numero_abonos = 3 / total = 173740
    (1068, 'Efectivo', 70000, '2024-02-29'),
    (1068, 'Digital', 60000, '2024-03-15'),
    (1068, 'Efectivo', 43740, '2024-03-30')
;


-- /////////////////////////////////////////////////
--        Inserciones Facturas Mes Marzo 2024 📌
-- ///////////////////////////////////////////////

-- Marzo 2024 📌
INSERT INTO facturas(fk_cliente, fecha_registro, fk_vendedor)
VALUES 
    (6, '2024-03-01', 2),  -- 1069
    (15, '2024-03-02', 3), -- 1070
    (22, '2024-03-03', 4), -- 1071
    (7, '2024-03-04', 2),  -- 1072
    (30, '2024-03-04', 5), -- 1073
    (16, '2024-03-05', 3), -- 1074
    (23, '2024-03-06', 4), -- 1075
    (8, '2024-03-07', 2),  -- 1076
    (17, '2024-03-08', 3), -- 1077
    (24, '2024-03-09', 4), -- 1078
    (31, '2024-03-10', 5), -- 1079
    (18, '2024-03-11', 3), -- 1080
    (25, '2024-03-12', 4), -- 1081
    (9, '2024-03-13', 2),  -- 1082
    (19, '2024-03-14', 3), -- 1083
    (26, '2024-03-15', 4), -- 1084
    (32, '2024-03-15', 5), -- 1085
    (10, '2024-03-18', 2), -- 1086
    (27, '2024-03-18', 4), -- 1087
    (20, '2024-03-17', 3), -- 1088
    (33, '2024-03-19', 5), -- 1089
    (11, '2024-03-20', 2), -- 1090
    (21, '2024-03-20', 3), -- 1091
    (28, '2024-03-21', 4), -- 1092
    (15, '2024-03-23', 3), -- 1093
    (12, '2024-03-26', 2), -- 1094
    (34, '2024-03-28', 5)  -- 1095
;

-- Marzo 2024 📌
INSERT INTO detalle_factura(fk_factura, fk_producto, cantidad, subtotal_producto)
VALUES 
    -- Factura 1069: Subtotal = 
    (1069, 3, 3, (select precio_producto from productos where cod_producto = 3) * 3),
    (1069, 7, 2, (select precio_producto from productos where cod_producto = 7) * 2),
    (1069, 10, 5, (select precio_producto from productos where cod_producto = 10) * 5),
    (1069, 12, 10, (select precio_producto from productos where cod_producto = 12) * 10),

    -- Factura 1070: Subtotal = 
    (1070, 1, 8, (select precio_producto from productos where cod_producto = 1) * 8),
    (1070, 4, 2, (select precio_producto from productos where cod_producto = 4) * 2),
    (1070, 9, 10, (select precio_producto from productos where cod_producto = 9) * 10),

    -- Factura 1071: Subtotal = 
    (1071, 13, 20, (select precio_producto from productos where cod_producto = 13) * 20),
    (1071, 16, 30, (select precio_producto from productos where cod_producto = 16) * 30),
    (1071, 18, 10, (select precio_producto from productos where cod_producto = 18) * 10),
    (1071, 25, 8, (select precio_producto from productos where cod_producto = 25) * 8),

    -- Factura 1072: Subtotal = 
    (1072, 21, 6, (select precio_producto from productos where cod_producto = 21) * 6),
    (1072, 24, 2, (select precio_producto from productos where cod_producto = 24) * 2),
    (1072, 28, 5, (select precio_producto from productos where cod_producto = 28) * 5),

    -- Factura 1073: Subtotal = 
    (1073, 30, 10, (select precio_producto from productos where cod_producto = 30) * 10),
    (1073, 33, 20, (select precio_producto from productos where cod_producto = 33) * 20),
    (1073, 34, 8, (select precio_producto from productos where cod_producto = 34) * 8),

    -- Factura 1074: Subtotal = 
    (1074, 40, 5, (select precio_producto from productos where cod_producto = 40) * 5),
    (1074, 42, 2, (select precio_producto from productos where cod_producto = 42) * 2),
    (1074, 47, 4, (select precio_producto from productos where cod_producto = 47) * 4),

    -- Factura 1075: Subtotal = 
    (1075, 19, 8, (select precio_producto from productos where cod_producto = 19) * 8),
    (1075, 14, 2, (select precio_producto from productos where cod_producto = 14) * 2),
    (1075, 15, 6, (select precio_producto from productos where cod_producto = 15) * 6),

    -- Factura 1076: Subtotal = 
    (1076, 17, 10, (select precio_producto from productos where cod_producto = 17) * 10),
    (1076, 32, 3, (select precio_producto from productos where cod_producto = 32) * 3),
    (1076, 48, 5, (select precio_producto from productos where cod_producto = 48) * 5),

    -- Factura 1077: Subtotal = 
    (1077, 6, 10, (select precio_producto from productos where cod_producto = 6) * 10),
    (1077, 20, 8, (select precio_producto from productos where cod_producto = 20) * 8),

    -- Factura 1078: Subtotal = 
    (1078, 2, 6, (select precio_producto from productos where cod_producto = 2) * 6),
    (1078, 5, 8, (select precio_producto from productos where cod_producto = 5) * 8),
    (1078, 31, 4, (select precio_producto from productos where cod_producto = 31) * 4),

    -- Factura 1079: Subtotal = 
    (1079, 11, 5, (select precio_producto from productos where cod_producto = 11) * 5),
    (1079, 38, 8, (select precio_producto from productos where cod_producto = 38) * 8),
    (1079, 41, 6, (select precio_producto from productos where cod_producto = 41) * 6),

    -- Factura 1080: Subtotal = 
    (1080, 29, 5, (select precio_producto from productos where cod_producto = 29) * 5),
    (1080, 26, 6, (select precio_producto from productos where cod_producto = 26) * 6),
    (1080, 13, 4, (select precio_producto from productos where cod_producto = 13) * 4),

    -- Factura 1081: Subtotal = 
    (1081, 8, 15, (select precio_producto from productos where cod_producto = 8) * 15),
    (1081, 27, 20, (select precio_producto from productos where cod_producto = 27) * 20),
    (1081, 39, 10, (select precio_producto from productos where cod_producto = 39) * 10),

    -- Factura 1082: Subtotal = 
    (1082, 23, 5, (select precio_producto from productos where cod_producto = 23) * 5),
    (1082, 35, 10, (select precio_producto from productos where cod_producto = 35) * 10),

    -- Factura 1083: Subtotal = 
    (1083, 36, 15, (select precio_producto from productos where cod_producto = 36) * 15),
    (1083, 46, 8, (select precio_producto from productos where cod_producto = 46) * 8),
    (1083, 50, 6, (select precio_producto from productos where cod_producto = 50) * 6),

    -- Factura 1084: Subtotal = 
    (1084, 45, 5, (select precio_producto from productos where cod_producto = 45) * 5),
    (1084, 49, 6, (select precio_producto from productos where cod_producto = 49) * 6),
    (1084, 37, 4, (select precio_producto from productos where cod_producto = 37) * 4),

    -- Factura 1085: Subtotal = 
    (1085, 1, 7, (select precio_producto from productos where cod_producto = 1) * 7),
    (1085, 44, 6, (select precio_producto from productos where cod_producto = 44) * 6),
    (1085, 22, 4, (select precio_producto from productos where cod_producto = 22) * 4),

    -- Factura 1086: Subtotal = 
    (1086, 4, 5, (select precio_producto from productos where cod_producto = 4) * 5),
    (1086, 7, 10, (select precio_producto from productos where cod_producto = 7) * 10),
    (1086, 32, 15, (select precio_producto from productos where cod_producto = 32) * 15),

    -- Factura 1087: Subtotal = 
    (1087, 6, 12, (select precio_producto from productos where cod_producto = 6) * 12),
    (1087, 15, 8, (select precio_producto from productos where cod_producto = 15) * 8),
    (1087, 40, 5, (select precio_producto from productos where cod_producto = 40) * 5),

    -- Factura 1088: Subtotal = 
    (1088, 41, 10, (select precio_producto from productos where cod_producto = 41) * 10),
    (1088, 34, 12, (select precio_producto from productos where cod_producto = 34) * 12),

    -- Factura 1089: Subtotal = 
    (1089, 3, 5, (select precio_producto from productos where cod_producto = 3) * 5),
    (1089, 31, 3, (select precio_producto from productos where cod_producto = 31) * 3),
    (1089, 35, 6, (select precio_producto from productos where cod_producto = 35) * 6),

    -- Factura 1090: Subtotal = 
    (1090, 5, 10, (select precio_producto from productos where cod_producto = 5) * 10),
    (1090, 24, 15, (select precio_producto from productos where cod_producto = 24) * 15),

    -- Factura 1091: Subtotal = 
    (1091, 7, 8, (select precio_producto from productos where cod_producto = 7) * 8),
    (1091, 13, 5, (select precio_producto from productos where cod_producto = 13) * 5),
    (1091, 30, 6, (select precio_producto from productos where cod_producto = 30) * 6),

    -- Factura 1092: Subtotal = 
    (1092, 36, 4, (select precio_producto from productos where cod_producto = 36) * 4),
    (1092, 43, 3, (select precio_producto from productos where cod_producto = 43) * 3),

    -- Factura 1093: Subtotal = 
    (1093, 16, 8, (select precio_producto from productos where cod_producto = 16) * 8),
    (1093, 17, 12, (select precio_producto from productos where cod_producto = 17) * 12),

    -- Factura 1094: Subtotal = 
    (1094, 8, 10, (select precio_producto from productos where cod_producto = 8) * 10),
    (1094, 29, 5, (select precio_producto from productos where cod_producto = 29) * 5),

    -- Factura 1095: Subtotal = 
    (1095, 27, 3, (select precio_producto from productos where cod_producto = 27) * 3),
    (1095, 39, 10, (select precio_producto from productos where cod_producto = 39) * 10)
;

-- Marzo 2024 📌
INSERT INTO estado_pago_factura (pfk_factura, iva_aplicado, subtotal, total, pago_total, numero_abonos)
VALUES 
    (1069, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1069), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1070, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1070), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1071, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1071), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1072, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1072), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1073, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1073), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1074, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1074), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1075, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1075), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1076, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1076), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1077, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1077), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1078, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1078), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1079, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1079), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1080, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1080), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1081, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1081), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1082, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1082), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1083, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1083), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1084, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1084), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1085, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1085), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1086, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1086), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1087, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1087), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1088, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1088), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1089, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1089), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1090, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1090), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1091, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1091), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1092, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1092), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1093, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1093), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1094, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1094), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1095, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1095), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1)
;

-- Marzo 2024 📌
INSERT INTO abonos_factura (fk_factura, metodo_pago, valor_abono, fecha_abono) 
VALUES
    -- Factura 1069 numero_abonos = 2 / total = 316540
    (1069, 'Efectivo', 221578, '2024-03-01'),
    (1069, 'Digital', 94962, '2024-03-16'),
    -- Factura 1070 numero_abonos = 2 / total = 339436
    (1070, 'Efectivo', 237605, '2024-03-02'),
    (1070, 'Digital', 101831, '2024-03-17'),
    -- Factura 1071 numero_abonos = 3 / total = 878220
    (1071, 'Efectivo', 550000, '2024-03-03'),
    (1071, 'Digital', 200000, '2024-03-18'),
    (1071, 'Tarjeta', 128220, '2024-04-02'),
    -- Factura 1072 numero_abonos = 2 / total = 342720
    (1072, 'Efectivo', 240000, '2024-03-04'),
    (1072, 'Digital', 102720, '2024-03-19'),
    -- Factura 1073 numero_abonos = 2 / total = 371280
    (1073, 'Efectivo', 260000, '2024-03-04'),
    (1073, 'Digital', 111280, '2024-03-19'),
    -- Factura 1074 numero_abonos = 1 / total = 82110
    (1074, 'Efectivo', 82110, '2024-03-05'),
    -- Factura 1075 numero_abonos = 2 / total = 703052
    (1075, 'Efectivo', 490000, '2024-03-06'),
    (1075, 'Digital', 213052, '2024-03-21'),
    -- Factura 1076 numero_abonos = 2 / total = 260610
    (1076, 'Efectivo', 180000, '2024-03-07'),
    (1076, 'Digital', 80610, '2024-03-22'),
    -- Factura 1077 numero_abonos = 1 / total = 110432
    (1077, 'Efectivo', 110432, '2024-03-08'),
    -- Factura 1078 numero_abonos = 2 / total = 1141210
    (1078, 'Efectivo', 800000, '2024-03-09'),
    (1078, 'Digital', 341210, '2024-03-24'),
    -- Factura 1079 numero_abonos = 1 / total = 94129
    (1079, 'Efectivo', 94129, '2024-03-10'),
    -- Factura 1080 numero_abonos = 1 / total = 157675
    (1080, 'Efectivo', 157675, '2024-03-11'),
    -- Factura 1081 numero_abonos = 2 / total = 414120
    (1081, 'Efectivo', 290000, '2024-03-12'),
    (1081, 'Digital', 124120, '2024-03-27'),
    -- Factura 1082 numero_abonos = 2 / total = 290360
    (1082, 'Efectivo', 200000, '2024-03-13'),
    (1082, 'Digital', 90360, '2024-03-28'),
    -- Factura 1083 numero_abonos = 2 / total = 359380
    (1083, 'Efectivo', 250000, '2024-03-14'),
    (1083, 'Digital', 109380, '2024-03-29'),
    -- Factura 1084 numero_abonos = 2 / total = 442918
    (1084, 'Efectivo', 300000, '2024-03-15'),
    (1084, 'Digital', 142918, '2024-03-30'),
    -- Factura 1085 numero_abonos = 2 / total = 219388
    (1085, 'Efectivo', 150000, '2024-03-15'),
    (1085, 'Digital', 69388, '2024-03-30'),
    -- Factura 1086 numero_abonos = 3 / total = 384965
    (1086, 'Efectivo', 250000, '2024-03-18'),
    (1086, 'Digital', 100000, '2024-04-02'),
    (1086, 'Efectivo', 34965, '2024-04-17'),
    -- Factura 1087 numero_abonos = 2 / total = 225862
    (1087, 'Efectivo', 160000, '2024-03-18'),
    (1087, 'Digital', 65862, '2024-04-02'),
    -- Factura 1088 numero_abonos = 2 / total = 171360
    (1088, 'Efectivo', 120000, '2024-03-17'),
    (1088, 'Digital', 51360, '2024-04-01'),
    -- Factura 1089 numero_abonos = 2 / total = 271915
    (1089, 'Efectivo', 190000, '2024-03-19'),
    (1089, 'Digital', 81915, '2024-04-03'),
    -- Factura 1090 numero_abonos = 2 / total = 565250
    (1090, 'Efectivo', 400000, '2024-03-20'),
    (1090, 'Digital', 165250, '2024-04-04'),
    -- Factura 1091 numero_abonos = 2 / total = 164220
    (1091, 'Efectivo', 115000, '2024-03-20'),
    (1091, 'Digital', 49220, '2024-04-04'),
    -- Factura 1092 numero_abonos = 1 / total = 63784
    (1092, 'Efectivo', 63784, '2024-03-21'),
    -- Factura 1093 numero_abonos = 2 / total = 378420
    (1093, 'Efectivo', 260000, '2024-03-23'),
    (1093, 'Digital', 118420, '2024-04-07'),
    -- Factura 1094 numero_abonos = 1 / total = 119595
    (1094, 'Efectivo', 119595, '2024-03-26'),
    -- Factura 1095 numero_abonos = 1 / total = 117096
    (1095, 'Efectivo', 117096, '2024-03-28')
;


-- /////////////////////////////////////////////////
--        Inserciones Facturas Mes Abril 2024 📌
-- ///////////////////////////////////////////////

-- Abril 2024 📌
INSERT INTO facturas(fk_cliente, fecha_registro, fk_vendedor)
VALUES 
    (6, '2024-04-01', 2),  -- 1096
    (15, '2024-04-02', 3), -- 1097
    (7, '2024-04-03', 2),  -- 1098
    (22, '2024-04-04', 4), -- 1099
    (8, '2024-04-05', 2),  -- 1100
    (30, '2024-04-05', 5), -- 1101
    (16, '2024-04-06', 3), -- 1102
    (9, '2024-04-07', 2),  -- 1103
    (23, '2024-04-08', 4), -- 1104
    (10, '2024-04-09', 2), -- 1105
    (17, '2024-04-10', 3), -- 1106
    (31, '2024-04-10', 5), -- 1107
    (11, '2024-04-11', 2), -- 1108
    (24, '2024-04-12', 4), -- 1109
    (12, '2024-04-13', 2), -- 1110
    (18, '2024-04-14', 3), -- 1111
    (13, '2024-04-15', 2), -- 1112
    (32, '2024-04-15', 5), -- 1113
    (25, '2024-04-16', 4), -- 1114
    (14, '2024-04-17', 2), -- 1115
    (19, '2024-04-18', 3), -- 1116
    (6, '2024-04-19', 2),  -- 1117
    (26, '2024-04-20', 4), -- 1118
    (33, '2024-04-20', 5), -- 1119
    (7, '2024-04-21', 2),  -- 1120
    (20, '2024-04-22', 3), -- 1121
    (27, '2024-04-24', 4), -- 1122
    (34, '2024-04-25', 5), -- 1123
    (28, '2024-04-28', 4), -- 1124
    (35, '2024-04-30', 5)  -- 1125
;

-- Abril 2024 📌
INSERT INTO detalle_factura(fk_factura, fk_producto, cantidad, subtotal_producto)
VALUES 
    -- Factura 1096: Total = 200000
    (1096, 1, 5, (select precio_producto from productos where cod_producto = 1) * 5),
    (1096, 2, 8, (select precio_producto from productos where cod_producto = 2) * 8),
    (1096, 3, 6, (select precio_producto from productos where cod_producto = 3) * 6),
    (1096, 4, 3, (select precio_producto from productos where cod_producto = 4) * 3),

    -- Factura 1097: Total = 650000
    (1097, 5, 10, (select precio_producto from productos where cod_producto = 5) * 10),
    (1097, 6, 12, (select precio_producto from productos where cod_producto = 6) * 12),
    (1097, 7, 20, (select precio_producto from productos where cod_producto = 7) * 20),
    (1097, 8, 15, (select precio_producto from productos where cod_producto = 8) * 15),
    (1097, 9, 8, (select precio_producto from productos where cod_producto = 9) * 8),

    -- Factura 1098: Total = 300000
    (1098, 10, 5, (select precio_producto from productos where cod_producto = 10) * 5),
    (1098, 11, 10, (select precio_producto from productos where cod_producto = 11) * 10),
    (1098, 12, 6, (select precio_producto from productos where cod_producto = 12) * 6),
    (1098, 13, 8, (select precio_producto from productos where cod_producto = 13) * 8),
    (1098, 14, 4, (select precio_producto from productos where cod_producto = 14) * 4),

    -- Factura 1099: Total = 500000
    (1099, 15, 20, (select precio_producto from productos where cod_producto = 15) * 20),
    (1099, 16, 12, (select precio_producto from productos where cod_producto = 16) * 12),
    (1099, 17, 10, (select precio_producto from productos where cod_producto = 17) * 10),
    (1099, 18, 8, (select precio_producto from productos where cod_producto = 18) * 8),
    (1099, 19, 6, (select precio_producto from productos where cod_producto = 19) * 6),

    -- Factura 1100: Total = 115000
    (1100, 20, 5, (select precio_producto from productos where cod_producto = 20) * 5),
    (1100, 21, 8, (select precio_producto from productos where cod_producto = 21) * 8),
    (1100, 22, 3, (select precio_producto from productos where cod_producto = 22) * 3),

    -- Factura 1101: Total = 700000
    (1101, 23, 12, (select precio_producto from productos where cod_producto = 23) * 12),
    (1101, 24, 20, (select precio_producto from productos where cod_producto = 24) * 20),
    (1101, 25, 30, (select precio_producto from productos where cod_producto = 25) * 30),
    (1101, 26, 15, (select precio_producto from productos where cod_producto = 26) * 15),
    (1101, 27, 10, (select precio_producto from productos where cod_producto = 27) * 10),

    -- Factura 1102: Total = 250000
    (1102, 28, 5, (select precio_producto from productos where cod_producto = 28) * 5),
    (1102, 29, 8, (select precio_producto from productos where cod_producto = 29) * 8),
    (1102, 30, 6, (select precio_producto from productos where cod_producto = 30) * 6),
    (1102, 31, 4, (select precio_producto from productos where cod_producto = 31) * 4),

    -- Factura 1103: Total = 320000
    (1103, 32, 10, (select precio_producto from productos where cod_producto = 32) * 10),
    (1103, 33, 15, (select precio_producto from productos where cod_producto = 33) * 15),
    (1103, 34, 8, (select precio_producto from productos where cod_producto = 34) * 8),
    (1103, 35, 12, (select precio_producto from productos where cod_producto = 35) * 12),

    -- Factura 1104: Total = 150000
    (1104, 36, 6, (select precio_producto from productos where cod_producto = 36) * 6),
    (1104, 37, 8, (select precio_producto from productos where cod_producto = 37) * 8),
    (1104, 38, 4, (select precio_producto from productos where cod_producto = 38) * 4),
    (1104, 39, 10, (select precio_producto from productos where cod_producto = 39) * 10),

    -- Factura 1105: Total = 275000
    (1105, 40, 12, (select precio_producto from productos where cod_producto = 40) * 12),
    (1105, 41, 15, (select precio_producto from productos where cod_producto = 41) * 15),
    (1105, 42, 6, (select precio_producto from productos where cod_producto = 42) * 6),
    (1105, 43, 4, (select precio_producto from productos where cod_producto = 43) * 4),

    -- Factura 1106: Total = 450000
    (1106, 44, 20, (select precio_producto from productos where cod_producto = 44) * 20),
    (1106, 45, 25, (select precio_producto from productos where cod_producto = 45) * 25),
    (1106, 46, 10, (select precio_producto from productos where cod_producto = 46) * 10),
    (1106, 47, 15, (select precio_producto from productos where cod_producto = 47) * 15),

    -- Factura 1107: Total = 390000
    (1107, 48, 12, (select precio_producto from productos where cod_producto = 48) * 12),
    (1107, 49, 20, (select precio_producto from productos where cod_producto = 49) * 20),
    (1107, 50, 10, (select precio_producto from productos where cod_producto = 50) * 10),

    -- Factura 1108: Total = 180000
    (1108, 1, 6, (select precio_producto from productos where cod_producto = 1) * 6),
    (1108, 2, 8, (select precio_producto from productos where cod_producto = 2) * 8),
    (1108, 3, 4, (select precio_producto from productos where cod_producto = 3) * 4),

    -- Factura 1109: Total = 550000
    (1109, 4, 15, (select precio_producto from productos where cod_producto = 4) * 15),
    (1109, 5, 20, (select precio_producto from productos where cod_producto = 5) * 20),
    (1109, 6, 12, (select precio_producto from productos where cod_producto = 6) * 12),
    (1109, 7, 10, (select precio_producto from productos where cod_producto = 7) * 10),
    (1109, 8, 8, (select precio_producto from productos where cod_producto = 8) * 8),

    -- Factura 1110: Total = 140000
    (1110, 9, 4, (select precio_producto from productos where cod_producto = 9) * 4),
    (1110, 10, 6, (select precio_producto from productos where cod_producto = 10) * 6),
    (1110, 11, 8, (select precio_producto from productos where cod_producto = 11) * 8),

    -- Factura 1111: Total = 720000
    (1111, 12, 10, (select precio_producto from productos where cod_producto = 12) * 10),
    (1111, 13, 12, (select precio_producto from productos where cod_producto = 13) * 12),
    (1111, 14, 20, (select precio_producto from productos where cod_producto = 14) * 20),
    (1111, 15, 18, (select precio_producto from productos where cod_producto = 15) * 18),

    -- Factura 1112: Total = 370000
    (1112, 16, 12, (select precio_producto from productos where cod_producto = 16) * 12),
    (1112, 17, 10, (select precio_producto from productos where cod_producto = 17) * 10),
    (1112, 18, 8, (select precio_producto from productos where cod_producto = 18) * 8),
    (1112, 19, 6, (select precio_producto from productos where cod_producto = 19) * 6),

    -- Factura 1113: Total = 620000
    (1113, 20, 15, (select precio_producto from productos where cod_producto = 20) * 15),
    (1113, 21, 20, (select precio_producto from productos where cod_producto = 21) * 20),
    (1113, 22, 18, (select precio_producto from productos where cod_producto = 22) * 18),

    -- Factura 1114: Total = 450000
    (1114, 23, 12, (select precio_producto from productos where cod_producto = 23) * 12),
    (1114, 24, 20, (select precio_producto from productos where cod_producto = 24) * 20),
    (1114, 25, 30, (select precio_producto from productos where cod_producto = 25) * 30),
    (1114, 26, 15, (select precio_producto from productos where cod_producto = 26) * 15),

    -- Factura 1115: Total = 500000
    (1115, 27, 20, (select precio_producto from productos where cod_producto = 27) * 20),
    (1115, 28, 15, (select precio_producto from productos where cod_producto = 28) * 15),
    (1115, 29, 10, (select precio_producto from productos where cod_producto = 29) * 10),
    (1115, 30, 5, (select precio_producto from productos where cod_producto = 30) * 5),

    -- Factura 1116: Total = 300000
    (1116, 31, 10, (select precio_producto from productos where cod_producto = 31) * 10),
    (1116, 32, 12, (select precio_producto from productos where cod_producto = 32) * 12),
    (1116, 33, 8, (select precio_producto from productos where cod_producto = 33) * 8),

    -- Factura 1117: Total = 280000
    (1117, 34, 15, (select precio_producto from productos where cod_producto = 34) * 15),
    (1117, 35, 12, (select precio_producto from productos where cod_producto = 35) * 12),
    (1117, 36, 10, (select precio_producto from productos where cod_producto = 36) * 10),

    -- Factura 1118: Total = 120000
    (1118, 37, 8, (select precio_producto from productos where cod_producto = 37) * 8),
    (1118, 38, 10, (select precio_producto from productos where cod_producto = 38) * 10),

    -- Factura 1119: Total = 660000
    (1119, 39, 20, (select precio_producto from productos where cod_producto = 39) * 20),
    (1119, 40, 15, (select precio_producto from productos where cod_producto = 40) * 15),
    (1119, 41, 12, (select precio_producto from productos where cod_producto = 41) * 12),

    -- Factura 1120: Total = 350000
    (1120, 42, 10, (select precio_producto from productos where cod_producto = 42) * 10),
    (1120, 43, 15, (select precio_producto from productos where cod_producto = 43) * 15),

    -- Factura 1121: Total = 225000
    (1121, 44, 12, (select precio_producto from productos where cod_producto = 44) * 12),
    (1121, 45, 10, (select precio_producto from productos where cod_producto = 45) * 10),

    -- Factura 1122: Total = 520000
    (1122, 46, 20, (select precio_producto from productos where cod_producto = 46) * 20),
    (1122, 47, 18, (select precio_producto from productos where cod_producto = 47) * 18),

    -- Factura 1123: Total = 475000
    (1123, 48, 15, (select precio_producto from productos where cod_producto = 48) * 15),
    (1123, 49, 20, (select precio_producto from productos where cod_producto = 49) * 20),

    -- Factura 1124: Total = 150000
    (1124, 50, 10, (select precio_producto from productos where cod_producto = 50) * 10),

    -- Factura 1125: Total = 175000
    (1125, 1, 6, (select precio_producto from productos where cod_producto = 1) * 6),
    (1125, 2, 8, (select precio_producto from productos where cod_producto = 2) * 8),
    (1125, 3, 4, (select precio_producto from productos where cod_producto = 3) * 4),
    (1125, 4, 3, (select precio_producto from productos where cod_producto = 4) * 3)
;

-- Abril 2024 📌
INSERT INTO estado_pago_factura (pfk_factura, iva_aplicado, subtotal, total, pago_total, numero_abonos)
VALUES 
    (1096, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1096), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1097, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1097), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1098, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1098), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1099, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1099), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1100, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1100), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1101, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1101), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1102, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1102), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1103, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1103), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1104, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1104), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1105, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1105), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1106, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1106), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1107, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1107), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1108, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1108), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1109, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1109), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1110, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1110), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1111, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1111), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1112, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1112), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1113, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1113), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1114, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1114), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1115, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1115), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1116, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1116), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1117, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1117), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1118, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1118), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1119, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1119), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1120, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1120), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1121, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1121), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1122, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1122), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1123, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1123), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3),

    (1124, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1124), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 2),

    (1125, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1125), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 3)
;

-- Abril 2024 📌
INSERT INTO abonos_factura (fk_factura, metodo_pago, valor_abono, fecha_abono) 
VALUES
    -- Factura 1096 numero_abonos = 3 / total = 1178695
    (1096, 'Tarjeta', 600000, '2024-04-01'),
    (1096, 'Digital', 400000, '2024-04-16'),
    (1096, 'Efectivo', 178695, '2024-04-29'),
    -- Factura 1097 numero_abonos = 3 / total = 947478
    (1097, 'Efectivo', 500000, '2024-04-02'),
    (1097, 'Digital', 300000, '2024-04-17'),
    (1097, 'Tarjeta', 147478, '2024-05-02'),
    -- Factura 1098 numero_abonos = 2 / total = 420189
    (1098, 'Efectivo', 273123, '2024-04-03'),
    (1098, 'Digital', 147066, '2024-04-18'),
    -- Factura 1099 numero_abonos = 3 / total = 1129310
    (1099, 'Efectivo', 700000, '2024-04-04'),
    (1099, 'Digital', 300000, '2024-04-19'),
    (1099, 'Tarjeta', 129310, '2024-05-04'),
    -- Factura 1100 numero_abonos = 2 / total = 255850
    (1100, 'Efectivo', 166303, '2024-04-05'),
    (1100, 'Digital', 89547, '2024-04-20'),
    -- Factura 1101 numero_abonos = 3 / total = 636174
    (1101, 'Efectivo', 400000, '2024-04-05'),
    (1101, 'Digital', 200000, '2024-04-20'),
    (1101, 'Tarjeta', 36174, '2024-05-05'),
    -- Factura 1102 numero_abonos = 2 / total = 321300
    (1102, 'Efectivo', 210000, '2024-04-06'),
    (1102, 'Digital', 111300, '2024-04-21'),
    -- Factura 1103 numero_abonos = 3 / total = 652120
    (1103, 'Efectivo', 400000, '2024-04-07'),
    (1103, 'Digital', 200000, '2024-04-22'),
    (1103, 'Tarjeta', 52120, '2024-05-07'),
    -- Factura 1104 numero_abonos = 2 / total = 213962
    (1104, 'Efectivo', 139075, '2024-04-08'),
    (1104, 'Digital', 74887, '2024-04-23'),
    -- Factura 1105 numero_abonos = 2 / total = 328440
    (1105, 'Efectivo', 213486, '2024-04-09'),
    (1105, 'Digital', 114954, '2024-04-24'),
    -- Factura 1106 numero_abonos = 3 / total = 1023400
    (1106, 'Efectivo', 153400, '2024-04-10'),
    (1106, 'Digital', 350000, '2024-04-25'),
    (1106, 'Tarjeta', 520000, '2024-05-10'),
    -- Factura 1107 numero_abonos = 3 / total = 1266160
    (1107, 'Efectivo', 700000, '2024-04-10'),
    (1107, 'Digital', 66160, '2024-04-25'),
    (1107, 'Tarjeta', 500000, '2024-05-10'),
    -- Factura 1108 numero_abonos = 3 / total = 1067287
    (1108, 'Tarjeta', 670287, '2024-04-11'),
    (1108, 'Digital', 350000, '2024-04-26'),
    (1108, 'Efectivo', 47000, '2024-05-11'),
    -- Factura 1109 numero_abonos = 3 / total = 1784643
    (1109, 'Efectivo', 391000, '2024-04-12'),
    (1109, 'Digital', 700000, '2024-04-27'),
    (1109, 'Tarjeta', 693643, '2024-05-12'),
    -- Factura 1110 numero_abonos = 1 / total = 85252
    (1110, 'Efectivo', 85252, '2024-04-13'),
    -- Factura 1111 numero_abonos = 3 / total = 1197140
    (1111, 'Efectivo', 800000, '2024-04-14'),
    (1111, 'Digital', 300000, '2024-04-29'),
    (1111, 'Tarjeta', 97140, '2024-05-14'),
    -- Factura 1112 numero_abonos = 3 / total = 867510
    (1112, 'Efectivo', 500000, '2024-04-15'),
    (1112, 'Digital', 300000, '2024-04-30'),
    (1112, 'Tarjeta', 67510, '2024-05-15'),
    -- Factura 1113 numero_abonos = 3 / total = 737800
    (1113, 'Efectivo', 500000, '2024-04-15'),
    (1113, 'Digital', 200000, '2024-04-30'),
    (1113, 'Tarjeta', 37800, '2024-05-15'),
    -- Factura 1114 numero_abonos = 3 / total = 543354
    (1114, 'Efectivo', 300000, '2024-04-16'),
    (1114, 'Digital', 200000, '2024-05-01'),
    (1114, 'Tarjeta', 43354, '2024-05-16'),
    -- Factura 1115 numero_abonos = 3 / total = 798490
    (1115, 'Efectivo', 500000, '2024-04-17'),
    (1115, 'Digital', 250000, '2024-05-02'),
    (1115, 'Tarjeta', 48490, '2024-05-17'),
    -- Factura 1116 numero_abonos = 2 / total = 399364
    (1116, 'Efectivo', 259587, '2024-04-18'),
    (1116, 'Digital', 139777, '2024-05-03'),
    -- Factura 1117 numero_abonos = 3 / total = 459340
    (1117, 'Efectivo', 300000, '2024-04-19'),
    (1117, 'Digital', 100000, '2024-05-04'),
    (1117, 'Tarjeta', 59340, '2024-05-19'),
    -- Factura 1118 numero_abonos = 1 / total = 121856
    (1118, 'Efectivo', 121856, '2024-04-20'),
    -- Factura 1119 numero_abonos = 2 / total = 370566
    (1119, 'Efectivo', 240868, '2024-04-20'),
    (1119, 'Digital', 129698, '2024-05-05'),
    -- Factura 1120 numero_abonos = 2 / total = 333200
    (1120, 'Efectivo', 216580, '2024-04-21'),
    (1120, 'Digital', 116620, '2024-05-06'),
    -- Factura 1121 numero_abonos = 2 / total = 361760
    (1121, 'Efectivo', 235144, '2024-04-22'),
    (1121, 'Digital', 126616, '2024-05-07'),
    -- Factura 1122 numero_abonos = 2 / total = 259420
    (1122, 'Efectivo', 168623, '2024-04-24'),
    (1122, 'Digital', 90797, '2024-05-09'),
    -- Factura 1123 numero_abonos = 3 / total = 892500
    (1123, 'Efectivo', 500000, '2024-04-25'),
    (1123, 'Digital', 300000, '2024-05-10'),
    (1123, 'Tarjeta', 92500, '2024-05-25'),
    -- Factura 1124 numero_abonos = 2 / total = 380800
    (1124, 'Efectivo', 247520, '2024-04-28'),
    (1124, 'Digital', 133280, '2024-05-13'),
    -- Factura 1125 numero_abonos = 3 / total = 1173316
    (1125, 'Tarjeta', 700000, '2024-04-30'),
    (1125, 'Digital', 400000, '2024-05-15'),
    (1125, 'Efectivo', 73316, '2024-05-30')
;


-- /////////////////////////////////////////////////
--        Inserciones Facturas Mes Mayo 2024 📌
-- ///////////////////////////////////////////////

-- Mayo 2024 📌
INSERT INTO facturas(fk_cliente, fecha_registro, fk_vendedor)
VALUES 
    (6, '2024-05-01', 2), -- 1126
    (15, '2024-05-02', 3), -- 1127
    (7, '2024-05-03', 2), -- 1128
    (22, '2024-05-03', 4), -- 1129
    (30, '2024-05-04', 5), -- 1130
    (22, '2024-05-04', 4), -- 1131
    (8, '2024-05-05', 2), -- 1132
    (16, '2024-05-06', 3), -- 1133
    (9, '2024-05-07', 2), -- 1134
    (23, '2024-05-07', 4), -- 1135
    (31, '2024-05-08', 5), -- 1136
    (10, '2024-05-09', 2), -- 1137
    (17, '2024-05-10', 3), -- 1138
    (24, '2024-05-11', 4), -- 1139
    (11, '2024-05-11', 2), -- 1140
    (32, '2024-05-12', 5), -- 1141
    (18, '2024-05-14', 3), -- 1142
    (12, '2024-05-13', 2), -- 1143
    (25, '2024-05-15', 4), -- 1144
    (13, '2024-05-15', 2), -- 1145
    (33, '2024-05-16', 5), -- 1146
    (19, '2024-05-18', 3), -- 1147
    (26, '2024-05-19', 4), -- 1148
    (14, '2024-05-19', 2), -- 1149
    (34, '2024-05-20', 5), -- 1150
    (20, '2024-05-22', 3), -- 1151
    (27, '2024-05-23', 4), -- 1152
    (35, '2024-05-24', 5), -- 1153
    (28, '2024-05-27', 4), -- 1154
    (36, '2024-05-28', 5), -- 1155
    (29, '2024-05-31', 4) -- 1156
;

-- Mayo 2024 📌
INSERT INTO detalle_factura(fk_factura, fk_producto, cantidad, subtotal_producto)
VALUES 
    -- Factura 1126: Subtotal =
    (1126, 1, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 1) * 5),
    (1126, 4, 3, (SELECT precio_producto FROM productos WHERE cod_producto = 4) * 3),
    (1126, 5, 3, (SELECT precio_producto FROM productos WHERE cod_producto = 5) * 3),

    -- Factura 1127: Subtotal =
    (1127, 6, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 6) * 12),
    (1127, 7, 20, (SELECT precio_producto FROM productos WHERE cod_producto = 7) * 20),
    (1127, 8, 15, (SELECT precio_producto FROM productos WHERE cod_producto = 8) * 15),
    (1127, 9, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 9) * 8),
    (1127, 10, 25, (SELECT precio_producto FROM productos WHERE cod_producto = 10) * 25),

    -- Factura 1128: Subtotal =
    (1128, 11, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 11) * 10),
    (1128, 12, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 12) * 6),
    (1128, 13, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 13) * 8),
    (1128, 14, 4, (SELECT precio_producto FROM productos WHERE cod_producto = 14) * 4),
    (1128, 15, 3, (SELECT precio_producto FROM productos WHERE cod_producto = 15) * 3),

    -- Factura 1129: Subtotal =
    (1129, 16, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 16) * 12),
    (1129, 17, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 17) * 10),
    (1129, 18, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 18) * 8),
    (1129, 19, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 19) * 6),

    -- Factura 1130: Subtotal =
    (1130, 22, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 22) * 12),
    (1130, 23, 15, (SELECT precio_producto FROM productos WHERE cod_producto = 23) * 15),
    (1130, 24, 20, (SELECT precio_producto FROM productos WHERE cod_producto = 24) * 20),
    (1130, 25, 30, (SELECT precio_producto FROM productos WHERE cod_producto = 25) * 30),
    (1130, 26, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 26) * 10),

    -- Factura 1131: Subtotal =
    (1131, 27, 15, (SELECT precio_producto FROM productos WHERE cod_producto = 27) * 15),
    (1131, 28, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 28) * 10),
    (1131, 29, 20, (SELECT precio_producto FROM productos WHERE cod_producto = 29) * 20),
    (1131, 30, 25, (SELECT precio_producto FROM productos WHERE cod_producto = 30) * 25),

    -- Factura 1132: Subtotal =
    (1132, 31, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 31) * 5),
    (1132, 32, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 32) * 8),
    (1132, 33, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 33) * 12),
    (1132, 34, 15, (SELECT precio_producto FROM productos WHERE cod_producto = 34) * 15),

    -- Factura 1133: Subtotal =
    (1133, 35, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 35) * 10),
    (1133, 36, 20, (SELECT precio_producto FROM productos WHERE cod_producto = 36) * 20),
    (1133, 37, 25, (SELECT precio_producto FROM productos WHERE cod_producto = 37) * 25),
    (1133, 38, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 38) * 12),
    (1133, 39, 15, (SELECT precio_producto FROM productos WHERE cod_producto = 39) * 15),

    -- Factura 1134: Subtotal =
    (1134, 41, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 41) * 6),
    (1134, 42, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 42) * 10),
    (1134, 43, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 43) * 12),
    (1134, 44, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 44) * 8),
    (1134, 45, 20, (SELECT precio_producto FROM productos WHERE cod_producto = 45) * 20),

    -- Factura 1135: Subtotal =
    (1135, 46, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 46) * 10),
    (1135, 48, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 48) * 6),
    (1135, 49, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 49) * 5),
    (1135, 50, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 50) * 12),

    -- Factura 1136: Subtotal =
    (1136, 1, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 1) * 5),
    (1136, 3, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 3) * 6),
    (1136, 4, 3, (SELECT precio_producto FROM productos WHERE cod_producto = 4) * 3),
    (1136, 5, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 5) * 6),

    -- Factura 1137: Subtotal =
    (1137, 7, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 7) * 12),
    (1137, 8, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 8) * 10),
    (1137, 9, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 9) * 8),
    (1137, 10, 15, (SELECT precio_producto FROM productos WHERE cod_producto = 10) * 15),
    (1137, 11, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 11) * 10),

    -- Factura 1138: Subtotal =
    (1138, 12, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 12) * 12),
    (1138, 13, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 13) * 8),
    (1138, 14, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 14) * 5),
    (1138, 15, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 15) * 8),
    (1138, 16, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 16) * 10),

    -- Factura 1139: Subtotal =
    (1139, 17, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 17) * 8),
    (1139, 18, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 18) * 10),
    (1139, 19, 4, (SELECT precio_producto FROM productos WHERE cod_producto = 19) * 4),
    (1139, 20, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 20) * 6),

    -- Factura 1140: Subtotal =
    (1140, 21, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 21) * 6),
    (1140, 22, 15, (SELECT precio_producto FROM productos WHERE cod_producto = 22) * 15),
    (1140, 23, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 23) * 10),
    (1140, 24, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 24) * 5),

    -- Factura 1141: Subtotal =
    (1141, 25, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 25) * 6),
    (1141, 26, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 26) * 5),
    (1141, 27, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 27) * 8),
    (1141, 28, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 28) * 10),
    (1141, 29, 7, (SELECT precio_producto FROM productos WHERE cod_producto = 29) * 7),
    (1141, 30, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 30) * 12),

    -- Factura 1142: Subtotal =
    (1142, 31, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 31) * 10),
    (1142, 33, 15, (SELECT precio_producto FROM productos WHERE cod_producto = 33) * 15),
    (1142, 34, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 34) * 12),
    (1142, 35, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 35) * 10),
    (1142, 36, 15, (SELECT precio_producto FROM productos WHERE cod_producto = 36) * 15),
    (1142, 37, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 37) * 5),

    -- Factura 1143: Subtotal =
    (1143, 38, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 38) * 8),
    (1143, 39, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 39) * 6),
    (1143, 40, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 40) * 10),
    (1143, 41, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 41) * 12),
    (1143, 42, 15, (SELECT precio_producto FROM productos WHERE cod_producto = 42) * 15),

    -- Factura 1144: Subtotal =
    (1144, 43, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 43) * 10),
    (1144, 44, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 44) * 12),
    (1144, 45, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 45) * 8),
    (1144, 46, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 46) * 5),
    (1144, 47, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 47) * 6),
    (1144, 49, 7, (SELECT precio_producto FROM productos WHERE cod_producto = 49) * 7),
    (1144, 50, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 50) * 5),

    -- Factura 1145: Subtotal =
    (1145, 1, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 1) * 5),
    (1145, 2, 4, (SELECT precio_producto FROM productos WHERE cod_producto = 2) * 4),
    (1145, 3, 4, (SELECT precio_producto FROM productos WHERE cod_producto = 3) * 4),
    (1145, 4, 3, (SELECT precio_producto FROM productos WHERE cod_producto = 4) * 3),

    -- Factura 1146: Subtotal =
    (1146, 5, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 5) * 8),
    (1146, 6, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 6) * 6),
    (1146, 7, 15, (SELECT precio_producto FROM productos WHERE cod_producto = 7) * 15),
    (1146, 8, 9, (SELECT precio_producto FROM productos WHERE cod_producto = 8) * 9),
    (1146, 10, 11, (SELECT precio_producto FROM productos WHERE cod_producto = 10) * 11),

    -- Factura 1147: Subtotal =
    (1147, 11, 20, (SELECT precio_producto FROM productos WHERE cod_producto = 11) * 20),
    (1147, 12, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 12) * 8),
    (1147, 13, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 13) * 10),
    (1147, 14, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 14) * 6),
    (1147, 15, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 15) * 12),
    (1147, 16, 4, (SELECT precio_producto FROM productos WHERE cod_producto = 16) * 4),

     -- Factura 1148: Subtotal =
    (1148, 11, 20, (SELECT precio_producto FROM productos WHERE cod_producto = 11) * 20),
    (1148, 12, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 12) * 8),
    (1148, 13, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 13) * 10),
    (1148, 14, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 14) * 8),

    -- Factura 1149: Subtotal =
    (1149, 15, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 15) * 10),
    (1149, 16, 4, (SELECT precio_producto FROM productos WHERE cod_producto = 16) * 4),
    (1149, 17, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 17) * 8),
    (1149, 18, 3, (SELECT precio_producto FROM productos WHERE cod_producto = 18) * 3),
    (1149, 19, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 19) * 5),
    (1149, 20, 7, (SELECT precio_producto FROM productos WHERE cod_producto = 20) * 7),

    -- Factura 1150: Subtotal =
    (1150, 21, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 21) * 6),
    (1150, 22, 15, (SELECT precio_producto FROM productos WHERE cod_producto = 22) * 15),
    (1150, 23, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 23) * 10),
    (1150, 24, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 24) * 5),
    (1150, 25, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 25) * 10),
    (1150, 26, 15, (SELECT precio_producto FROM productos WHERE cod_producto = 26) * 15),

    -- Factura 1151: Subtotal =
    (1151, 31, 7, (SELECT precio_producto FROM productos WHERE cod_producto = 31) * 7),
    (1151, 32, 3, (SELECT precio_producto FROM productos WHERE cod_producto = 32) * 3),
    (1151, 33, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 33) * 5),
    (1151, 34, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 34) * 8),
    (1151, 35, 11, (SELECT precio_producto FROM productos WHERE cod_producto = 35) * 11),
    (1151, 36, 15, (SELECT precio_producto FROM productos WHERE cod_producto = 36) * 15),

    -- Factura 1152: Subtotal =
    (1152, 37, 15, (SELECT precio_producto FROM productos WHERE cod_producto = 37) * 15),
    (1152, 38, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 38) * 8),
    (1152, 39, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 39) * 6),
    (1152, 40, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 40) * 10),
    (1152, 41, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 41) * 12),
    (1152, 42, 15, (SELECT precio_producto FROM productos WHERE cod_producto = 42) * 15),
    (1152, 43, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 43) * 10),

    -- Factura 1153: Subtotal =
    (1153, 44, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 44) * 12),
    (1153, 45, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 45) * 8),
    (1153, 46, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 46) * 5),
    (1153, 47, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 47) * 6),
    (1153, 48, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 48) * 10),
    (1153, 49, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 49) * 10),
    (1153, 50, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 50) * 5),

    -- Factura 1154: Subtotal =
    (1154, 1, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 1) * 5),
    (1154, 2, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 2) * 8),
    (1154, 3, 4, (SELECT precio_producto FROM productos WHERE cod_producto = 3) * 4),

    -- Factura 1155: Subtotal =
    (1155, 4, 3, (SELECT precio_producto FROM productos WHERE cod_producto = 4) * 3),
    (1155, 5, 10, (SELECT precio_producto FROM productos WHERE cod_producto = 5) * 10),
    (1155, 7, 7, (SELECT precio_producto FROM productos WHERE cod_producto = 7) * 7),
    (1155, 8, 12, (SELECT precio_producto FROM productos WHERE cod_producto = 8) * 12),
    (1155, 10, 5, (SELECT precio_producto FROM productos WHERE cod_producto = 10) * 5),

    -- Factura 1156
    (1156, 17, 8, (SELECT precio_producto FROM productos WHERE cod_producto = 17) * 8),
    (1156, 18, 4, (SELECT precio_producto FROM productos WHERE cod_producto = 18) * 4),
    (1156, 20, 2, (SELECT precio_producto FROM productos WHERE cod_producto = 20) * 2),
    (1156, 21, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 21) * 6),
    (1156, 22, 9, (SELECT precio_producto FROM productos WHERE cod_producto = 22) * 9),
    (1156, 23, 6, (SELECT precio_producto FROM productos WHERE cod_producto = 23) * 6)
;

-- Mayo 2024 📌
INSERT INTO estado_pago_factura (pfk_factura, iva_aplicado, subtotal, total, pago_total, numero_abonos)
VALUES 
    (1126, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1126), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1127, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1127), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1128, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1128), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1129, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1129), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1130, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1130), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1131, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1131), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1132, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1132), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1133, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1133), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 3),

    (1134, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1134), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 3),

    (1135, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1135), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1136, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1136), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1137, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1137), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1138, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1138), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 3),

    (1139, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1139), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 3),

    (1140, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1140), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1141, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1141), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1142, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1142), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1143, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1143), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    true, 1),

    (1144, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1144), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 3),

    (1145, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1145), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 3),

    (1146, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1146), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 3),

    (1147, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1147), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1148, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1148), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1149, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1149), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1150, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1150), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1151, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1151), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1152, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1152), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1153, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1153), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1154, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1154), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1155, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1155), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2),

    (1156, 19, 
    (select SUM(subtotal_producto) as subtotal_factura from detalle_factura where fk_factura = 1156), 
    ((subtotal * (iva_aplicado / 100)) + subtotal), 
    false, 2)
;

-- Mayo 2024 📌
INSERT INTO abonos_factura (fk_factura, metodo_pago, valor_abono, fecha_abono) 
VALUES   
    -- Factura 1126 numero_abonos = 1 / total = 369495
    (1126, 'Digital', 369495, '2024-05-01'),
    
    -- Factura 1127 numero_abonos = 2 / total = 605353
    (1127, 'Efectivo', 393021, '2024-05-02'),
    -- (1127, 'Digital', 212332, '2024-05-17'), -- Registros pendientes
    
    -- Factura 1128 numero_abonos = 1 / total = 425544
    (1128, 'Digital', 425544, '2024-05-03'),
    
    -- Factura 1129 numero_abonos = 1 / total = 867510
    (1129, 'Digital', 867510, '2024-05-03'),
    
    -- Factura 1130 numero_abonos = 2 / total = 614040
    (1130, 'Efectivo', 399229, '2024-05-04'),
    -- (1130, 'Digital', 214811, '2024-05-19'), -- Registros pendientes
    
    -- Factura 1131 numero_abonos = 2 / total = 722330
    (1131, 'Efectivo', 470746, '2024-05-04'),
    -- (1131, 'Digital', 251584, '2024-05-19'), -- Registros pendientes
    
    -- Factura 1132 numero_abonos = 2 / total = 432446
    (1132, 'Efectivo', 281500, '2024-05-05'),
    -- (1132, 'Digital', 150946, '2024-05-20'), -- Registros pendientes
    
    -- Factura 1133 numero_abonos = 3 / total = 777665
    (1133, 'Efectivo', 500000, '2024-05-06'),
    (1133, 'Digital', 200000, '2024-05-21'),
    
    -- Factura 1134 numero_abonos = 3 / total = 979608
    (1134, 'Efectivo', 600000, '2024-05-07'),
    (1134, 'Digital', 300000, '2024-05-22'),
    
    -- Factura 1135 numero_abonos = 2 / total = 750890
    (1135, 'Efectivo', 488290, '2024-05-07'),
    -- (1135, 'Digital', 262600, '2024-05-22'), -- Registros pendientes
    
    -- Factura 1136 numero_abonos = 2 / total = 605115
    (1136, 'Efectivo', 393697, '2024-05-08'),
    -- (1136, 'Digital', 211418, '2024-05-23'), -- Registros pendientes
    
    -- Factura 1137 numero_abonos = 1 / total = 356643
    (1137, 'Digital', 356643, '2024-05-09'),
    
    -- Factura 1138 numero_abonos = 3 / total = 788256
    (1138, 'Efectivo', 500000, '2024-05-10'),
    (1138, 'Digital', 200000, '2024-05-19'),
    
    -- Factura 1139 numero_abonos = 3 / total = 546924
    (1139, 'Efectivo', 350000, '2024-05-11'),
    (1139, 'Digital', 150000, '2024-05-22'),



    
    -- Factura 1140 numero_abonos = 1 / total = 380800
    (1140, 'Efectivo', 380800, '2024-05-11'),
    
    -- Factura 1141 numero_abonos = 2 / total = 622251
    (1141, 'Digital', 403738, '2024-05-12'),
    -- (1141, 'Efectivo', 218513, '2024-05-23'), -- Registros pendientes
    
    -- Factura 1142 numero_abonos = 2 / total = 838950
    (1142, 'Efectivo', 419475, '2024-05-14'),
    -- (1142, 'Digital', 419475, '2024-05-26'), -- Registros pendientes
    
    -- Factura 1143 numero_abonos = 1 / total = 432446
    (1143, 'Digital', 432446, '2024-05-13'),
    
    -- Factura 1144 numero_abonos = 3 / total = 1010905
    (1144, 'Digital', 336968, '2024-05-15'),
    (1144, 'Digital', 336968, '2024-05-25'),
    
    -- Factura 1145 numero_abonos = 3 / total = 711025
    (1145, 'Efectivo', 237008, '2024-05-15'),
    (1145, 'Digital', 237008, '2024-05-27'),
    
    -- Factura 1146 numero_abonos = 3 / total = 711382
    (1146, 'Efectivo', 237127, '2024-05-16'),
    (1146, 'Digital', 237127, '2024-05-28'),
    
    -- Factura 1147 numero_abonos = 2 / total = 742084
    (1147, 'Digital', 371042, '2024-05-18'),
    
    -- Factura 1148 numero_abonos = 2 / total = 581196
    (1148, 'Efectivo', 290598, '2024-05-19'),
    
    -- Factura 1149 numero_abonos = 2 / total = 768978
    (1149, 'Digital', 384489, '2024-05-19'),
    
    -- Factura 1150 numero_abonos = 2 / total = 612850
    (1150, 'Efectivo', 306425, '2024-05-20'),



    
    -- Factura 1151 numero_abonos = 2 / total = 630700
    (1151, 'Digital', 315350, '2024-05-22'),
    
    -- Factura 1152 numero_abonos = 2 / total = 714476
    (1152, 'Efectivo', 357238, '2024-05-23'),
    
    -- Factura 1153 numero_abonos = 2 / total = 1020425
    (1153, 'Digital', 510212, '2024-05-24'),
    
    -- Factura 1154 numero_abonos = 2 / total = 1045296
    (1154, 'Efectivo', 522648, '2024-05-27'),
    
    -- Factura 1155 numero_abonos = 2 / total = 808843
    (1155, 'Digital', 404421, '2024-05-28'),
    
    -- Factura 1156 numero_abonos = 2 / total = 489090
    (1156, 'Efectivo', 244545, '2024-05-31')
;