create database Facturacion_DB;
use Facturacion_DB;

CREATE TABLE tipo_persona(
	id_tipo_persona int auto_increment,
    tipo_persona varchar(8) not null,
    PRIMARY KEY(id_tipo_persona)
);

CREATE TABLE tipo_identificacion(
	tipo_id varchar(4) NOT NULL,
	PRIMARY KEY (tipo_id)
);

CREATE TABLE zonas_ventas(
    id_zona varchar(4) not null,
    zona varchar(20) not null,
    PRIMARY KEY (id_zona)
);

CREATE TABLE datos_persona (
	id_persona int auto_increment,
    fk_tipo_identificacion varchar(4) not null,
    n_identificacion varchar(15) not null unique,
    nombre_1 varchar(45) not null,
    nombre_2 varchar(45),
    apellido_1 varchar(45) not null,
    apellido_2 varchar(45),
    telefono varchar(15) not null,
    direccion varchar(65) not null,
    correo varchar(70) not null,
    fk_tipo_persona int not null,
    fk_zona_venta varchar(4) not null,
    estado_persona tinyint not null,
    PRIMARY KEY (id_persona),
    FOREIGN KEY (fk_tipo_identificacion) REFERENCES tipo_identificacion(tipo_id),
    FOREIGN KEY (fk_tipo_persona) REFERENCES tipo_persona(id_tipo_persona),
    FOREIGN KEY (fk_zona_venta) REFERENCES zonas_ventas(id_zona)
);

CREATE TABLE usuarios(
	pfk_usuario int not null,
    alias varchar(15) NOT NULL unique,
    contraseña TEXT(80) NOT NULL,
    rol tinyint not null,
    PRIMARY KEY(pfk_usuario),
    FOREIGN KEY (pfk_usuario) REFERENCES datos_persona(id_persona)
);

CREATE TABLE categorias (
	categoria varchar(30) not null,
    -- iva_categoria int not null,
    PRIMARY KEY (categoria)
);

CREATE TABLE productos (
	cod_producto int auto_increment,
    fk_categoria varchar(30) not null,
    nombre_producto varchar(45) not null,
    descripcion varchar(50),
    precio_producto int not null,
    PRIMARY KEY (cod_producto),
    FOREIGN KEY (fk_categoria) REFERENCES categorias(categoria)
);

CREATE TABLE facturas(
	cod_factura int auto_increment,
    fk_cliente int not null,
    fecha_registro datetime not null,
    fk_vendedor int not null,
    PRIMARY KEY (cod_factura),
    FOREIGN KEY (fk_cliente) REFERENCES datos_persona(id_persona),
    FOREIGN KEY (fk_vendedor) REFERENCES usuarios(pfk_usuario)
)AUTO_INCREMENT = 1010;

CREATE TABLE detalle_factura (
    cod_detalle int auto_increment,
    fk_factura int not null,
    fk_producto int not null,
    cantidad int not null,
    subtotal_producto int not null,
    PRIMARY KEY (cod_detalle),
    FOREIGN KEY (fk_factura) REFERENCES facturas(cod_factura),
    FOREIGN KEY (fk_producto) REFERENCES productos(cod_producto)
);

CREATE TABLE estado_pago_factura (
    pfk_factura int not null,
    iva_aplicado int not null,
    subtotal int not null,
    total int not null,
    pago_total tinyint not null,
    numero_abonos int not null,
    -- pago de facturas en menos de 30 días 📍
    PRIMARY KEY (pfk_factura),
    FOREIGN KEY (pfk_factura) REFERENCES facturas(cod_factura)
);

CREATE TABLE abonos_factura (
	id_abono int auto_increment,
    fk_factura int not null,
    metodo_pago varchar(20) not null,
    valor_abono int not null,
    fecha_abono date not null,
    PRIMARY KEY (id_abono),
    FOREIGN KEY (fk_factura) REFERENCES estado_pago_factura(pfk_factura)
);