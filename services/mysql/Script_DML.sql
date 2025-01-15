
-- ///////////////////////////
--        Inserciones 📌
-- /////////////////////////

INSERT INTO tipo_persona(tipo_persona)
VALUES 
    ('Cliente'),
    ('Usuario')
;

INSERT INTO tipo_identificacion(tipo_id)
VALUES  
    ("CC"), 
    ("CE"), 
    ("Otro")
; 

INSERT INTO zonas_ventas(id_zona, zona)
VALUES  
	('ZN00', 'No definida'),
    ('ZN01', 'Sur'),
    ('ZN02', 'Norte'),
    ('ZN03', 'Oriente'),
    ('ZN04', 'Occidente')
;

 -- conocer en que zona se encuentran asignados las personas📍
INSERT INTO datos_persona (fk_tipo_identificacion, n_identificacion, nombre_1, nombre_2, apellido_1, apellido_2, telefono, direccion, correo, fk_tipo_persona, fk_zona_venta, estado_persona) 
VALUES
    -- Usuarios aplicativo 📌
	('CC', '444555666', 'Edwin', null, 'Marín', null, '3114445660', 'Calle 56 # 12 - 06', 'facturasversallesddne@gmail.com', '2', 'ZN00', 1), -- 1
    ('CC', '123456789', 'Juan', null, 'Pérez', 'Sabogal', '3001234590', 'Calle 12 # 08 - 10', 'facturasversallesddne@gmail.com', '2', 'ZN02', 1), -- 2
    ('CC', '777888999', 'Ana', 'Maria', 'García', null, '3117778890', 'Avenida 32 # 12 - 06', 'facturasversallesddne@gmail.com', '2', 'ZN03', 1), -- 3
    ('CC', '999888777', 'Enrique', null, 'Hernández', null, '319998770', 'Carrera 65 # 08 - 10', 'facturasversallesddne@gmail.com', '2', 'ZN04', 1), -- 4
    ('CE', '666777888', 'Laura', null, 'Rodríguez', 'Parrado', '316667880', 'Calle 89 # 12 - 06', 'facturasversallesddne@gmail.com', '2', 'ZN01', 1), -- 5
    -- Clientes 📌
    -- ZN02
	('Otro', '987654321', 'María', null, 'Gómez', null, '319876210', 'Carrera 46 # 08 - 10', 'facturasversallesddne@gmail.com', '1', 'ZN02', 1), -- 6
    ('CE', '111222333', 'Carlos', null, 'López', null, '3111112330', 'Avenida 79 # 12 - 06', 'facturasversallesddne@gmail.com', '1', 'ZN02', 1), -- 7
    ('CC', '543216789', 'Sofía', null, 'López', null, '315432890', 'Calle 76 # 08 - 10', 'facturasversallesddne@gmail.com', '1', 'ZN02', 1), -- 8
    ('Otro', '222333444', 'Manuel', null, 'Díaz', null, '3001113330', 'Avenida 26 # 12 - 06', 'facturasversallesddne@gmail.com', '1', 'ZN02', 1), -- 9
    ('Otro', '987654323', 'María', null, 'Gómez', null, '3119876210', 'Carrera 46 # 08 - 10', 'facturasversallesddne@gmail.com', '1', 'ZN02', 1), -- 10
    ('CE', '111222336', 'Carlos', null, 'López', null, '311112330', 'Avenida 79 # 12 - 06', 'facturasversallesddne@gmail.com', '1', 'ZN02', 1), -- 11
    ('CC', '543216783', 'Sofía', null, 'López', null, '3115432890', 'Calle 76 # 08 - 10', 'facturasversallesddne@gmail.com', '1', 'ZN02', 1), -- 12
    ('Otro', '222333447', 'Manuel', null, 'Díaz', null, '3001113330', 'Avenida 26 # 12 - 06', 'facturasversallesddne@gmail.com', '1', 'ZN02', 1), -- 13
    ('CC', '444555665', 'Ana', 'Isabel', 'Pérez', null, '3114445566', 'Calle 10 # 20 - 30', 'facturasversallesddne@gmail.com', '1', 'ZN02', 1), -- 14
    -- ZN03
	('CE', '777888997', 'Luis', null, 'Ramírez', 'Torres', '7778999', 'Carrera 55 # 22 - 15', 'facturasversallesddne@gmail.com', '1', 'ZN03', 1), -- 15
    ('CC', '999888771', 'Claudia', null, 'Martínez', null, '3119998777', 'Avenida 34 # 18 - 25', 'facturasversallesddne@gmail.com', '1', 'ZN03', 1), -- 16
    ('Otro', '555444333', 'Miguel', 'Ángel', 'Rodríguez', null, '315554333', 'Calle 65 # 14 - 12', 'facturasversallesddne@gmail.com', '1', 'ZN03', 1), -- 17
    ('CC', '333444555', 'Elena', null, 'Fernández', 'López', '313334555', 'Carrera 15 # 18 - 19', 'facturasversallesddne@gmail.com', '1', 'ZN03', 1), -- 18
    ('CE', '123456788', 'Jorge', 'Luis', 'Vargas', null, '3111234567', 'Avenida 45 # 10 - 20', 'facturasversallesddne@gmail.com', '1', 'ZN03', 1), -- 19
    ('CC', '111333555', 'Gloria', null, 'Muñoz', 'Ríos', '3001113555', 'Calle 12 # 13 - 14', 'facturasversallesddne@gmail.com', '1', 'ZN03', 1), -- 20
    ('Otro', '222444666', 'Andrés', null, 'Moreno', null, '312224666', 'Carrera 25 # 14 - 10', 'facturasversallesddne@gmail.com', '1', 'ZN03', 1), -- 21
    -- ZN04
	('CC', '333555777', 'Lucía', 'María', 'Gómez', null, '3113335777', 'Avenida 16 # 22 - 30', 'facturasversallesddne@gmail.com', '1', 'ZN04', 1), -- 22
    ('CE', '444666888', 'Fernando', null, 'Hernández', null, '314446888', 'Calle 40 # 10 - 12', 'facturasversallesddne@gmail.com', '1', 'ZN04', 1), -- 23
    ('CC', '555777999', 'Paula', null, 'Ortiz', 'Martínez', '3005557999', 'Carrera 18 # 25 - 40', 'facturasversallesddne@gmail.com', '1', 'ZN04', 1), -- 24
    ('Otro', '666888000', 'Raúl', 'Emilio', 'Suárez', null, '3116668000', 'Avenida 27 # 14 - 22', 'facturasversallesddne@gmail.com', '1', 'ZN04', 1), -- 25
    ('CC', '777999111', 'Marta', null, 'Pineda', 'López', '317779111', 'Calle 31 # 18 - 10', 'facturasversallesddne@gmail.com', '1', 'ZN04', 1), -- 26
    ('CE', '888000222', 'Sergio', 'Andrés', 'Castro', null, '318880222', 'Carrera 52 # 10 - 23', 'facturasversallesddne@gmail.com', '1', 'ZN04', 1), -- 27
    ('CC', '999111333', 'Natalia', null, 'Ramos', 'García', '3119991133', 'Avenida 29 # 14 - 16', 'facturasversallesddne@gmail.com', '1', 'ZN04', 1), -- 28
    ('Otro', '000222444', 'Esteban', null, 'Guzmán', null, '310002444', 'Calle 11 # 15 - 21', 'facturasversallesddne@gmail.com', '1', 'ZN04', 1), -- 29
    -- ZN01
	('CC', '111333666', 'Verónica', 'Lucía', 'Navarro', null, '3112113666', 'Carrera 41 # 20 - 11', 'facturasversallesddne@gmail.com', '1', 'ZN01', 1), -- 30
    ('CE', '222444777', 'Javier', null, 'Vega', null, '312224777', 'Avenida 32 # 18 - 10', 'facturasversallesddne@gmail.com', '1', 'ZN01', 1), -- 31
    ('Otro', '333555888', 'Alejandra', 'María', 'Rubio', null, '3003335888', 'Calle 14 # 15 - 13', 'facturasversallesddne@gmail.com', '1', 'ZN01', 1), -- 32
    ('CC', '444666999', 'David', null, 'Mejía', null, '314446999', 'Carrera 34 # 12 - 11', 'facturasversallesddne@gmail.com', '1', 'ZN01', 1), -- 33
    ('CE', '555777111', 'Inés', null, 'Flores', 'Sánchez', '3115557111', 'Avenida 56 # 19 - 12', 'facturasversallesddne@gmail.com', '1', 'ZN01', 1), -- 34
    ('Otro', '666888222', 'Gonzalo', 'María', 'García', null, '316668222', 'Calle 25 # 14 - 10', 'facturasversallesddne@gmail.com', '1', 'ZN01', 1), -- 35
    ('CC', '777999333', 'Isabel', null, 'Duarte', 'Vargas', '3007779333', 'Carrera 37 # 18 - 21', 'facturasversallesddne@gmail.com', '1', 'ZN01', 1), -- 36
    ('CE', '888000444', 'Felipe', null, 'Montoya', null, '318880444', 'Avenida 50 # 16 - 14', 'facturasversallesddne@gmail.com', '1', 'ZN01', 1), -- 37
    ('Otro', '999111555', 'Gabriela', 'Luz', 'Quintero', null, '319991155', 'Calle 22 # 12 - 10', 'facturasversallesddne@gmail.com', '1', 'ZN01', 1), -- 38
    ('CC', '000222666', 'Pablo', null, 'Salazar', null, '3110002666', 'Carrera 33 # 20 - 30', 'facturasversallesddne@gmail.com', '1', 'ZN01', 1) -- 39
