create table if not exists cliente(
	id_cliente int primary key,
	clie_nombre varchar,
	clie_apellido varchar,
	clie_telefono numeric,
	clie_direccion varchar
);

CREATE TABLE if not exists producto (
    id_producto INT primary key,
	prod_nombre varchar,
	prod_percio int,
	prod_lote int,
	prod_fechadevencimiento date

);

CREATE TABLE if not exists compra (
    id_compra INT primary key,
    id_cliente INT,
	id_producto INT,
	comp_fecha date,
	comp_cantidad int,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

INSERT INTO cliente (id_cliente,clie_nombre, clie_apellido, clie_telefono, clie_direccion)
VALUES ('01', 'daniela', 'villamizar', 12345678, 'simon');

select * from cliente;

INSERT INTO cliente (id_cliente,clie_nombre, clie_apellido, clie_telefono, clie_direccion)
VALUES ('02', 'karen', 'sandoval', 12345679, 'iser');

select * from cliente;

INSERT INTO producto (id_producto, prod_nombre, prod_percio, prod_lote, prod_fechadevencimiento)
VALUES ('01', 'celular', '600000', '0101', '01/08/2016');
select * from producto;

INSERT INTO producto (id_producto, prod_nombre, prod_percio, prod_lote, prod_fechadevencimiento)
VALUES ('02', 'computador', '6000000', '0202', '01/08/2016');
select * from producto;

INSERT INTO compra (id_compra, id_cliente, id_producto, comp_fecha, comp_cantidad)
VALUES ('01', '01', '02', '05/04/2024', '1');
select * from compra;

INSERT INTO compra (id_compra, id_cliente, id_producto, comp_fecha, comp_cantidad)
VALUES ('02', '02', '01', '05/04/2024', '3');
select * from compra;

SELECT c.id_compra, cl.clie_nombre, cl.clie_apellido, p.prod_nombre, p.prod_percio, c.comp_fecha, c.comp_cantidad
FROM compra c
JOIN cliente cl ON c.id_cliente = cl.id_cliente
JOIN producto p ON c.id_producto = p.id_producto
WHERE cl.id_cliente = '01';