;

INSERT INTO usuarios(pfk_usuario, alias, contraseña, rol)
VALUES 
    (1, 'Admin', '$2b$10$2cRofAbM9Szb62v9FzbA/eZPRhZffVaxSs.j0kCsTkvtEM029GfGi', 1), -- (admin123)
    (2, 'Vendedor 1', '$2b$10$uzFOndb2j5RhAU8F/gnNMOqZrOQeK/6m6po0sL8k73PKkfKbySiGK', 2), -- (ventas123)
    (3, 'Vendedor 2', '$2b$10$uzFOndb2j5RhAU8F/gnNMOqZrOQeK/6m6po0sL8k73PKkfKbySiGK', 2), -- 2
    (4, 'Vendedor 3', '$2b$10$uzFOndb2j5RhAU8F/gnNMOqZrOQeK/6m6po0sL8k73PKkfKbySiGK', 2), -- 3
    (5, 'Vendedor 4', '$2b$10$uzFOndb2j5RhAU8F/gnNMOqZrOQeK/6m6po0sL8k73PKkfKbySiGK', 2) -- 4
;

INSERT INTO categorias(categoria)
VALUES 
    ('Escolar'),
    ('Oficina'),
    ('Papeles'),
    ('Manualidades')
;

INSERT INTO productos(fk_categoria, nombre_producto, descripcion, precio_producto)
VALUES 
    ('Escolar', 'Boligrafo Negro', 'Paquete x 12', (1540 * 12)), -- 1
    ('Oficina', 'Agenda 2024', 'Paquete x 5', (18500 * 5)), -- 2
    ('Papeles', 'Papel Foami Negro', 'Paquete x 12', 11500), -- 3
    ('Oficina', 'Folder AZ', 'Paquete x 3 - Oficio', (9900 * 3)), -- 4
    ('Manualidades', 'Pintura', 'Paquete x 5 - Cajas Multicolor', (8600 * 5)), -- 5
    ('Papeles', 'Sobre Manila', 'Paquete x 10', 6400), -- 6
    ('Manualidades', 'Tijeras', 'Paquete x 5', (1100 * 5)), -- 7
    ('Escolar', 'Marcadores', 'Caja x 3', (2600 * 3)), -- 8
    ('Papeles', 'Cartulina Pliego', 'Paquete x 10 - Multicolor', (780 * 10)), -- 9
    ('Manualidades', 'Set de Pinceles', 'Paquete x 3', 5700), -- 10
    ('Papeles', 'Cartulina Pliego', 'Unidad', 780), -- 11
    ('Escolar', 'Cuaderno', 'Paquete x 6', (3200 * 6)), -- 12
    ('Oficina', 'Grapadora', 'Paquete x 4', (3500 * 4)), -- 13
    ('Papeles', 'Resma de Papel', 'Unidad', 22400), -- 14
    ('Manualidades', 'Pegamento Líquido', 'Paquete x 5', (2200 * 5)), -- 15
    ('Escolar', 'Lápiz Negro', 'Paquete x 12', (1000 * 12)), -- 16
    ('Oficina', 'Sello de Fecha', 'Unidad', 18500), -- 17
    ('Papeles', 'Papel Fotocopia', 'Paquete x 10', (500 * 10)), -- 18
    ('Manualidades', 'Set de Acrílicos', 'Paquete x 5', (12000 * 5)), -- 19
    ('Escolar', 'Borrador', 'Paquete x 6', (600 * 6)), -- 20
    ('Oficina', 'Perforadora', 'Unidad', 22000), -- 21
    ('Papeles', 'Papel Bond', 'Paquete x 10', (700 * 10)), -- 22
    ('Manualidades', 'Crayones', 'Paquete x 8', (850 * 8)), -- 23
    ('Escolar', 'Sacapuntas', 'Paquete x 6', (500 * 6)), -- 24
    ('Oficina', 'Cinta Adhesiva', 'Paquete x 4', (1500 * 4)), -- 25
    ('Papeles', 'Papel Pergamino', 'Paquete x 5', (1800 * 5)), -- 26
    ('Manualidades', 'Barra de Plastilina', 'Paquete x 6', (1300 * 6)), -- 27
    ('Escolar', 'Calculadora Casio', 'Unidad', 30000), -- 28
    ('Oficina', 'Corrector Líquido', 'Paquete x 5', (900 * 5)), -- 29
    ('Papeles', 'Papel Crepé', 'Paquete x 10', (400 * 10)), -- 30
    ('Manualidades', 'Témperas', 'Paquete x 6', (2500 * 6)), -- 31
    ('Escolar', 'Regla', 'Paquete x 10', (800 * 10)), -- 32
    ('Oficina', 'Portaminas', 'Paquete x 4', (2800 * 4)), -- 33
    ('Papeles', 'Papel Diamante', 'Paquete x 5', (1200 * 5)), -- 34
    ('Manualidades', 'Brochas', 'Paquete x 3', (7000 * 3)), -- 35
    ('Escolar', 'Tijera Escolar', 'Paquete x 4', (1100 * 4)), -- 36
    ('Oficina', 'Rotulador Permanente', 'Paquete x 6', (1300 * 6)), -- 37
    ('Papeles', 'Papel de Seda', 'Paquete x 8', (500 * 8)), -- 38
    ('Manualidades', 'Brillantina', 'Paquete x 5', (1500 * 5)), -- 39
    ('Escolar', 'Compás', 'Unidad', 5000), -- 40
    ('Oficina', 'Marcador de Pizarra', 'Paquete x 4', (1800 * 4)), -- 41
    ('Papeles', 'Papel Kraft', 'Paquete x 10', (1000 * 10)), -- 42
    ('Manualidades', 'Lentejuelas', 'Paquete x 6', (2000 * 6)), -- 43
    ('Escolar', 'Pegante en Barra', 'Paquete x 5', (900 * 5)), -- 44
    ('Oficina', 'Organizador de Escritorio', 'Unidad', 25000), -- 45
    ('Papeles', 'Papel Tapiz', 'Unidad', 5500), -- 46
    ('Manualidades', 'Papel de Colores', 'Paquete x 8', (750 * 8)), -- 47
    ('Escolar', 'Transportador', 'Unidad', 2000), -- 48
    ('Oficina', 'Caja Archivadora', 'Paquete x 2', (18000 * 2)), -- 49
    ('Papeles', 'Papel Fotográfico', 'Paquete x 10', (3200 * 10)) -- 50
;