MariaDB [(none)]> MariaDB [(none)]> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| bd_transporte_logistica |
| contacto                |
| createinsert            |
| information_schema      |
| mysql                   |
| performance_schema      |
| phpmyadmin              |
| plataforma_programacion |
| registro_porcicarnes    |
| sistema_tutorial        |
| test                    |
| tienda_porcicarnes      |
| tutorial_bd             |
+-------------------------+
13 rows in set (0.017 sec)

MariaDB [(none)]> CREATE DATABASE nexa_servicios CHARACTER SET utf8mb4 collate utf8mb4_general_ci;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| bd_transporte_logistica |
| contacto                |
| createinsert            |
| information_schema      |
| mysql                   |
| nexa_servicios          |
| performance_schema      |
| phpmyadmin              |
| plataforma_programacion |
| registro_porcicarnes    |
| sistema_tutorial        |
| test                    |
| tienda_porcicarnes      |
| tutorial_bd             |
+-------------------------+
14 rows in set (0.001 sec)

MariaDB [(none)]> USE nexa_servicios;
Database changed
MariaDB [nexa_servicios]> CREATE TABLE roles(
    -> id_rol INT AUTO_INCREMENT PRIMARY KEY,
    -> nombre_rol VARCHAR(50) NOT NULL UNIQUE,
    -> descripcion VARCHAR(255),
    -> estado BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.007 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| roles                    |
+--------------------------+
1 row in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE roles;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| id_rol      | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_rol  | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion | varchar(255) | YES  |     | NULL    |                |
| estado      | tinyint(1)   | NO   |     | 1       |                |
+-------------+--------------+------+-----+---------+----------------+
4 rows in set (0.015 sec)

MariaDB [nexa_servicios]> CREATE TABLE usuarios(
    -> id_rol INT NOT NULL,
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 2
MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| roles                    |
+--------------------------+
1 row in set (0.001 sec)

MariaDB [nexa_servicios]> CREATE TABLE usuarios(
    -> id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    -> id_rol INT  NOT NULL,
    -> nombres VARCHAR(100) NOT NULL,
    -> apellidos VARCHAR(100) NOT NULL,
    -> documento VARCHAR(20) NOT NULL UNIQUE,
    -> correo VARCHAR(150) NOT NULL UNIQUE,
    -> telefono VARCHAR(20).
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '.' at line 8
MariaDB [nexa_servicios]> DROP TABLES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [nexa_servicios]> MariaDB [(none)]> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| bd_transporte_logistica |
| contacto                |
| createinsert            |
| information_schema      |
| mysql                   |
| nexa_servicios          |
| performance_schema      |
| phpmyadmin              |
| plataforma_programacion |
| registro_porcicarnes    |
| sistema_tutorial        |
| test                    |
| tienda_porcicarnes      |
| tutorial_bd             |
+-------------------------+
14 rows in set (0.001 sec)

MariaDB [(none)]> USE nexa_servicios;
Database changed
MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| roles                    |
+--------------------------+
1 row in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE roles;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| id_rol      | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_rol  | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion | varchar(255) | YES  |     | NULL    |                |
| estado      | tinyint(1)   | NO   |     | 1       |                |
+-------------+--------------+------+-----+---------+----------------+
4 rows in set (0.006 sec)

MariaDB [nexa_servicios]> CREATE TABLE usuarios(
    -> id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    -> id_rol INT NOT NULL,
    -> nombres VARCHAR(100) NOT NULL,
    -> apellidos VARCHAR(100) NOT NULL,
    -> documento VARCHAR(20) NOT NULL UNIQUE,
    -> correo VARCHAR(150) NOT NULL UNIQUE,
    -> telefono VARCHAR(20),
    -> contrasena VARCHAR(255) NOT NULL,
    -> estado BOOLEAN NOT NULL DEFAULT TRUE,
    -> rec
    -> fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -> CONSTRAINT fk_usuarios_roles
    -> FOREING KEY (id_rol)
    -> REFERENCES roles(id_rol)
    -> ON UPDATE CASCADE
    -> ON DELETE RESTRICT
    -> )ENGINE=InnoDB;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT fk_usuarios_roles
FOR...' at line 12
MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| roles                    |
+--------------------------+
1 row in set (0.001 sec)

MariaDB [nexa_servicios]> CREATE TABLE usuarios(
    -> id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    -> id_rol INT NOT NULL,
    -> nombre VARCHAR(100) NOT NULL,
    -> documento VARCHAR(20) NOT NULL UNIQUE,
    -> correo VARCHAR(150) NOT NULL UNIQUE,
    -> telefono VARCHAR(20),
    -> contrasena VARCHAR(255) NOT NULL,
    -> estado BOOLEAN NOT NULL DEFAULT TRUE,
    -> fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -> CONSTRAINT fk_usuarios_roles
    -> FOREING KEY (id_rol)
    -> REFERENCES roles(id_rol)
    -> ON UPDATE CASCADE
    -> ON DELETE RESTRICT
    -> ) ENGINE=InnoDB;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FOREING KEY (id_rol)
REFERENCES roles(id_rol)
ON UPDATE CASCADE
ON DELETE RES...' at line 12
MariaDB [nexa_servicios]> CREATE TABLE usuarios (
    ->     id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_rol INT NOT NULL,
    ->     nombres VARCHAR(100) NOT NULL,
    ->     apellidos VARCHAR(100) NOT NULL,
    ->     documento VARCHAR(20) NOT NULL UNIQUE,
    ->     correo VARCHAR(150) NOT NULL UNIQUE,
    ->     telefono VARCHAR(20),
    ->     contrasena VARCHAR(255) NOT NULL,
    ->     estado BOOLEAN NOT NULL DEFAULT TRUE,
    ->     fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     CONSTRAINT fk_usuarios_roles
    ->         FOREIGN KEY (id_rol)
    ->         REFERENCES roles(id_rol)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.010 sec)

MariaDB [nexa_servicios]> MariaDB [(none)]> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| bd_transporte_logistica |
| contacto                |
| createinsert            |
| information_schema      |
| mysql                   |
| nexa_servicios          |
| performance_schema      |
| phpmyadmin              |
| plataforma_programacion |
| registro_porcicarnes    |
| sistema_tutorial        |
| test                    |
| tienda_porcicarnes      |
| tutorial_bd             |
+-------------------------+
14 rows in set (0.001 sec)

MariaDB [(none)]> DROP DATABASE IF EXISTS nexa_servicios;
Query OK, 3 rows affected (0.031 sec)

MariaDB [(none)]> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| bd_transporte_logistica |
| contacto                |
| createinsert            |
| information_schema      |
| mysql                   |
| performance_schema      |
| phpmyadmin              |
| plataforma_programacion |
| registro_porcicarnes    |
| sistema_tutorial        |
| test                    |
| tienda_porcicarnes      |
| tutorial_bd             |
+-------------------------+
13 rows in set (0.001 sec)

MariaDB [(none)]> CREATE DATABASE nexa_servicios;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| bd_transporte_logistica |
| contacto                |
| createinsert            |
| information_schema      |
| mysql                   |
| nexa_servicios          |
| performance_schema      |
| phpmyadmin              |
| plataforma_programacion |
| registro_porcicarnes    |
| sistema_tutorial        |
| test                    |
| tienda_porcicarnes      |
| tutorial_bd             |
+-------------------------+
14 rows in set (0.001 sec)

MariaDB [(none)]> USE nexa_servicios;
Database changed
MariaDB [nexa_servicios]> CREATE TABLE roles(
    -> id_rol INT AUTO_INCREMENT PRIMARY KEY,
    -> nombre_rol VARCHAR(50) NOT NULL UNIQUE,
    -> descripcion VARCHAR(255),
    -> estado BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.018 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| roles                    |
+--------------------------+
1 row in set (0.001 sec)

MariaDB [nexa_servicios]> CREATE TABLE usuarios (
    -> id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    -> id_rol INT NOT NULL,
    -> nombres VARCHAR(100) NOT NULL,
    -> apellidos VARCHAR(100) NOT NULL,
    -> documento VARCHAR(20) NOT NULL UNIQUE,
    -> correo VARCHAR(150) NOT NULL UNIQUE,
    -> telefono VARCHAR(20),
    -> contrasena VARCHAR(255) NOT NULL,
    -> estado BOOLEAN NOT NULL DEFAULT TRUE,
    -> fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -> CONSTRAINT fk_usuarios_roles
    -> FOREING KEY (id_rol)
    -> REFERENCES roles(id_rol)
    -> ON UPDATE CASCADE
    -> ON DELETE RESTRICT
    -> MariaDB [(none)]> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| bd_transporte_logistica |
| contacto                |
| createinsert            |
| information_schema      |
| mysql                   |
| nexa_servicios          |
| performance_schema      |
| phpmyadmin              |
| plataforma_programacion |
| registro_porcicarnes    |
| sistema_tutorial        |
| test                    |
| tienda_porcicarnes      |
| tutorial_bd             |
+-------------------------+
14 rows in set (0.001 sec)

MariaDB [(none)]> DROP nexa_servicios;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'nexa_servicios' at line 1
MariaDB [(none)]> MariaDB [(none)]> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| bd_transporte_logistica |
| contacto                |
| createinsert            |
| information_schema      |
| mysql                   |
| nexa_servicios          |
| performance_schema      |
| phpmyadmin              |
| plataforma_programacion |
| registro_porcicarnes    |
| sistema_tutorial        |
| test                    |
| tienda_porcicarnes      |
| tutorial_bd             |
+-------------------------+
14 rows in set (0.001 sec)

MariaDB [(none)]> DROP DATABASE IF EXISTS nexa_servicios;
Query OK, 1 row affected (0.016 sec)

MariaDB [(none)]> CREATE DATABASE nexa_servicios
    -> CHARACTER SET utf8mb4
    -> COLLATE utf8mb4_general_ci;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> 
MariaDB [(none)]> USE nexa_servicios;
Database changed
MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE roles (
    ->     id_rol INT AUTO_INCREMENT 	RIMARY KEY,
    ->     nombre_rol VARCHAR(50) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255),
    ->     estado BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'KEY,
    nombre_rol VARCHAR(50) NOT NULL UNIQUE,
    descripcion VARCHAR(255)...' at line 2
MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE usuarios (
    ->     id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_rol INT NOT NULL,
    ->     nombres VARCHAR(100) NOT NULL,
    ->     apellidos VARCHAR(100) NOT NULL,
    ->     documento VARCHAR(20) NOT NULL UNIQUE,
    ->     correo VARCHAR(150) NOT NULL UNIQUE,
    ->     telefono VARCHAR(20),
    ->     contrasena VARCHAR(255) NOT NULL,
    ->     estado BOOLEAN NOT NULL DEFAULT TRUE,
    ->     fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     CONSTRAINT fk_usuarios_roles
    ->         FOREIGN KEY (id_rol)
    ->         REFERENCES roles(id_rol)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT
    -> ) ENGINE=InnoDB;
ERROR 1005 (HY000): Can't create table `nexa_servicios`.`usuarios` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE proveedores (
    ->     id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    ->     codigo_proveedor VARCHAR(20) NOT NULL UNIQUE,
    ->     nombre VARCHAR(150) NOT NULL,
    ->     identificacion_fiscal VARCHAR(30) NOT NULL UNIQUE,
    ->     telefono VARCHAR(20) NOT NULL,
    ->     correo VARCHAR(150),
    ->     direccion VARCHAR(200),
    ->     estado BOOLEAN NOT NULL DEFAULT TRUE,
    ->     fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.008 sec)

MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE estados_solicitud (
    ->     id_estado INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_estado VARCHAR(30) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255),
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.008 sec)

MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE prioridades (
    ->     id_prioridad INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_prioridad VARCHAR(30) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255),
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.007 sec)

MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE tipos_item (
    ->     id_tipo_item INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_tipo VARCHAR(30) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(150),
    ->     estado BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.006 sec)

MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE solicitudes_compra (
    ->     id_solicitud INT AUTO_INCREMENT PRIMARY KEY,
    ->     codigo_solicitud VARCHAR(20) NOT NULL UNIQUE,
    ->     id_solicitante INT NOT NULL,
    ->     id_responsable INT,
    ->     id_estado INT NOT NULL,
    ->     id_prioridad INT NOT NULL,
    ->     descripcion TEXT NOT NULL,
    ->     justificacion TEXT NOT NULL,
    ->     fecha_solicitud DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     fecha_actualizacion DATETIME,
    ->     motivo_rechazo TEXT,
    ->     CONSTRAINT fk_solicitud_solicitante
    ->         FOREIGN KEY (id_solicitante)
    ->         REFERENCES usuarios(id_usuario)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT fk_solicitud_responsable
    ->         FOREIGN KEY (id_responsable)
    ->         REFERENCES usuarios(id_usuario)
    ->         ON UPDATE CASCADE
    ->         ON DELETE SET NULL,
    ->     CONSTRAINT fk_solicitud_estado
    ->         FOREIGN KEY (id_estado)
    ->         REFERENCES estados_solicitud(id_estado)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT fk_solicitud_prioridad
    ->         FOREIGN KEY (id_prioridad)
    ->         REFERENCES prioridades(id_prioridad)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT
    -> ) ENGINE=InnoDB;
ERROR 1005 (HY000): Can't create table `nexa_servicios`.`solicitudes_compra` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE detalle_solicitud (
    ->     id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_solicitud INT NOT NULL,
    ->     id_tipo_item INT NOT NULL,
    ->     descripcion_item VARCHAR(255) NOT NULL,
    ->     cantidad DECIMAL(10,2) NOT NULL,
    ->     unidad_medida VARCHAR(30),
    ->     valor_estimado DECIMAL(15,2),
    ->     CONSTRAINT fk_detalle_solicitud
    ->         FOREIGN KEY (id_solicitud)
    ->         REFERENCES solicitudes_compra(id_solicitud)
    ->         ON UPDATE CASCADE
    ->         ON DELETE CASCADE,
    ->     CONSTRAINT fk_detalle_tipo_item
    ->         FOREIGN KEY (id_tipo_item)
    ->         REFERENCES tipos_item(id_tipo_item)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT chk_detalle_cantidad
    ->         CHECK (cantidad > 0),
    ->     CONSTRAINT chk_detalle_valor
    ->         CHECK (valor_estimado IS NULL OR valor_estimado >= 0)
    -> ) ENGINE=InnoDB;
ERROR 1005 (HY000): Can't create table `nexa_servicios`.`detalle_solicitud` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE aprobaciones (
    ->     id_aprobacion INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_solicitud INT NOT NULL,
    ->     id_usuario INT NOT NULL,
    ->     decision VARCHAR(20) NOT NULL,
    ->     motivo TEXT,
    ->     fecha_decision DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     CONSTRAINT fk_aprobacion_solicitud
    ->         FOREIGN KEY (id_solicitud)
    ->         REFERENCES solicitudes_compra(id_solicitud)
    ->         ON UPDATE CASCADE
    ->         ON DELETE CASCADE,
    ->     CONSTRAINT fk_aprobacion_usuario
    ->         FOREIGN KEY (id_usuario)
    ->         REFERENCES usuarios(id_usuario)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT chk_decision
    ->         CHECK (decision IN ('Aprobada','Rechazada','Devuelta'))
    -> ) ENGINE=InnoDB;
ERROR 1005 (HY000): Can't create table `nexa_servicios`.`aprobaciones` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE cotizaciones (
    ->     id_cotizacion INT AUTO_INCREMENT PRIMARY KEY,
    ->     codigo_cotizacion VARCHAR(30) NOT NULL UNIQUE,
    ->     id_solicitud INT NOT NULL,
    ->     id_proveedor INT NOT NULL,
    ->     fecha_cotizacion DATE NOT NULL,
    ->     valor_total DECIMAL(15,2) NOT NULL,
    ->     observaciones TEXT,
    ->     estado VARCHAR(20) NOT NULL,
    ->     CONSTRAINT fk_cotizacion_solicitud
    ->         FOREIGN KEY (id_solicitud)
    ->         REFERENCES solicitudes_compra(id_solicitud)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT fk_cotizacion_proveedor
    ->         FOREIGN KEY (id_proveedor)
    ->         REFERENCES proveedores(id_proveedor)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT chk_cotizacion_total
    ->         CHECK (valor_total >= 0)
    -> ) ENGINE=InnoDB;
ERROR 1005 (HY000): Can't create table `nexa_servicios`.`cotizaciones` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE detalle_cotizacion (
    ->     id_detalle_cotizacion INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_cotizacion INT NOT NULL,
    ->     id_detalle_solicitud INT NOT NULL,
    ->     cantidad DECIMAL(10,2) NOT NULL,
    ->     precio_unitario DECIMAL(15,2) NOT NULL,
    ->     subtotal DECIMAL(15,2) NOT NULL,
    ->     CONSTRAINT fk_detalle_cotizacion
    ->         FOREIGN KEY (id_cotizacion)
    ->         REFERENCES cotizaciones(id_cotizacion)
    ->         ON UPDATE CASCADE
    ->         ON DELETE CASCADE,
    ->     CONSTRAINT fk_detalle_solicitud_cotizacion
    ->         FOREIGN KEY (id_detalle_solicitud)
    ->         REFERENCES detalle_solicitud(id_detalle)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT uq_cotizacion_detalle
    ->         UNIQUE (id_cotizacion, id_detalle_solicitud),
    ->     CONSTRAINT chk_cotizacion_cantidad
    ->         CHECK (cantidad > 0),
    ->     CONSTRAINT chk_cotizacion_precio
    ->         CHECK (precio_unitario >= 0)
    -> ) ENGINE=InnoDB;
ERROR 1005 (HY000): Can't create table `nexa_servicios`.`detalle_cotizacion` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE ordenes_compra (
    ->     id_orden INT AUTO_INCREMENT PRIMARY KEY,
    ->     codigo_orden VARCHAR(30) NOT NULL UNIQUE,
    ->     id_solicitud INT NOT NULL,
    ->     id_cotizacion INT NOT NULL,
    ->     id_proveedor INT NOT NULL,
    ->     id_comprador INT NOT NULL,
    ->     fecha_orden DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     valor_total DECIMAL(15,2) NOT NULL,
    ->     estado VARCHAR(30) NOT NULL,
    ->     observaciones TEXT,
    ->     CONSTRAINT fk_orden_solicitud
    ->         FOREIGN KEY (id_solicitud)
    ->         REFERENCES solicitudes_compra(id_solicitud)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT fk_orden_cotizacion
    ->         FOREIGN KEY (id_cotizacion)
    ->         REFERENCES cotizaciones(id_cotizacion)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT fk_orden_proveedor
    ->         FOREIGN KEY (id_proveedor)
    ->         REFERENCES proveedores(id_proveedor)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT fk_orden_comprador
    ->         FOREIGN KEY (id_comprador)
    ->         REFERENCES usuarios(id_usuario)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT chk_orden_total
    ->         CHECK (valor_total >= 0)
    -> ) ENGINE=InnoDB;
ERROR 1005 (HY000): Can't create table `nexa_servicios`.`ordenes_compra` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE detalle_orden_compra (
    ->     id_detalle_orden INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_orden INT NOT NULL,
    ->     id_detalle_solicitud INT NOT NULL,
    ->     cantidad DECIMAL(10,2) NOT NULL,
    ->     precio_unitario DECIMAL(15,2) NOT NULL,
    ->     subtotal DECIMAL(15,2) NOT NULL,
    ->     CONSTRAINT fk_detalle_orden
    ->         FOREIGN KEY (id_orden)
    ->         REFERENCES ordenes_compra(id_orden)
    ->         ON UPDATE CASCADE
    ->         ON DELETE CASCADE,
    ->     CONSTRAINT fk_detalle_solicitud_orden
    ->         FOREIGN KEY (id_detalle_solicitud)
    ->         REFERENCES detalle_solicitud(id_detalle)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT uq_orden_detalle
    ->         UNIQUE (id_orden, id_detalle_solicitud),
    ->     CONSTRAINT chk_orden_cantidad
    ->         CHECK (cantidad > 0),
    ->     CONSTRAINT chk_orden_precio
    ->         CHECK (precio_unitario >= 0)
    -> ) ENGINE=InnoDB;
ERROR 1005 (HY000): Can't create table `nexa_servicios`.`detalle_orden_compra` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE recepciones (
    ->     id_recepcion INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_orden INT NOT NULL,
    ->     id_usuario INT NOT NULL,
    ->     fecha_recepcion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     estado VARCHAR(30) NOT NULL,
    ->     conforme BOOLEAN NOT NULL,
    ->     observaciones TEXT,
    ->     CONSTRAINT fk_recepcion_orden
    ->         FOREIGN KEY (id_orden)
    ->         REFERENCES ordenes_compra(id_orden)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT fk_recepcion_usuario
    ->         FOREIGN KEY (id_usuario)
    ->         REFERENCES usuarios(id_usuario)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT
    -> ) ENGINE=InnoDB;
ERROR 1005 (HY000): Can't create table `nexa_servicios`.`recepciones` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE detalle_recepcion (
    ->     id_detalle_recepcion INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_recepcion INT NOT NULL,
    ->     id_detalle_orden INT NOT NULL,
    ->     cantidad_recibida DECIMAL(10,2) NOT NULL,
    ->     cantidad_aceptada DECIMAL(10,2) NOT NULL,
    ->     cantidad_rechazada DECIMAL(10,2) NOT NULL,
    ->     observacion TEXT,
    ->     CONSTRAINT fk_detalle_recepcion
    ->         FOREIGN KEY (id_recepcion)
    ->         REFERENCES recepciones(id_recepcion)
    ->         ON UPDATE CASCADE
    ->         ON DELETE CASCADE,
    ->     CONSTRAINT fk_detalle_orden_recepcion
    ->         FOREIGN KEY (id_detalle_orden)
    ->         REFERENCES detalle_orden_compra(id_detalle_orden)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT chk_cantidad_recibida
    ->         CHECK (cantidad_recibida >= 0),
    ->     CONSTRAINT chk_cantidad_aceptada
    ->         CHECK (cantidad_aceptada >= 0),
    ->     CONSTRAINT chk_cantidad_rechazada
    ->         CHECK (cantidad_rechazada >= 0),
    ->     CONSTRAINT chk_cantidades_recepcion
    ->         CHECK (cantidad_aceptada <= cantidad_recibida)
    -> ) ENGINE=InnoDB;
ERROR 1005 (HY000): Can't create table `nexa_servicios`.`detalle_recepcion` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE facturas (
    ->     id_factura INT AUTO_INCREMENT PRIMARY KEY,
    ->     numero_factura VARCHAR(50) NOT NULL UNIQUE,
    ->     id_proveedor INT NOT NULL,
    ->     id_orden INT NOT NULL,
    ->     fecha_factura DATE NOT NULL,
    ->     valor_subtotal DECIMAL(15,2) NOT NULL,
    ->     valor_impuestos DECIMAL(15,2) NOT NULL,
    ->     valor_total DECIMAL(15,2) NOT NULL,
    ->     estado VARCHAR(30) NOT NULL,
    ->     observaciones TEXT,
    ->     CONSTRAINT fk_factura_proveedor
    ->         FOREIGN KEY (id_proveedor)
    ->         REFERENCES proveedores(id_proveedor)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT fk_factura_orden
    ->         FOREIGN KEY (id_orden)
    ->         REFERENCES ordenes_compra(id_orden)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT chk_factura_subtotal
    ->         CHECK (valor_subtotal >= 0),
    ->     CONSTRAINT chk_factura_impuestos
    ->         CHECK (valor_impuestos >= 0),
    ->     CONSTRAINT chk_factura_total
    ->         CHECK (valor_total >= 0)
    -> ) ENGINE=InnoDB;
ERROR 1005 (HY000): Can't create table `nexa_servicios`.`facturas` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE auditoria (
    ->     id_auditoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    ->     id_usuario INT NOT NULL,
    ->     tabla_afectada VARCHAR(100) NOT NULL,
    ->     id_registro INT NOT NULL,
    ->     accion VARCHAR(20) NOT NULL,
    ->     fecha_hora DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     descripcion TEXT,
    ->     CONSTRAINT fk_auditoria_usuario
    ->         FOREIGN KEY (id_usuario)
    ->         REFERENCES usuarios(id_usuario)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT chk_auditoria_accion
    ->         CHECK (accion IN ('INSERT','UPDATE','DELETE'))
    -> ) ENGINE=InnoDB;
ERROR 1005 (HY000): Can't create table `nexa_servicios`.`auditoria` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> INSERT INTO roles (nombre_rol, descripcion, estado) VALUES
    -> ('Administrador', 'Gestiona usuarios y configuracion del sistema', TRUE),
    -> ('Solicitante', 'Registra solicitudes de compra', TRUE),
    -> ('Comprador', 'Gestiona proveedores, cotizaciones y ordenes', TRUE),
    -> ('Aprobador', 'Aprueba o rechaza solicitudes', TRUE),
    -> ('Receptor', 'Registra la recepcion de compras', TRUE);
ERROR 1146 (42S02): Table 'nexa_servicios.roles' doesn't exist
MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> INSERT INTO estados_solicitud (nombre_estado, descripcion, activo) VALUES
    -> ('Pendiente', 'Solicitud pendiente de revision', TRUE),
    -> ('En revision', 'Solicitud en proceso de revision', TRUE),
    -> ('Aprobada', 'Solicitud aprobada', TRUE),
    -> ('Rechazada', 'Solicitud rechazada', TRUE),
    -> ('Devuelta', 'Solicitud devuelta para correccion', TRUE),
    -> ('En cotizacion', 'Solicitud en proceso de cotizacion', TRUE),
    -> ('Comprada', 'Solicitud formalizada mediante orden de compra', TRUE),
    -> ('Cerrada', 'Proceso de compra finalizado', TRUE);
Query OK, 8 rows affected (0.002 sec)
Records: 8  Duplicates: 0  Warnings: 0

MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> INSERT INTO prioridades (nombre_prioridad, descripcion, activo) VALUES
    -> ('Baja', 'Solicitud de atencion no inmediata', TRUE),
    -> ('Media', 'Solicitud de atencion normal', TRUE),
    -> ('Alta', 'Solicitud de atencion prioritaria', TRUE),
    -> ('Urgente', 'Solicitud de atencion inmediata', TRUE);
Query OK, 4 rows affected (0.002 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> INSERT INTO tipos_item (nombre_tipo, descripcion, estado) VALUES
    -> ('Producto', 'Bien fisico solicitado para compra', TRUE),
    -> ('Servicio', 'Servicio requerido por la organizacion', TRUE);
Query OK, 2 rows affected (0.003 sec)
Records: 2  Duplicates: 0  Warnings: 0

MariaDB [nexa_servicios]> MariaDB [(none)]> DROP DATABASE IF EXISTS nexa_servicios;
Query OK, 4 rows affected (0.031 sec)

MariaDB [(none)]> CREATE DATABASE nexa_servicios
    ->     CHARACTER SET utf8mb4
    ->     COLLATE utf8mb4_general_ci;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> USE nexa_servicios;
Database changed
MariaDB [nexa_servicios]> CREATE TABLE roles (
    ->     id_rol INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_rol VARCHAR(50) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255),
    ->     estado BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.016 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| roles                    |
+--------------------------+
1 row in set (0.001 sec)

MariaDB [nexa_servicios]> CREATE TABLE usuarios (
    ->     id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_rol INT NOT NULL,
    ->     nombres VARCHAR(100) NOT NULL,
    ->     apellidos VARCHAR(100) NOT NULL,
    ->     documento VARCHAR(20) NOT NULL UNIQUE,
    ->     correo VARCHAR(150) NOT NULL UNIQUE,
    ->     telefono VARCHAR(20),
    ->     contrasena VARCHAR(255) NOT NULL,
    ->     estado BOOLEAN NOT NULL DEFAULT TRUE,
    ->     fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     CONSTRAINT fk_usuarios_roles
    ->         FOREIGN KEY (id_rol)
    ->         REFERENCES roles(id_rol)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.018 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| roles                    |
| usuarios                 |
+--------------------------+
2 rows in set (0.001 sec)

MariaDB [nexa_servicios]> CREATE TABLE proveedores (
    ->     id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    ->     codigo_proveedor VARCHAR(20) NOT NULL UNIQUE,
    ->     nombre VARCHAR(150) NOT NULL,
    ->     identificacion_fiscal VARCHAR(30) NOT NULL UNIQUE,
    ->     telefono VARCHAR(20) NOT NULL,
    ->     correo VARCHAR(150),
    ->     direccion VARCHAR(200),
    ->     estado BOOLEAN NOT NULL DEFAULT TRUE,
    ->     fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.015 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| proveedores              |
| roles                    |
| usuarios                 |
+--------------------------+
3 rows in set (0.001 sec)

MariaDB [nexa_servicios]> CREATE TABLE estados_solicitud (
    ->     id_estado INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_estado VARCHAR(30) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255),
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.017 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| estados_solicitud        |
| proveedores              |
| roles                    |
| usuarios                 |
+--------------------------+
4 rows in set (0.001 sec)

MariaDB [nexa_servicios]> CREATE TABLE prioridades (
    ->     id_prioridad INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_prioridad VARCHAR(30) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255),
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.007 sec)

MariaDB [nexa_servicios]> CREATE TABLE tipos_item (
    ->     id_tipo_item INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_tipo VARCHAR(30) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(150),
    ->     estado BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.016 sec)

MariaDB [nexa_servicios]> CREATE TABLE solicitudes_compra (
    ->     id_solicitud INT AUTO_INCREMENT PRIMARY KEY,
    ->     codigo_solicitud VARCHAR(20) NOT NULL UNIQUE,
    ->     id_solicitante INT NOT NULL,
    ->     id_responsable INT,
    ->     id_estado INT NOT NULL,
    ->     id_prioridad INT NOT NULL,
    ->     descripcion TEXT NOT NULL,
    ->     justificacion TEXT NOT NULL,
    ->     fecha_solicitud DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     fecha_actualizacion DATETIME,
    ->     motivo_rechazo TEXT,
    ->     CONSTRAINT fk_solicitud_solicitante
    ->         FOREIGN KEY (id_solicitante)
    ->         REFERENCES usuarios(id_usuario)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT fk_solicitud_responsable
    ->         FOREIGN KEY (id_responsable)
    ->         REFERENCES usuarios(id_usuario)
    ->         ON UPDATE CASCADE
    ->         ON DELETE SET NULL,
    ->     CONSTRAINT fk_solicitud_estado
    ->         FOREIGN KEY (id_estado)
    ->         REFERENCES estados_solicitud(id_estado)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT fk_solicitud_prioridad
    ->         FOREIGN KEY (id_prioridad)
    ->         REFERENCES prioridades(id_prioridad)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.018 sec)

MariaDB [nexa_servicios]> CREATE TABLE detalle_solicitud (
    ->     id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_solicitud INT NOT NULL,
    ->     id_tipo_item INT NOT NULL,
    ->     descripcion_item VARCHAR(255) NOT NULL,
    ->     cantidad DECIMAL(10,2) NOT NULL,
    ->     unidad_medida VARCHAR(30),
    ->     valor_estimado DECIMAL(15,2),
    ->     CONSTRAINT fk_detalle_solicitud
    ->         FOREIGN KEY (id_solicitud)
    ->         REFERENCES solicitudes_compra(id_solicitud)
    ->         ON UPDATE CASCADE
    ->         ON DELETE CASCADE,
    ->     CONSTRAINT fk_detalle_tipo_item
    ->         FOREIGN KEY (id_tipo_item)
    ->         REFERENCES tipos_item(id_tipo_item)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT chk_detalle_cantidad
    ->         CHECK (cantidad > 0),
    ->     CONSTRAINT chk_detalle_valor
    ->         CHECK (valor_estimado IS NULL OR valor_estimado >= 0)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.017 sec)

MariaDB [nexa_servicios]> CREATE TABLE aprobaciones (
    ->     id_aprobacion INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_solicitud INT NOT NULL,
    ->     id_usuario INT NOT NULL,
    ->     decision VARCHAR(20) NOT NULL,
    ->     motivo TEXT,
    ->     fecha_decision DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     CONSTRAINT fk_aprobacion_solicitud
    ->         FOREIGN KEY (id_solicitud)
    ->         REFERENCES solicitudes_compra(id_solicitud)
    ->         ON UPDATE CASCADE
    ->         ON DELETE CASCADE,
    ->     CONSTRAINT fk_aprobacion_usuario
    ->         FOREIGN KEY (id_usuario)
    ->         REFERENCES usuarios(id_usuario)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT chk_decision
    ->         CHECK (decision IN ('Aprobada','Rechazada','Devuelta'))
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.016 sec)

MariaDB [nexa_servicios]> CREATE TABLE cotizaciones (
    ->     id_cotizacion INT AUTO_INCREMENT PRIMARY KEY,
    ->     codigo_cotizacion VARCHAR(30) NOT NULL UNIQUE,
    ->     id_solicitud INT NOT NULL,
    ->     id_proveedor INT NOT NULL,
    ->     fecha_cotizacion DATE NOT NULL,
    ->     valor_total DECIMAL(15,2) NOT NULL,
    ->     observaciones TEXT,
    ->     estado VARCHAR(20) NOT NULL,
    ->     CONSTRAINT fk_cotizacion_solicitud
    ->         FOREIGN KEY (id_solicitud)
    ->         REFERENCES solicitudes_compra(id_solicitud)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT fk_cotizacion_proveedor
    ->         FOREIGN KEY (id_proveedor)
    ->         REFERENCES proveedores(id_proveedor)
    ->         ON UPDATE CASCADE
    ->         ON DELETE RESTRICT,
    ->     CONSTRAINT chk_cotizacion_total
    ->         CHECK (valor_total >= 0)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.017 sec)

MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> MariaDB [nexa_servicios]> CREATE TABLE roles (
    ->     id_rol INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_rol VARCHAR(50) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) NULL DEFAULT NULL,
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
ERROR 1050 (42S01): Table 'roles' already exists
MariaDB [nexa_servicios]> DROP nexa_servicios;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'nexa_servicios' at line 1
MariaDB [nexa_servicios]> MariaDB [(none)]> CREATE DATABASE nexa_servicios
    -> CHARACTER SET utf8mb4
    -> COLLATE utf8mb4_unicode_ci;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| bd_transporte_logistica |
| contacto                |
| createinsert            |
| information_schema      |
| mysql                   |
| nexa_servicios          |
| performance_schema      |
| phpmyadmin              |
| plataforma_programacion |
| registro_porcicarnes    |
| sistema_tutorial        |
| test                    |
| tienda_porcicarnes      |
| tutorial_bd             |
+-------------------------+
14 rows in set (0.001 sec)

MariaDB [(none)]> USE nexa_servicios;
Database changed
MariaDB [nexa_servicios]> CREATE TABLE roles (
    ->     id_rol INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_rol VARCHAR(50) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) DEFAULT NULL,
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.026 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| roles                    |
+--------------------------+
1 row in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE ROLES;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| id_rol      | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_rol  | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion | varchar(255) | YES  |     | NULL    |                |
| activo      | tinyint(1)   | NO   |     | 1       |                |
+-------------+--------------+------+-----+---------+----------------+
4 rows in set (0.025 sec)

MariaDB [nexa_servicios]> CREATE TABLE usuarios (
    ->     id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_rol INT NOT NULL,
    ->     nombres VARCHAR(100) NOT NULL,
    ->     apellidos VARCHAR(100) NOT NULL,
    ->     documento VARCHAR(20) NOT NULL UNIQUE,
    ->     correo VARCHAR(150) NOT NULL UNIQUE,
    ->     telefono VARCHAR(20) DEFAULT NULL,
    ->     contrasena_hash VARCHAR(255) NOT NULL,
    ->     estado BOOLEAN NOT NULL DEFAULT TRUE,
    ->     fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     FOREIGN KEY (id_rol) REFERENCES roles(id_rol)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.024 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| roles                    |
| usuarios                 |
+--------------------------+
2 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE usuarios;
+-----------------+--------------+------+-----+---------------------+----------------+
| Field           | Type         | Null | Key | Default             | Extra          |
+-----------------+--------------+------+-----+---------------------+----------------+
| id_usuario      | int(11)      | NO   | PRI | NULL                | auto_increment |
| id_rol          | int(11)      | NO   | MUL | NULL                |                |
| nombres         | varchar(100) | NO   |     | NULL                |                |
| apellidos       | varchar(100) | NO   |     | NULL                |                |
| documento       | varchar(20)  | NO   | UNI | NULL                |                |
| correo          | varchar(150) | NO   | UNI | NULL                |                |
| telefono        | varchar(20)  | YES  |     | NULL                |                |
| contrasena_hash | varchar(255) | NO   |     | NULL                |                |
| estado          | tinyint(1)   | NO   |     | 1                   |                |
| fecha_registro  | datetime     | NO   |     | current_timestamp() |                |
+-----------------+--------------+------+-----+---------------------+----------------+
10 rows in set (0.021 sec)

MariaDB [nexa_servicios]> CREATE TABLE proveedores (
    ->     id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    ->     codigo_proveedor VARCHAR(20) NOT NULL UNIQUE,
    ->     nombre VARCHAR(150) NOT NULL,
    ->     identificacion_fiscal VARCHAR(30) NOT NULL UNIQUE,
    ->     telefono VARCHAR(20) NOT NULL,
    ->     correo VARCHAR(150) DEFAULT NULL,
    ->     direccion VARCHAR(200) DEFAULT NULL,
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE,
    ->     fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.018 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| proveedores              |
| roles                    |
| usuarios                 |
+--------------------------+
3 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE proveedores;
+-----------------------+--------------+------+-----+---------------------+----------------+
| Field                 | Type         | Null | Key | Default             | Extra          |
+-----------------------+--------------+------+-----+---------------------+----------------+
| id_proveedor          | int(11)      | NO   | PRI | NULL                | auto_increment |
| codigo_proveedor      | varchar(20)  | NO   | UNI | NULL                |                |
| nombre                | varchar(150) | NO   |     | NULL                |                |
| identificacion_fiscal | varchar(30)  | NO   | UNI | NULL                |                |
| telefono              | varchar(20)  | NO   |     | NULL                |                |
| correo                | varchar(150) | YES  |     | NULL                |                |
| direccion             | varchar(200) | YES  |     | NULL                |                |
| activo                | tinyint(1)   | NO   |     | 1                   |                |
| fecha_registro        | datetime     | NO   |     | current_timestamp() |                |
+-----------------------+--------------+------+-----+---------------------+----------------+
9 rows in set (0.022 sec)

MariaDB [nexa_servicios]> CREATE TABLE estados_solicitud (
    ->     id_estado INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_estado VARCHAR(30) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) DEFAULT NULL,
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.018 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| estados_solicitud        |
| proveedores              |
| roles                    |
| usuarios                 |
+--------------------------+
4 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE estado_solicitud;
ERROR 1146 (42S02): Table 'nexa_servicios.estado_solicitud' doesn't exist
MariaDB [nexa_servicios]> DESCRIBE estados_solicitud;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| id_estado     | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_estado | varchar(30)  | NO   | UNI | NULL    |                |
| descripcion   | varchar(255) | YES  |     | NULL    |                |
| activo        | tinyint(1)   | NO   |     | 1       |                |
+---------------+--------------+------+-----+---------+----------------+
4 rows in set (0.012 sec)

MariaDB [nexa_servicios]> CREATE TABLE prioridades (
    ->     id_prioridad INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_prioridad VARCHAR(30) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) DEFAULT NULL,
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.013 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| estados_solicitud        |
| prioridades              |
| proveedores              |
| roles                    |
| usuarios                 |
+--------------------------+
5 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE prioridades;
+------------------+--------------+------+-----+---------+----------------+
| Field            | Type         | Null | Key | Default | Extra          |
+------------------+--------------+------+-----+---------+----------------+
| id_prioridad     | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_prioridad | varchar(30)  | NO   | UNI | NULL    |                |
| descripcion      | varchar(255) | YES  |     | NULL    |                |
| activo           | tinyint(1)   | NO   |     | 1       |                |
+------------------+--------------+------+-----+---------+----------------+
4 rows in set (0.022 sec)

MariaDB [nexa_servicios]> CREATE TABLE tipos_item (
    ->     id_tipo_item INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_tipo VARCHAR(30) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(150) DEFAULT NULL,
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.025 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| estados_solicitud        |
| prioridades              |
| proveedores              |
| roles                    |
| tipos_item               |
| usuarios                 |
+--------------------------+
6 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE tipos_item;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| id_tipo_item | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_tipo  | varchar(30)  | NO   | UNI | NULL    |                |
| descripcion  | varchar(150) | YES  |     | NULL    |                |
| activo       | tinyint(1)   | NO   |     | 1       |                |
+--------------+--------------+------+-----+---------+----------------+
4 rows in set (0.019 sec)

MariaDB [nexa_servicios]> CREATE TABLE tipos_decision (
    ->     id_tipo_decision INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_decision VARCHAR(20) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) DEFAULT NULL,
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.017 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| estados_solicitud        |
| prioridades              |
| proveedores              |
| roles                    |
| tipos_decision           |
| tipos_item               |
| usuarios                 |
+--------------------------+
7 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE tipos_decision;
+------------------+--------------+------+-----+---------+----------------+
| Field            | Type         | Null | Key | Default | Extra          |
+------------------+--------------+------+-----+---------+----------------+
| id_tipo_decision | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_decision  | varchar(20)  | NO   | UNI | NULL    |                |
| descripcion      | varchar(255) | YES  |     | NULL    |                |
| activo           | tinyint(1)   | NO   |     | 1       |                |
+------------------+--------------+------+-----+---------+----------------+
4 rows in set (0.022 sec)

MariaDB [nexa_servicios]> CREATE TABLE estados_cotizacion (
    ->     id_estado_cotizacion INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_estado VARCHAR(30) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) DEFAULT NULL,
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.013 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| estados_cotizacion       |
| estados_solicitud        |
| prioridades              |
| proveedores              |
| roles                    |
| tipos_decision           |
| tipos_item               |
| usuarios                 |
+--------------------------+
8 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE estados_cotizacion;
+----------------------+--------------+------+-----+---------+----------------+
| Field                | Type         | Null | Key | Default | Extra          |
+----------------------+--------------+------+-----+---------+----------------+
| id_estado_cotizacion | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_estado        | varchar(30)  | NO   | UNI | NULL    |                |
| descripcion          | varchar(255) | YES  |     | NULL    |                |
| activo               | tinyint(1)   | NO   |     | 1       |                |
+----------------------+--------------+------+-----+---------+----------------+
4 rows in set (0.023 sec)

MariaDB [nexa_servicios]> CREATE TABLE estados_orden (
    ->     id_estado_orden INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_estado VARCHAR(30) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) DEFAULT NULL,
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.015 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| estados_cotizacion       |
| estados_orden            |
| estados_solicitud        |
| prioridades              |
| proveedores              |
| roles                    |
| tipos_decision           |
| tipos_item               |
| usuarios                 |
+--------------------------+
9 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE estados_orden;
+-----------------+--------------+------+-----+---------+----------------+
| Field           | Type         | Null | Key | Default | Extra          |
+-----------------+--------------+------+-----+---------+----------------+
| id_estado_orden | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_estado   | varchar(30)  | NO   | UNI | NULL    |                |
| descripcion     | varchar(255) | YES  |     | NULL    |                |
| activo          | tinyint(1)   | NO   |     | 1       |                |
+-----------------+--------------+------+-----+---------+----------------+
4 rows in set (0.024 sec)

MariaDB [nexa_servicios]> CREATE TABLE estados_recepcion (
    ->     id_estado_recepcion INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_estado VARCHAR(30) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) DEFAULT NULL,
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.017 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| estados_cotizacion       |
| estados_orden            |
| estados_recepcion        |
| estados_solicitud        |
| prioridades              |
| proveedores              |
| roles                    |
| tipos_decision           |
| tipos_item               |
| usuarios                 |
+--------------------------+
10 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE estados_recepcion;
+---------------------+--------------+------+-----+---------+----------------+
| Field               | Type         | Null | Key | Default | Extra          |
+---------------------+--------------+------+-----+---------+----------------+
| id_estado_recepcion | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_estado       | varchar(30)  | NO   | UNI | NULL    |                |
| descripcion         | varchar(255) | YES  |     | NULL    |                |
| activo              | tinyint(1)   | NO   |     | 1       |                |
+---------------------+--------------+------+-----+---------+----------------+
4 rows in set (0.013 sec)

MariaDB [nexa_servicios]> CREATE TABLE estados_factura (
    ->     id_estado_factura INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_estado VARCHAR(30) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) DEFAULT NULL,
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.020 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| estados_cotizacion       |
| estados_factura          |
| estados_orden            |
| estados_recepcion        |
| estados_solicitud        |
| prioridades              |
| proveedores              |
| roles                    |
| tipos_decision           |
| tipos_item               |
| usuarios                 |
+--------------------------+
11 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE estados_factura;
+-------------------+--------------+------+-----+---------+----------------+
| Field             | Type         | Null | Key | Default | Extra          |
+-------------------+--------------+------+-----+---------+----------------+
| id_estado_factura | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_estado     | varchar(30)  | NO   | UNI | NULL    |                |
| descripcion       | varchar(255) | YES  |     | NULL    |                |
| activo            | tinyint(1)   | NO   |     | 1       |                |
+-------------------+--------------+------+-----+---------+----------------+
4 rows in set (0.023 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| estados_cotizacion       |
| estados_factura          |
| estados_orden            |
| estados_recepcion        |
| estados_solicitud        |
| prioridades              |
| proveedores              |
| roles                    |
| tipos_decision           |
| tipos_item               |
| usuarios                 |
+--------------------------+
11 rows in set (0.001 sec)

MariaDB [nexa_servicios]> CREATE TABLE solicitudes_compra (
    ->     id_solicitud INT AUTO_INCREMENT PRIMARY KEY,
    ->     codigo_solicitud VARCHAR(20) NOT NULL UNIQUE,
    ->     id_solicitante INT NOT NULL,
    ->     id_responsable INT DEFAULT NULL,
    ->     id_estado INT NOT NULL,
    ->     id_prioridad INT NOT NULL,
    ->     descripcion TEXT NOT NULL,
    ->     justificacion TEXT NOT NULL,
    ->     fecha_solicitud DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     fecha_actualizacion DATETIME DEFAULT NULL,
    -> 
    ->     FOREIGN KEY (id_solicitante)
    ->         REFERENCES usuarios(id_usuario),
    ->     FOREIGN KEY (id_responsable)
    ->         REFERENCES usuarios(id_usuario),
    ->     FOREIGN KEY (id_estado)
    ->         REFERENCES estados_solicitud(id_estado),
    ->     FOREIGN KEY (id_prioridad)
    ->         REFERENCES prioridades(id_prioridad)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.020 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| estados_cotizacion       |
| estados_factura          |
| estados_orden            |
| estados_recepcion        |
| estados_solicitud        |
| prioridades              |
| proveedores              |
| roles                    |
| solicitudes_compra       |
| tipos_decision           |
| tipos_item               |
| usuarios                 |
+--------------------------+
12 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE solicitudes_compra;
+---------------------+-------------+------+-----+---------------------+----------------+
| Field               | Type        | Null | Key | Default             | Extra          |
+---------------------+-------------+------+-----+---------------------+----------------+
| id_solicitud        | int(11)     | NO   | PRI | NULL                | auto_increment |
| codigo_solicitud    | varchar(20) | NO   | UNI | NULL                |                |
| id_solicitante      | int(11)     | NO   | MUL | NULL                |                |
| id_responsable      | int(11)     | YES  | MUL | NULL                |                |
| id_estado           | int(11)     | NO   | MUL | NULL                |                |
| id_prioridad        | int(11)     | NO   | MUL | NULL                |                |
| descripcion         | text        | NO   |     | NULL                |                |
| justificacion       | text        | NO   |     | NULL                |                |
| fecha_solicitud     | datetime    | NO   |     | current_timestamp() |                |
| fecha_actualizacion | datetime    | YES  |     | NULL                |                |
+---------------------+-------------+------+-----+---------------------+----------------+
10 rows in set (0.014 sec)

MariaDB [nexa_servicios]> CREATE TABLE detalle_solicitud (
    ->     id_detalle_solicitud INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_solicitud INT NOT NULL,
    ->     id_tipo_item INT NOT NULL,
    ->     descripcion_item VARCHAR(255) NOT NULL,
    ->     cantidad DECIMAL(10,2) NOT NULL,
    ->     unidad_medida VARCHAR(30) DEFAULT NULL,
    ->     valor_estimado DECIMAL(15,2) DEFAULT NULL,
    -> 
    ->     CONSTRAINT chk_cantidad_solicitud
    ->         CHECK (cantidad > 0),
    ->     CONSTRAINT chk_valor_estimado
    ->         CHECK (valor_estimado IS NULL OR valor_estimado >= 0),
    -> 
    ->     FOREIGN KEY (id_solicitud)
    ->         REFERENCES solicitudes_compra(id_solicitud),
    ->     FOREIGN KEY (id_tipo_item)
    ->         REFERENCES tipos_item(id_tipo_item)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.015 sec)

MariaDB [nexa_servicios]> DESCRIBE
    -> 
    -> SHOW TABLES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'SHOW TABLES' at line 3
MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| detalle_solicitud        |
| estados_cotizacion       |
| estados_factura          |
| estados_orden            |
| estados_recepcion        |
| estados_solicitud        |
| prioridades              |
| proveedores              |
| roles                    |
| solicitudes_compra       |
| tipos_decision           |
| tipos_item               |
| usuarios                 |
+--------------------------+
13 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE detalle_solicitud;
+----------------------+---------------+------+-----+---------+----------------+
| Field                | Type          | Null | Key | Default | Extra          |
+----------------------+---------------+------+-----+---------+----------------+
| id_detalle_solicitud | int(11)       | NO   | PRI | NULL    | auto_increment |
| id_solicitud         | int(11)       | NO   | MUL | NULL    |                |
| id_tipo_item         | int(11)       | NO   | MUL | NULL    |                |
| descripcion_item     | varchar(255)  | NO   |     | NULL    |                |
| cantidad             | decimal(10,2) | NO   |     | NULL    |                |
| unidad_medida        | varchar(30)   | YES  |     | NULL    |                |
| valor_estimado       | decimal(15,2) | YES  |     | NULL    |                |
+----------------------+---------------+------+-----+---------+----------------+
7 rows in set (0.014 sec)

MariaDB [nexa_servicios]> CREATE TABLE aprobaciones (
    ->     id_aprobacion INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_solicitud INT NOT NULL,
    ->     id_usuario INT NOT NULL,
    ->     id_tipo_decision INT NOT NULL,
    ->     motivo TEXT DEFAULT NULL,
    ->     fecha_decision DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    -> 
    ->     FOREIGN KEY (id_solicitud)
    ->         REFERENCES solicitudes_compra(id_solicitud),
    ->     FOREIGN KEY (id_usuario)
    ->         REFERENCES usuarios(id_usuario),
    ->     FOREIGN KEY (id_tipo_decision)
    ->         REFERENCES tipos_decision(id_tipo_decision)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.026 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| aprobaciones             |
| detalle_solicitud        |
| estados_cotizacion       |
| estados_factura          |
| estados_orden            |
| estados_recepcion        |
| estados_solicitud        |
| prioridades              |
| proveedores              |
| roles                    |
| solicitudes_compra       |
| tipos_decision           |
| tipos_item               |
| usuarios                 |
+--------------------------+
14 rows in set (0.001 sec)

MariaDB [nexa_servicios]> describe aprobaciones;
+------------------+----------+------+-----+---------------------+----------------+
| Field            | Type     | Null | Key | Default             | Extra          |
+------------------+----------+------+-----+---------------------+----------------+
| id_aprobacion    | int(11)  | NO   | PRI | NULL                | auto_increment |
| id_solicitud     | int(11)  | NO   | MUL | NULL                |                |
| id_usuario       | int(11)  | NO   | MUL | NULL                |                |
| id_tipo_decision | int(11)  | NO   | MUL | NULL                |                |
| motivo           | text     | YES  |     | NULL                |                |
| fecha_decision   | datetime | NO   |     | current_timestamp() |                |
+------------------+----------+------+-----+---------------------+----------------+
6 rows in set (0.017 sec)

MariaDB [nexa_servicios]> CREATE TABLE cotizaciones (
    ->     id_cotizacion INT AUTO_INCREMENT PRIMARY KEY,
    ->     codigo_cotizacion VARCHAR(30) NOT NULL UNIQUE,
    ->     id_solicitud INT NOT NULL,
    ->     id_proveedor INT NOT NULL,
    ->     fecha_cotizacion DATE NOT NULL DEFAULT (CURRENT_DATE),
    ->     fecha_vencimiento DATE DEFAULT NULL,
    ->     tiempo_entrega_dias INT DEFAULT NULL,
    ->     condiciones_pago VARCHAR(100) DEFAULT NULL,
    ->     valor_subtotal DECIMAL(15,2) NOT NULL DEFAULT 0,
    ->     descuento DECIMAL(15,2) NOT NULL DEFAULT 0,
    ->     valor_impuestos DECIMAL(15,2) NOT NULL DEFAULT 0,
    -> 
    ->     valor_total DECIMAL(15,2)
    ->         AS (valor_subtotal - descuento + valor_impuestos) STORED,
    -> 
    ->     id_estado_cotizacion INT NOT NULL,
    ->     observaciones TEXT DEFAULT NULL,
    -> 
    ->     CONSTRAINT chk_cotizacion_importes CHECK (
    ->         valor_subtotal >= 0
    ->         AND descuento >= 0
    ->         AND valor_impuestos >= 0
    ->         AND valor_subtotal - descuento + valor_impuestos >= 0
    ->     ),
    ->     CONSTRAINT chk_cotizacion_fechas CHECK (
    ->         fecha_vencimiento IS NULL
    ->         OR fecha_vencimiento >= fecha_cotizacion
    ->     ),
    ->     CONSTRAINT chk_cotizacion_entrega CHECK (
    ->         tiempo_entrega_dias IS NULL
    ->         OR tiempo_entrega_dias >= 0
    ->     ),
    -> 
    ->     FOREIGN KEY (id_solicitud)
    ->         REFERENCES solicitudes_compra(id_solicitud),
    ->     FOREIGN KEY (id_proveedor)
    ->         REFERENCES proveedores(id_proveedor),
    ->     FOREIGN KEY (id_estado_cotizacion)
    ->         REFERENCES estados_cotizacion(id_estado_cotizacion)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.025 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| aprobaciones             |
| cotizaciones             |
| detalle_solicitud        |
| estados_cotizacion       |
| estados_factura          |
| estados_orden            |
| estados_recepcion        |
| estados_solicitud        |
| prioridades              |
| proveedores              |
| roles                    |
| solicitudes_compra       |
| tipos_decision           |
| tipos_item               |
| usuarios                 |
+--------------------------+
15 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE cotizaciones;
+----------------------+---------------+------+-----+-----------+------------------+
| Field                | Type          | Null | Key | Default   | Extra            |
+----------------------+---------------+------+-----+-----------+------------------+
| id_cotizacion        | int(11)       | NO   | PRI | NULL      | auto_increment   |
| codigo_cotizacion    | varchar(30)   | NO   | UNI | NULL      |                  |
| id_solicitud         | int(11)       | NO   | MUL | NULL      |                  |
| id_proveedor         | int(11)       | NO   | MUL | NULL      |                  |
| fecha_cotizacion     | date          | NO   |     | curdate() |                  |
| fecha_vencimiento    | date          | YES  |     | NULL      |                  |
| tiempo_entrega_dias  | int(11)       | YES  |     | NULL      |                  |
| condiciones_pago     | varchar(100)  | YES  |     | NULL      |                  |
| valor_subtotal       | decimal(15,2) | NO   |     | 0.00      |                  |
| descuento            | decimal(15,2) | NO   |     | 0.00      |                  |
| valor_impuestos      | decimal(15,2) | NO   |     | 0.00      |                  |
| valor_total          | decimal(15,2) | YES  |     | NULL      | STORED GENERATED |
| id_estado_cotizacion | int(11)       | NO   | MUL | NULL      |                  |
| observaciones        | text          | YES  |     | NULL      |                  |
+----------------------+---------------+------+-----+-----------+------------------+
14 rows in set (0.016 sec)

MariaDB [nexa_servicios]> CREATE TABLE detalle_cotizacion (
    ->     id_detalle_cotizacion INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_cotizacion INT NOT NULL,
    ->     id_detalle_solicitud INT NOT NULL,
    ->     cantidad DECIMAL(10,2) NOT NULL,
    ->     precio_unitario DECIMAL(15,2) NOT NULL,
    -> 
    ->     subtotal DECIMAL(15,2)
    ->         AS (cantidad * precio_unitario) STORED,
    -> 
    ->     CONSTRAINT uq_detalle_cotizacion
    ->         UNIQUE (id_cotizacion, id_detalle_solicitud),
    ->     CONSTRAINT chk_cotizacion_cantidad CHECK (cantidad > 0),
    ->     CONSTRAINT chk_cotizacion_precio CHECK (precio_unitario >= 0),
    -> 
    ->     FOREIGN KEY (id_cotizacion)
    ->         REFERENCES cotizaciones(id_cotizacion),
    ->     FOREIGN KEY (id_detalle_solicitud)
    ->         REFERENCES detalle_solicitud(id_detalle_solicitud)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.016 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| aprobaciones             |
| cotizaciones             |
| detalle_cotizacion       |
| detalle_solicitud        |
| estados_cotizacion       |
| estados_factura          |
| estados_orden            |
| estados_recepcion        |
| estados_solicitud        |
| prioridades              |
| proveedores              |
| roles                    |
| solicitudes_compra       |
| tipos_decision           |
| tipos_item               |
| usuarios                 |
+--------------------------+
16 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE detalle_cotizacion;
+-----------------------+---------------+------+-----+---------+------------------+
| Field                 | Type          | Null | Key | Default | Extra            |
+-----------------------+---------------+------+-----+---------+------------------+
| id_detalle_cotizacion | int(11)       | NO   | PRI | NULL    | auto_increment   |
| id_cotizacion         | int(11)       | NO   | MUL | NULL    |                  |
| id_detalle_solicitud  | int(11)       | NO   | MUL | NULL    |                  |
| cantidad              | decimal(10,2) | NO   |     | NULL    |                  |
| precio_unitario       | decimal(15,2) | NO   |     | NULL    |                  |
| subtotal              | decimal(15,2) | YES  |     | NULL    | STORED GENERATED |
+-----------------------+---------------+------+-----+---------+------------------+
6 rows in set (0.015 sec)

MariaDB [nexa_servicios]> CREATE TABLE ordenes_compra (
    ->     id_orden INT AUTO_INCREMENT PRIMARY KEY,
    ->     codigo_orden VARCHAR(30) NOT NULL UNIQUE,
    ->     id_solicitud INT NOT NULL,
    ->     id_cotizacion INT NOT NULL,
    ->     id_comprador INT NOT NULL,
    ->     fecha_orden DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     valor_subtotal DECIMAL(15,2) NOT NULL DEFAULT 0,
    ->     descuento DECIMAL(15,2) NOT NULL DEFAULT 0,
    ->     valor_impuestos DECIMAL(15,2) NOT NULL DEFAULT 0,
    -> 
    ->     valor_total DECIMAL(15,2)
    ->         AS (valor_subtotal - descuento + valor_impuestos) STORED,
    -> 
    ->     id_estado_orden INT NOT NULL,
    ->     observaciones TEXT DEFAULT NULL,
    -> 
    ->     CONSTRAINT chk_orden_importes CHECK (
    ->         valor_subtotal >= 0
    ->         AND descuento >= 0
    ->         AND valor_impuestos >= 0
    ->         AND valor_subtotal - descuento + valor_impuestos >= 0
    ->     ),
    -> 
    ->     FOREIGN KEY (id_solicitud)
    ->         REFERENCES solicitudes_compra(id_solicitud),
    ->     FOREIGN KEY (id_cotizacion)
    ->         REFERENCES cotizaciones(id_cotizacion),
    ->     FOREIGN KEY (id_comprador)
    ->         REFERENCES usuarios(id_usuario),
    ->     FOREIGN KEY (id_estado_orden)
    ->         REFERENCES estados_orden(id_estado_orden)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.019 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| aprobaciones             |
| cotizaciones             |
| detalle_cotizacion       |
| detalle_solicitud        |
| estados_cotizacion       |
| estados_factura          |
| estados_orden            |
| estados_recepcion        |
| estados_solicitud        |
| ordenes_compra           |
| prioridades              |
| proveedores              |
| roles                    |
| solicitudes_compra       |
| tipos_decision           |
| tipos_item               |
| usuarios                 |
+--------------------------+
17 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE ordenes_compra;
+-----------------+---------------+------+-----+---------------------+------------------+
| Field           | Type          | Null | Key | Default             | Extra            |
+-----------------+---------------+------+-----+---------------------+------------------+
| id_orden        | int(11)       | NO   | PRI | NULL                | auto_increment   |
| codigo_orden    | varchar(30)   | NO   | UNI | NULL                |                  |
| id_solicitud    | int(11)       | NO   | MUL | NULL                |                  |
| id_cotizacion   | int(11)       | NO   | MUL | NULL                |                  |
| id_comprador    | int(11)       | NO   | MUL | NULL                |                  |
| fecha_orden     | datetime      | NO   |     | current_timestamp() |                  |
| valor_subtotal  | decimal(15,2) | NO   |     | 0.00                |                  |
| descuento       | decimal(15,2) | NO   |     | 0.00                |                  |
| valor_impuestos | decimal(15,2) | NO   |     | 0.00                |                  |
| valor_total     | decimal(15,2) | YES  |     | NULL                | STORED GENERATED |
| id_estado_orden | int(11)       | NO   | MUL | NULL                |                  |
| observaciones   | text          | YES  |     | NULL                |                  |
+-----------------+---------------+------+-----+---------------------+------------------+
12 rows in set (0.022 sec)

MariaDB [nexa_servicios]> MariaDB [(none)]> CREATE DATABASE nexa_servicios CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> USE nexa_servicios;
Database changed
MariaDB [nexa_servicios]> SELECT DATABASE();
+----------------+
| DATABASE()     |
+----------------+
| nexa_servicios |
+----------------+
1 row in set (0.000 sec)

MariaDB [nexa_servicios]> CREATE TABLE roles (
    ->     id_rol INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_rol VARCHAR(50) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) NULL,
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.026 sec)

MariaDB [nexa_servicios]> DESCRIBE roles;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| id_rol      | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_rol  | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion | varchar(255) | YES  |     | NULL    |                |
| activo      | tinyint(1)   | NO   |     | 1       |                |
+-------------+--------------+------+-----+---------+----------------+
4 rows in set (0.017 sec)

MariaDB [nexa_servicios]> CREATE TABLE usuarios (
    ->     id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_rol INT NOT NULL,
    ->     nombres VARCHAR(100) NOT NULL,
    ->     apellidos VARCHAR(100) NOT NULL,
    ->     documento VARCHAR(20) NOT NULL UNIQUE,
    ->     correo VARCHAR(150) NOT NULL UNIQUE,
    ->     telefono VARCHAR(20) NULL,
    ->     contrasena_hash VARCHAR(255) NOT NULL,
    ->     estado BOOLEAN NOT NULL DEFAULT TRUE,
    ->     fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     CONSTRAINT fk_usuarios_roles FOREIGN KEY (id_rol) REFERENCES roles(id_rol)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.025 sec)

MariaDB [nexa_servicios]> DESCRIBE usuarios;
+-----------------+--------------+------+-----+---------------------+----------------+
| Field           | Type         | Null | Key | Default             | Extra          |
+-----------------+--------------+------+-----+---------------------+----------------+
| id_usuario      | int(11)      | NO   | PRI | NULL                | auto_increment |
| id_rol          | int(11)      | NO   | MUL | NULL                |                |
| nombres         | varchar(100) | NO   |     | NULL                |                |
| apellidos       | varchar(100) | NO   |     | NULL                |                |
| documento       | varchar(20)  | NO   | UNI | NULL                |                |
| correo          | varchar(150) | NO   | UNI | NULL                |                |
| telefono        | varchar(20)  | YES  |     | NULL                |                |
| contrasena_hash | varchar(255) | NO   |     | NULL                |                |
| estado          | tinyint(1)   | NO   |     | 1                   |                |
| fecha_registro  | datetime     | NO   |     | current_timestamp() |                |
+-----------------+--------------+------+-----+---------------------+----------------+
10 rows in set (0.021 sec)

MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> CREATE TABLE proveedores (
    ->     id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    ->     codigo_proveedor VARCHAR(20) NOT NULL UNIQUE,
    ->     nombre VARCHAR(150) NOT NULL,
    ->     identificacion_fiscal VARCHAR(30) NOT NULL UNIQUE,
    ->     telefono VARCHAR(20) NOT NULL,
    ->     correo VARCHAR(150) NULL,
    ->     direccion VARCHAR(200) NULL,
    ->     activo BOOLEAN NOT NULL DEFAULT TRUE,
    ->     fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.013 sec)

MariaDB [nexa_servicios]> DESCRIBE proveedores;
+-----------------------+--------------+------+-----+---------------------+----------------+
| Field                 | Type         | Null | Key | Default             | Extra          |
+-----------------------+--------------+------+-----+---------------------+----------------+
| id_proveedor          | int(11)      | NO   | PRI | NULL                | auto_increment |
| codigo_proveedor      | varchar(20)  | NO   | UNI | NULL                |                |
| nombre                | varchar(150) | NO   |     | NULL                |                |
| identificacion_fiscal | varchar(30)  | NO   | UNI | NULL                |                |
| telefono              | varchar(20)  | NO   |     | NULL                |                |
| correo                | varchar(150) | YES  |     | NULL                |                |
| direccion             | varchar(200) | YES  |     | NULL                |                |
| activo                | tinyint(1)   | NO   |     | 1                   |                |
| fecha_registro        | datetime     | NO   |     | current_timestamp() |                |
+-----------------------+--------------+------+-----+---------------------+----------------+
9 rows in set (0.022 sec)

MariaDB [nexa_servicios]> CREATE TABLE estados_solicitud (
    ->     id_estado_solicitud INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_estado VARCHAR(50) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) NULL
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.013 sec)

MariaDB [nexa_servicios]> DESCRIBE estados_solicitud;
+---------------------+--------------+------+-----+---------+----------------+
| Field               | Type         | Null | Key | Default | Extra          |
+---------------------+--------------+------+-----+---------+----------------+
| id_estado_solicitud | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_estado       | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion         | varchar(255) | YES  |     | NULL    |                |
+---------------------+--------------+------+-----+---------+----------------+
3 rows in set (0.018 sec)

MariaDB [nexa_servicios]> CREATE TABLE prioridades (
    ->     id_prioridad INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_prioridad VARCHAR(30) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) NULL
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.025 sec)

MariaDB [nexa_servicios]> DESCRIBE prioridades;
+------------------+--------------+------+-----+---------+----------------+
| Field            | Type         | Null | Key | Default | Extra          |
+------------------+--------------+------+-----+---------+----------------+
| id_prioridad     | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_prioridad | varchar(30)  | NO   | UNI | NULL    |                |
| descripcion      | varchar(255) | YES  |     | NULL    |                |
+------------------+--------------+------+-----+---------+----------------+
3 rows in set (0.013 sec)

MariaDB [nexa_servicios]> CREATE TABLE tipos_item (
    ->     id_tipo_item INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_tipo VARCHAR(30) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) NULL
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.021 sec)

MariaDB [nexa_servicios]> DESCRIBE tipos_item;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| id_tipo_item | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_tipo  | varchar(30)  | NO   | UNI | NULL    |                |
| descripcion  | varchar(255) | YES  |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
3 rows in set (0.022 sec)

MariaDB [nexa_servicios]> CREATE TABLE tipos_decision (
    ->     id_tipo_decision INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_decision VARCHAR(30) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) NULL
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.013 sec)

MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> DESCRIBE tipos_decision;
+------------------+--------------+------+-----+---------+----------------+
| Field            | Type         | Null | Key | Default | Extra          |
+------------------+--------------+------+-----+---------+----------------+
| id_tipo_decision | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_decision  | varchar(30)  | NO   | UNI | NULL    |                |
| descripcion      | varchar(255) | YES  |     | NULL    |                |
+------------------+--------------+------+-----+---------+----------------+
3 rows in set (0.014 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| estados_solicitud        |
| prioridades              |
| proveedores              |
| roles                    |
| tipos_decision           |
| tipos_item               |
| usuarios                 |
+--------------------------+
7 rows in set (0.001 sec)

MariaDB [nexa_servicios]> CREATE TABLE estados_cotizacion (
    ->     id_estado_cotizacion INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_estado VARCHAR(50) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) NULL
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.016 sec)

MariaDB [nexa_servicios]> DESCRIBE estados_cotizacion;
+----------------------+--------------+------+-----+---------+----------------+
| Field                | Type         | Null | Key | Default | Extra          |
+----------------------+--------------+------+-----+---------+----------------+
| id_estado_cotizacion | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_estado        | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion          | varchar(255) | YES  |     | NULL    |                |
+----------------------+--------------+------+-----+---------+----------------+
3 rows in set (0.014 sec)

MariaDB [nexa_servicios]> CREATE TABLE estados_orden (
    ->     id_estado_orden INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_estado VARCHAR(50) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) NULL
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.016 sec)

MariaDB [nexa_servicios]> DESCRIBE estados_orden;
+-----------------+--------------+------+-----+---------+----------------+
| Field           | Type         | Null | Key | Default | Extra          |
+-----------------+--------------+------+-----+---------+----------------+
| id_estado_orden | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_estado   | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion     | varchar(255) | YES  |     | NULL    |                |
+-----------------+--------------+------+-----+---------+----------------+
3 rows in set (0.021 sec)

MariaDB [nexa_servicios]> CREATE TABLE estados_recepcion (
    ->     id_estado_recepcion INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_estado VARCHAR(50) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) NULL
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.021 sec)

MariaDB [nexa_servicios]> DESCRIBE estados_recepcion;
+---------------------+--------------+------+-----+---------+----------------+
| Field               | Type         | Null | Key | Default | Extra          |
+---------------------+--------------+------+-----+---------+----------------+
| id_estado_recepcion | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_estado       | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion         | varchar(255) | YES  |     | NULL    |                |
+---------------------+--------------+------+-----+---------+----------------+
3 rows in set (0.014 sec)

MariaDB [nexa_servicios]> CREATE TABLE estados_factura (
    ->     id_estado_factura INT AUTO_INCREMENT PRIMARY KEY,
    ->     nombre_estado VARCHAR(50) NOT NULL UNIQUE,
    ->     descripcion VARCHAR(255) NULL
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.024 sec)

MariaDB [nexa_servicios]> DESCRIBE estados_factura;
+-------------------+--------------+------+-----+---------+----------------+
| Field             | Type         | Null | Key | Default | Extra          |
+-------------------+--------------+------+-----+---------+----------------+
| id_estado_factura | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_estado     | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion       | varchar(255) | YES  |     | NULL    |                |
+-------------------+--------------+------+-----+---------+----------------+
3 rows in set (0.015 sec)

MariaDB [nexa_servicios]> DESCRIBE estados_factura;
+-------------------+--------------+------+-----+---------+----------------+
| Field             | Type         | Null | Key | Default | Extra          |
+-------------------+--------------+------+-----+---------+----------------+
| id_estado_factura | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_estado     | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion       | varchar(255) | YES  |     | NULL    |                |
+-------------------+--------------+------+-----+---------+----------------+
3 rows in set (0.012 sec)

MariaDB [nexa_servicios]> DESCRIBE solicitudes_compra;
ERROR 1146 (42S02): Table 'nexa_servicios.solicitudes_compra' doesn't exist
MariaDB [nexa_servicios]> CREATE TABLE solicitudes_compra (
    ->     id_solicitud INT AUTO_INCREMENT PRIMARY KEY,
    ->     codigo_solicitud VARCHAR(20) NOT NULL UNIQUE,
    ->     id_solicitante INT NOT NULL,
    ->     id_responsable INT NULL,
    ->     id_estado_solicitud INT NOT NULL,
    ->     id_prioridad INT NOT NULL,
    ->     descripcion TEXT NOT NULL,
    ->     justificacion TEXT NOT NULL,
    ->     fecha_solicitud DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     fecha_actualizacion DATETIME NULL,
    ->     CONSTRAINT fk_solicitudes_solicitante FOREIGN KEY (id_solicitante) REFERENCES usuarios(id_usuario),
    ->     CONSTRAINT fk_solicitudes_responsable FOREIGN KEY (id_responsable) REFERENCES usuarios(id_usuario),
    ->     CONSTRAINT fk_solicitudes_estado FOREIGN KEY (id_estado_solicitud) REFERENCES estados_solicitud(id_estado_solicitud),
    ->     CONSTRAINT fk_solicitudes_prioridad FOREIGN KEY (id_prioridad) REFERENCES prioridades(id_prioridad)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.019 sec)

MariaDB [nexa_servicios]> DESCRIBE solicitudes_compra;
+---------------------+-------------+------+-----+---------------------+----------------+
| Field               | Type        | Null | Key | Default             | Extra          |
+---------------------+-------------+------+-----+---------------------+----------------+
| id_solicitud        | int(11)     | NO   | PRI | NULL                | auto_increment |
| codigo_solicitud    | varchar(20) | NO   | UNI | NULL                |                |
| id_solicitante      | int(11)     | NO   | MUL | NULL                |                |
| id_responsable      | int(11)     | YES  | MUL | NULL                |                |
| id_estado_solicitud | int(11)     | NO   | MUL | NULL                |                |
| id_prioridad        | int(11)     | NO   | MUL | NULL                |                |
| descripcion         | text        | NO   |     | NULL                |                |
| justificacion       | text        | NO   |     | NULL                |                |
| fecha_solicitud     | datetime    | NO   |     | current_timestamp() |                |
| fecha_actualizacion | datetime    | YES  |     | NULL                |                |
+---------------------+-------------+------+-----+---------------------+----------------+
10 rows in set (0.022 sec)

MariaDB [nexa_servicios]> DESCRIBE solicitudes_compra;
+---------------------+-------------+------+-----+---------------------+----------------+
| Field               | Type        | Null | Key | Default             | Extra          |
+---------------------+-------------+------+-----+---------------------+----------------+
| id_solicitud        | int(11)     | NO   | PRI | NULL                | auto_increment |
| codigo_solicitud    | varchar(20) | NO   | UNI | NULL                |                |
| id_solicitante      | int(11)     | NO   | MUL | NULL                |                |
| id_responsable      | int(11)     | YES  | MUL | NULL                |                |
| id_estado_solicitud | int(11)     | NO   | MUL | NULL                |                |
| id_prioridad        | int(11)     | NO   | MUL | NULL                |                |
| descripcion         | text        | NO   |     | NULL                |                |
| justificacion       | text        | NO   |     | NULL                |                |
| fecha_solicitud     | datetime    | NO   |     | current_timestamp() |                |
| fecha_actualizacion | datetime    | YES  |     | NULL                |                |
+---------------------+-------------+------+-----+---------------------+----------------+
10 rows in set (0.019 sec)

MariaDB [nexa_servicios]> CREATE TABLE detalle_solicitud (
    ->     id_detalle_solicitud INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_solicitud INT NOT NULL,
    ->     id_tipo_item INT NOT NULL,
    ->     descripcion_item VARCHAR(255) NOT NULL,
    ->     cantidad DECIMAL(10,2) NOT NULL,
    ->     unidad_medida VARCHAR(30) NULL,
    ->     valor_estimado DECIMAL(15,2) NULL,
    ->     CONSTRAINT chk_detalle_solicitud_cantidad CHECK (cantidad > 0),
    ->     CONSTRAINT chk_detalle_solicitud_valor CHECK (valor_estimado IS NULL OR valor_estimado >= 0),
    ->     CONSTRAINT fk_detalle_solicitud_solicitud FOREIGN KEY (id_solicitud) REFERENCES solicitudes_compra(id_solicitud),
    ->     CONSTRAINT fk_detalle_solicitud_tipo FOREIGN KEY (id_tipo_item) REFERENCES tipos_item(id_tipo_item)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.015 sec)

MariaDB [nexa_servicios]> DESCRIBE detalle_solicitud;
+----------------------+---------------+------+-----+---------+----------------+
| Field                | Type          | Null | Key | Default | Extra          |
+----------------------+---------------+------+-----+---------+----------------+
| id_detalle_solicitud | int(11)       | NO   | PRI | NULL    | auto_increment |
| id_solicitud         | int(11)       | NO   | MUL | NULL    |                |
| id_tipo_item         | int(11)       | NO   | MUL | NULL    |                |
| descripcion_item     | varchar(255)  | NO   |     | NULL    |                |
| cantidad             | decimal(10,2) | NO   |     | NULL    |                |
| unidad_medida        | varchar(30)   | YES  |     | NULL    |                |
| valor_estimado       | decimal(15,2) | YES  |     | NULL    |                |
+----------------------+---------------+------+-----+---------+----------------+
7 rows in set (0.024 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| detalle_solicitud        |
| estados_cotizacion       |
| estados_factura          |
| estados_orden            |
| estados_recepcion        |
| estados_solicitud        |
| prioridades              |
| proveedores              |
| roles                    |
| solicitudes_compra       |
| tipos_decision           |
| tipos_item               |
| usuarios                 |
+--------------------------+
13 rows in set (0.001 sec)

MariaDB [nexa_servicios]> CREATE TABLE aprobaciones (
    ->     id_aprobacion INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_solicitud INT NOT NULL,
    ->     id_usuario INT NOT NULL,
    ->     id_tipo_decision INT NOT NULL,
    ->     motivo TEXT NULL,
    ->     fecha_decision DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     CONSTRAINT fk_aprobaciones_solicitud FOREIGN KEY (id_solicitud) REFERENCES solicitudes_compra(id_solicitud),
    ->     CONSTRAINT fk_aprobaciones_usuario FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    ->     CONSTRAINT fk_aprobaciones_decision FOREIGN KEY (id_tipo_decision) REFERENCES tipos_decision(id_tipo_decision)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.014 sec)

MariaDB [nexa_servicios]> DESCRIBE aprobaciones;
+------------------+----------+------+-----+---------------------+----------------+
| Field            | Type     | Null | Key | Default             | Extra          |
+------------------+----------+------+-----+---------------------+----------------+
| id_aprobacion    | int(11)  | NO   | PRI | NULL                | auto_increment |
| id_solicitud     | int(11)  | NO   | MUL | NULL                |                |
| id_usuario       | int(11)  | NO   | MUL | NULL                |                |
| id_tipo_decision | int(11)  | NO   | MUL | NULL                |                |
| motivo           | text     | YES  |     | NULL                |                |
| fecha_decision   | datetime | NO   |     | current_timestamp() |                |
+------------------+----------+------+-----+---------------------+----------------+
6 rows in set (0.015 sec)

MariaDB [nexa_servicios]> CREATE TABLE cotizaciones (
    ->     id_cotizacion INT AUTO_INCREMENT PRIMARY KEY,
    ->     codigo_cotizacion VARCHAR(30) NOT NULL UNIQUE,
    ->     id_solicitud INT NOT NULL,
    ->     id_proveedor INT NOT NULL,
    ->     fecha_cotizacion DATE NOT NULL DEFAULT (CURRENT_DATE),
    ->     fecha_vencimiento DATE NULL,
    ->     tiempo_entrega_dias INT NULL,
    ->     condiciones_pago VARCHAR(100) NULL,
    ->     valor_subtotal DECIMAL(15,2) NOT NULL DEFAULT 0,
    ->     descuento DECIMAL(15,2) NOT NULL DEFAULT 0,
    ->     valor_impuestos DECIMAL(15,2) NOT NULL DEFAULT 0,
    ->     valor_total DECIMAL(15,2) AS (valor_subtotal - descuento + valor_impuestos) STORED,
    ->     id_estado_cotizacion INT NOT NULL,
    ->     observaciones TEXT NULL,
    ->     CONSTRAINT chk_cotizacion_vencimiento CHECK (fecha_vencimiento IS NULL OR fecha_vencimiento >= fecha_cotizacion),
    ->     CONSTRAINT chk_cotizacion_entrega CHECK (tiempo_entrega_dias IS NULL OR tiempo_entrega_dias >= 0),
    ->     CONSTRAINT chk_cotizacion_subtotal CHECK (valor_subtotal >= 0),
    ->     CONSTRAINT chk_cotizacion_descuento CHECK (descuento >= 0),
    ->     CONSTRAINT chk_cotizacion_impuestos CHECK (valor_impuestos >= 0),
    ->     CONSTRAINT fk_cotizaciones_solicitud FOREIGN KEY (id_solicitud) REFERENCES solicitudes_compra(id_solicitud),
    ->     CONSTRAINT fk_cotizaciones_proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor),
    ->     CONSTRAINT fk_cotizaciones_estado FOREIGN KEY (id_estado_cotizacion) REFERENCES estados_cotizacion(id_estado_cotizacion)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.019 sec)

MariaDB [nexa_servicios]> DESCRIBE cotizaciones;
+----------------------+---------------+------+-----+-----------+------------------+
| Field                | Type          | Null | Key | Default   | Extra            |
+----------------------+---------------+------+-----+-----------+------------------+
| id_cotizacion        | int(11)       | NO   | PRI | NULL      | auto_increment   |
| codigo_cotizacion    | varchar(30)   | NO   | UNI | NULL      |                  |
| id_solicitud         | int(11)       | NO   | MUL | NULL      |                  |
| id_proveedor         | int(11)       | NO   | MUL | NULL      |                  |
| fecha_cotizacion     | date          | NO   |     | curdate() |                  |
| fecha_vencimiento    | date          | YES  |     | NULL      |                  |
| tiempo_entrega_dias  | int(11)       | YES  |     | NULL      |                  |
| condiciones_pago     | varchar(100)  | YES  |     | NULL      |                  |
| valor_subtotal       | decimal(15,2) | NO   |     | 0.00      |                  |
| descuento            | decimal(15,2) | NO   |     | 0.00      |                  |
| valor_impuestos      | decimal(15,2) | NO   |     | 0.00      |                  |
| valor_total          | decimal(15,2) | YES  |     | NULL      | STORED GENERATED |
| id_estado_cotizacion | int(11)       | NO   | MUL | NULL      |                  |
| observaciones        | text          | YES  |     | NULL      |                  |
+----------------------+---------------+------+-----+-----------+------------------+
14 rows in set (0.013 sec)

MariaDB [nexa_servicios]> CREATE TABLE detalle_cotizacion (
    ->     id_detalle_cotizacion INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_cotizacion INT NOT NULL,
    ->     id_detalle_solicitud INT NOT NULL,
    ->     cantidad DECIMAL(10,2) NOT NULL,
    ->     precio_unitario DECIMAL(15,2) NOT NULL,
    ->     subtotal DECIMAL(15,2) AS (cantidad * precio_unitario) STORED,
    ->     CONSTRAINT uq_cotizacion_detalle UNIQUE (id_cotizacion, id_detalle_solicitud),
    ->     CONSTRAINT chk_det_cot_cantidad CHECK (cantidad > 0),
    ->     CONSTRAINT chk_det_cot_precio CHECK (precio_unitario >= 0),
    ->     CONSTRAINT fk_det_cot_cotizacion FOREIGN KEY (id_cotizacion) REFERENCES cotizaciones(id_cotizacion),
    ->     CONSTRAINT fk_det_cot_solicitud FOREIGN KEY (id_detalle_solicitud) REFERENCES detalle_solicitud(id_detalle_solicitud)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.019 sec)

MariaDB [nexa_servicios]> DESCRIBE detalle_cotizacion;
+-----------------------+---------------+------+-----+---------+------------------+
| Field                 | Type          | Null | Key | Default | Extra            |
+-----------------------+---------------+------+-----+---------+------------------+
| id_detalle_cotizacion | int(11)       | NO   | PRI | NULL    | auto_increment   |
| id_cotizacion         | int(11)       | NO   | MUL | NULL    |                  |
| id_detalle_solicitud  | int(11)       | NO   | MUL | NULL    |                  |
| cantidad              | decimal(10,2) | NO   |     | NULL    |                  |
| precio_unitario       | decimal(15,2) | NO   |     | NULL    |                  |
| subtotal              | decimal(15,2) | YES  |     | NULL    | STORED GENERATED |
+-----------------------+---------------+------+-----+---------+------------------+
6 rows in set (0.019 sec)

MariaDB [nexa_servicios]> CREATE TABLE ordenes_compra (
    ->     id_orden INT AUTO_INCREMENT PRIMARY KEY,
    ->     codigo_orden VARCHAR(30) NOT NULL UNIQUE,
    ->     id_solicitud INT NOT NULL,
    ->     id_cotizacion INT NOT NULL,
    ->     id_comprador INT NOT NULL,
    ->     fecha_orden DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     valor_subtotal DECIMAL(15,2) NOT NULL DEFAULT 0,
    ->     descuento DECIMAL(15,2) NOT NULL DEFAULT 0,
    ->     valor_impuestos DECIMAL(15,2) NOT NULL DEFAULT 0,
    ->     valor_total DECIMAL(15,2) AS (valor_subtotal - descuento + valor_impuestos) STORED,
    ->     id_estado_orden INT NOT NULL,
    ->     observaciones TEXT NULL,
    ->     CONSTRAINT chk_orden_subtotal CHECK (valor_subtotal >= 0),
    ->     CONSTRAINT chk_orden_descuento CHECK (descuento >= 0),
    ->     CONSTRAINT chk_orden_impuestos CHECK (valor_impuestos >= 0),
    ->     CONSTRAINT fk_orden_solicitud FOREIGN KEY (id_solicitud) REFERENCES solicitudes_compra(id_solicitud),
    ->     CONSTRAINT fk_orden_cotizacion FOREIGN KEY (id_cotizacion) REFERENCES cotizaciones(id_cotizacion),
    ->     CONSTRAINT fk_orden_comprador FOREIGN KEY (id_comprador) REFERENCES usuarios(id_usuario),
    ->     CONSTRAINT fk_orden_estado FOREIGN KEY (id_estado_orden) REFERENCES estados_orden(id_estado_orden)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.018 sec)

MariaDB [nexa_servicios]> DESCRIBE ordenes_compra;
+-----------------+---------------+------+-----+---------------------+------------------+
| Field           | Type          | Null | Key | Default             | Extra            |
+-----------------+---------------+------+-----+---------------------+------------------+
| id_orden        | int(11)       | NO   | PRI | NULL                | auto_increment   |
| codigo_orden    | varchar(30)   | NO   | UNI | NULL                |                  |
| id_solicitud    | int(11)       | NO   | MUL | NULL                |                  |
| id_cotizacion   | int(11)       | NO   | MUL | NULL                |                  |
| id_comprador    | int(11)       | NO   | MUL | NULL                |                  |
| fecha_orden     | datetime      | NO   |     | current_timestamp() |                  |
| valor_subtotal  | decimal(15,2) | NO   |     | 0.00                |                  |
| descuento       | decimal(15,2) | NO   |     | 0.00                |                  |
| valor_impuestos | decimal(15,2) | NO   |     | 0.00                |                  |
| valor_total     | decimal(15,2) | YES  |     | NULL                | STORED GENERATED |
| id_estado_orden | int(11)       | NO   | MUL | NULL                |                  |
| observaciones   | text          | YES  |     | NULL                |                  |
+-----------------+---------------+------+-----+---------------------+------------------+
12 rows in set (0.022 sec)

MariaDB [nexa_servicios]> CREATE TABLE detalle_orden_compra (
    ->     id_detalle_orden INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_orden INT NOT NULL,
    ->     id_detalle_solicitud INT NOT NULL,
    ->     id_detalle_cotizacion INT NOT NULL,
    ->     cantidad DECIMAL(10,2) NOT NULL,
    ->     precio_unitario DECIMAL(15,2) NOT NULL,
    ->     descuento DECIMAL(15,2) NOT NULL DEFAULT 0,
    ->     subtotal DECIMAL(15,2) AS (cantidad * precio_unitario - descuento) STORED,
    ->     CONSTRAINT uq_orden_detalle_solicitud UNIQUE (id_orden, id_detalle_solicitud),
    ->     CONSTRAINT chk_det_orden_cantidad CHECK (cantidad > 0),
    ->     CONSTRAINT chk_det_orden_precio CHECK (precio_unitario >= 0),
    ->     CONSTRAINT chk_det_orden_descuento CHECK (descuento >= 0),
    ->     CONSTRAINT fk_det_orden_orden FOREIGN KEY (id_orden) REFERENCES ordenes_compra(id_orden),
    ->     CONSTRAINT fk_det_orden_solicitud FOREIGN KEY (id_detalle_solicitud) REFERENCES detalle_solicitud(id_detalle_solicitud),
    ->     CONSTRAINT fk_det_orden_cotizacion FOREIGN KEY (id_detalle_cotizacion) REFERENCES detalle_cotizacion(id_detalle_cotizacion)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.025 sec)

MariaDB [nexa_servicios]> DESCRIBE detalle_orden_compra;
+-----------------------+---------------+------+-----+---------+------------------+
| Field                 | Type          | Null | Key | Default | Extra            |
+-----------------------+---------------+------+-----+---------+------------------+
| id_detalle_orden      | int(11)       | NO   | PRI | NULL    | auto_increment   |
| id_orden              | int(11)       | NO   | MUL | NULL    |                  |
| id_detalle_solicitud  | int(11)       | NO   | MUL | NULL    |                  |
| id_detalle_cotizacion | int(11)       | NO   | MUL | NULL    |                  |
| cantidad              | decimal(10,2) | NO   |     | NULL    |                  |
| precio_unitario       | decimal(15,2) | NO   |     | NULL    |                  |
| descuento             | decimal(15,2) | NO   |     | 0.00    |                  |
| subtotal              | decimal(15,2) | YES  |     | NULL    | STORED GENERATED |
+-----------------------+---------------+------+-----+---------+------------------+
8 rows in set (0.012 sec)

MariaDB [nexa_servicios]> CREATE TABLE recepciones (
    ->     id_recepcion INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_orden INT NOT NULL,
    ->     id_usuario INT NOT NULL,
    ->     fecha_recepcion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     id_estado_recepcion INT NOT NULL,
    ->     conforme BOOLEAN NOT NULL DEFAULT FALSE,
    ->     observaciones TEXT NULL,
    ->     CONSTRAINT fk_recepciones_orden FOREIGN KEY (id_orden) REFERENCES ordenes_compra(id_orden),
    ->     CONSTRAINT fk_recepciones_usuario FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    ->     CONSTRAINT fk_recepciones_estado FOREIGN KEY (id_estado_recepcion) REFERENCES estados_recepcion(id_estado_recepcion)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.024 sec)

MariaDB [nexa_servicios]> DESCRIBE recepciones;
+---------------------+------------+------+-----+---------------------+----------------+
| Field               | Type       | Null | Key | Default             | Extra          |
+---------------------+------------+------+-----+---------------------+----------------+
| id_recepcion        | int(11)    | NO   | PRI | NULL                | auto_increment |
| id_orden            | int(11)    | NO   | MUL | NULL                |                |
| id_usuario          | int(11)    | NO   | MUL | NULL                |                |
| fecha_recepcion     | datetime   | NO   |     | current_timestamp() |                |
| id_estado_recepcion | int(11)    | NO   | MUL | NULL                |                |
| conforme            | tinyint(1) | NO   |     | 0                   |                |
| observaciones       | text       | YES  |     | NULL                |                |
+---------------------+------------+------+-----+---------------------+----------------+
7 rows in set (0.013 sec)

MariaDB [nexa_servicios]> CREATE TABLE detalle_recepcion (
    ->     id_detalle_recepcion INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_recepcion INT NOT NULL,
    ->     id_detalle_orden INT NOT NULL,
    ->     cantidad_recibida DECIMAL(10,2) NOT NULL,
    ->     cantidad_aceptada DECIMAL(10,2) NOT NULL,
    ->     cantidad_rechazada DECIMAL(10,2) AS (cantidad_recibida - cantidad_aceptada) STORED,
    ->     observacion TEXT NULL,
    ->     CONSTRAINT chk_det_rec_recibida CHECK (cantidad_recibida >= 0),
    ->     CONSTRAINT chk_det_rec_aceptada CHECK (cantidad_aceptada >= 0 AND cantidad_aceptada <= cantidad_recibida),
    ->     CONSTRAINT fk_det_rec_recepcion FOREIGN KEY (id_recepcion) REFERENCES recepciones(id_recepcion),
    ->     CONSTRAINT fk_det_rec_orden FOREIGN KEY (id_detalle_orden) REFERENCES detalle_orden_compra(id_detalle_orden)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.027 sec)

MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> DESCRIBE detalle_recepcion;
+----------------------+---------------+------+-----+---------+------------------+
| Field                | Type          | Null | Key | Default | Extra            |
+----------------------+---------------+------+-----+---------+------------------+
| id_detalle_recepcion | int(11)       | NO   | PRI | NULL    | auto_increment   |
| id_recepcion         | int(11)       | NO   | MUL | NULL    |                  |
| id_detalle_orden     | int(11)       | NO   | MUL | NULL    |                  |
| cantidad_recibida    | decimal(10,2) | NO   |     | NULL    |                  |
| cantidad_aceptada    | decimal(10,2) | NO   |     | NULL    |                  |
| cantidad_rechazada   | decimal(10,2) | YES  |     | NULL    | STORED GENERATED |
| observacion          | text          | YES  |     | NULL    |                  |
+----------------------+---------------+------+-----+---------+------------------+
7 rows in set (0.021 sec)

MariaDB [nexa_servicios]> CREATE TABLE facturas (
    ->     id_factura INT AUTO_INCREMENT PRIMARY KEY,
    ->     numero_factura VARCHAR(50) NOT NULL,
    ->     id_proveedor INT NOT NULL,
    ->     id_orden INT NOT NULL,
    ->     fecha_factura DATE NOT NULL DEFAULT (CURRENT_DATE),
    ->     valor_subtotal DECIMAL(15,2) NOT NULL,
    ->     descuento DECIMAL(15,2) NOT NULL DEFAULT 0,
    ->     valor_impuestos DECIMAL(15,2) NOT NULL DEFAULT 0,
    ->     valor_total DECIMAL(15,2) AS (valor_subtotal - descuento + valor_impuestos) STORED,
    ->     id_estado_factura INT NOT NULL,
    ->     observaciones TEXT NULL,
    ->     CONSTRAINT uq_factura_proveedor_numero UNIQUE (id_proveedor, numero_factura),
    ->     CONSTRAINT chk_factura_subtotal CHECK (valor_subtotal >= 0),
    ->     CONSTRAINT chk_factura_descuento CHECK (descuento >= 0),
    ->     CONSTRAINT chk_factura_impuestos CHECK (valor_impuestos >= 0),
    ->     CONSTRAINT fk_facturas_proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor),
    ->     CONSTRAINT fk_facturas_orden FOREIGN KEY (id_orden) REFERENCES ordenes_compra(id_orden),
    ->     CONSTRAINT fk_facturas_estado FOREIGN KEY (id_estado_factura) REFERENCES estados_factura(id_estado_factura)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.016 sec)

MariaDB [nexa_servicios]> DESCRIBE facturas;
+-------------------+---------------+------+-----+-----------+------------------+
| Field             | Type          | Null | Key | Default   | Extra            |
+-------------------+---------------+------+-----+-----------+------------------+
| id_factura        | int(11)       | NO   | PRI | NULL      | auto_increment   |
| numero_factura    | varchar(50)   | NO   |     | NULL      |                  |
| id_proveedor      | int(11)       | NO   | MUL | NULL      |                  |
| id_orden          | int(11)       | NO   | MUL | NULL      |                  |
| fecha_factura     | date          | NO   |     | curdate() |                  |
| valor_subtotal    | decimal(15,2) | NO   |     | NULL      |                  |
| descuento         | decimal(15,2) | NO   |     | 0.00      |                  |
| valor_impuestos   | decimal(15,2) | NO   |     | 0.00      |                  |
| valor_total       | decimal(15,2) | YES  |     | NULL      | STORED GENERATED |
| id_estado_factura | int(11)       | NO   | MUL | NULL      |                  |
| observaciones     | text          | YES  |     | NULL      |                  |
+-------------------+---------------+------+-----+-----------+------------------+
11 rows in set (0.025 sec)

MariaDB [nexa_servicios]> CREATE TABLE auditoria (
    ->     id_auditoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    ->     id_usuario INT NULL,
    ->     tabla_afectada VARCHAR(100) NOT NULL,
    ->     id_registro BIGINT NOT NULL,
    ->     accion VARCHAR(20) NOT NULL,
    ->     fecha_hora DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ->     descripcion TEXT NULL,
    ->     CONSTRAINT chk_auditoria_accion CHECK (accion IN ('INSERT','UPDATE','DELETE')),
    ->     CONSTRAINT fk_auditoria_usuario FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    ->     INDEX idx_auditoria_tabla (tabla_afectada),
    ->     INDEX idx_auditoria_registro (id_registro),
    ->     INDEX idx_auditoria_accion (accion),
    ->     INDEX idx_auditoria_fecha (fecha_hora)
    -> ) ENGINE=InnoDB;
Query OK, 0 rows affected (0.028 sec)

MariaDB [nexa_servicios]> DESCRIBE auditoria;
+----------------+--------------+------+-----+---------------------+----------------+
| Field          | Type         | Null | Key | Default             | Extra          |
+----------------+--------------+------+-----+---------------------+----------------+
| id_auditoria   | bigint(20)   | NO   | PRI | NULL                | auto_increment |
| id_usuario     | int(11)      | YES  | MUL | NULL                |                |
| tabla_afectada | varchar(100) | NO   | MUL | NULL                |                |
| id_registro    | bigint(20)   | NO   | MUL | NULL                |                |
| accion         | varchar(20)  | NO   | MUL | NULL                |                |
| fecha_hora     | datetime     | NO   | MUL | current_timestamp() |                |
| descripcion    | text         | YES  |     | NULL                |                |
+----------------+--------------+------+-----+---------------------+----------------+
7 rows in set (0.021 sec)

MariaDB [nexa_servicios]> INSERT INTO estados_solicitud (nombre_estado) VALUES
    -> ('Pendiente'),
    -> ('En revision'),
    -> ('Aprobada'),
    -> ('Rechazada'),
    -> ('Devuelta'),
    -> ('En cotizacion'),
    -> ('Comprada'),
    -> ('Cerrada');
Query OK, 8 rows affected (0.011 sec)
Records: 8  Duplicates: 0  Warnings: 0

MariaDB [nexa_servicios]> INSERT INTO prioridades (nombre_prioridad) VALUES
    -> ('Baja'),
    -> ('Media'),
    -> ('Alta'),
    -> ('Urgente');
Query OK, 4 rows affected (0.010 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [nexa_servicios]> INSERT INTO tipos_item (nombre_tipo) VALUES
    -> ('Producto'),
    -> ('Servicio');
Query OK, 2 rows affected (0.010 sec)
Records: 2  Duplicates: 0  Warnings: 0

MariaDB [nexa_servicios]> INSERT INTO tipos_decision (nombre_decision) VALUES
    -> ('Aprobada'),
    -> ('Rechazada'),
    -> ('Devuelta');
Query OK, 3 rows affected (0.002 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [nexa_servicios]> INSERT INTO estados_cotizacion (nombre_estado) VALUES
    -> ('Recibida'),
    -> ('Seleccionada'),
    -> ('Descartada');
Query OK, 3 rows affected (0.010 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [nexa_servicios]> INSERT INTO estados_orden (nombre_estado) VALUES
    -> ('Generada'),
    -> ('Enviada'),
    -> ('Recibida'),
    -> ('Cerrada'),
    -> ('Cancelada');
Query OK, 5 rows affected (0.002 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [nexa_servicios]> INSERT INTO estados_orden (nombre_estado) VALUES
    -> ('Generada'),
    -> ('Enviada'),
    -> ('Recibida'),
    -> ('Cerrada'),
    -> ('Cancelada');
ERROR 1062 (23000): Duplicate entry 'Generada' for key 'nombre_estado'
MariaDB [nexa_servicios]> 
MariaDB [nexa_servicios]> INSERT INTO estados_recepcion (nombre_estado) VALUES
    -> ('Pendiente'),
    -> ('Recibida'),
    -> ('Conforme'),
    -> ('Con inconsistencias');
Query OK, 4 rows affected (0.002 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [nexa_servicios]> INSERT INTO estados_factura (nombre_estado) VALUES
    -> ('Pendiente'),
    -> ('Verificada'),
    -> ('Rechazada');
Query OK, 3 rows affected (0.010 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [nexa_servicios]> SELECT * FROM estados_solicitud;
+---------------------+---------------+-------------+
| id_estado_solicitud | nombre_estado | descripcion |
+---------------------+---------------+-------------+
|                   1 | Pendiente     | NULL        |
|                   2 | En revision   | NULL        |
|                   3 | Aprobada      | NULL        |
|                   4 | Rechazada     | NULL        |
|                   5 | Devuelta      | NULL        |
|                   6 | En cotizacion | NULL        |
|                   7 | Comprada      | NULL        |
|                   8 | Cerrada       | NULL        |
+---------------------+---------------+-------------+
8 rows in set (0.001 sec)

MariaDB [nexa_servicios]> SELECT * FROM prioridades;
+--------------+------------------+-------------+
| id_prioridad | nombre_prioridad | descripcion |
+--------------+------------------+-------------+
|            1 | Baja             | NULL        |
|            2 | Media            | NULL        |
|            3 | Alta             | NULL        |
|            4 | Urgente          | NULL        |
+--------------+------------------+-------------+
4 rows in set (0.000 sec)

MariaDB [nexa_servicios]> SELECT * FROM tipos_item;
+--------------+-------------+-------------+
| id_tipo_item | nombre_tipo | descripcion |
+--------------+-------------+-------------+
|            1 | Producto    | NULL        |
|            2 | Servicio    | NULL        |
+--------------+-------------+-------------+
2 rows in set (0.001 sec)

MariaDB [nexa_servicios]> SELECT * FROM tipos_decision;
+------------------+-----------------+-------------+
| id_tipo_decision | nombre_decision | descripcion |
+------------------+-----------------+-------------+
|                1 | Aprobada        | NULL        |
|                2 | Rechazada       | NULL        |
|                3 | Devuelta        | NULL        |
+------------------+-----------------+-------------+
3 rows in set (0.000 sec)

MariaDB [nexa_servicios]> SELECT * FROM estados_cotizacion;
+----------------------+---------------+-------------+
| id_estado_cotizacion | nombre_estado | descripcion |
+----------------------+---------------+-------------+
|                    1 | Recibida      | NULL        |
|                    2 | Seleccionada  | NULL        |
|                    3 | Descartada    | NULL        |
+----------------------+---------------+-------------+
3 rows in set (0.000 sec)

MariaDB [nexa_servicios]> SELECT * FROM estados_orden;
+-----------------+---------------+-------------+
| id_estado_orden | nombre_estado | descripcion |
+-----------------+---------------+-------------+
|               1 | Generada      | NULL        |
|               2 | Enviada       | NULL        |
|               3 | Recibida      | NULL        |
|               4 | Cerrada       | NULL        |
|               5 | Cancelada     | NULL        |
+-----------------+---------------+-------------+
5 rows in set (0.001 sec)

MariaDB [nexa_servicios]> SELECT * FROM estados_recepcion;
+---------------------+---------------------+-------------+
| id_estado_recepcion | nombre_estado       | descripcion |
+---------------------+---------------------+-------------+
|                   1 | Pendiente           | NULL        |
|                   2 | Recibida            | NULL        |
|                   3 | Conforme            | NULL        |
|                   4 | Con inconsistencias | NULL        |
+---------------------+---------------------+-------------+
4 rows in set (0.000 sec)

MariaDB [nexa_servicios]> SELECT * FROM estados_recepcion;
+---------------------+---------------------+-------------+
| id_estado_recepcion | nombre_estado       | descripcion |
+---------------------+---------------------+-------------+
|                   1 | Pendiente           | NULL        |
|                   2 | Recibida            | NULL        |
|                   3 | Conforme            | NULL        |
|                   4 | Con inconsistencias | NULL        |
+---------------------+---------------------+-------------+
4 rows in set (0.000 sec)

MariaDB [nexa_servicios]> SELECT * FROM estados_factura;
+-------------------+---------------+-------------+
| id_estado_factura | nombre_estado | descripcion |
+-------------------+---------------+-------------+
|                 1 | Pendiente     | NULL        |
|                 2 | Verificada    | NULL        |
|                 3 | Rechazada     | NULL        |
+-------------------+---------------+-------------+
3 rows in set (0.000 sec)

MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| aprobaciones             |
| auditoria                |
| cotizaciones             |
| detalle_cotizacion       |
| detalle_orden_compra     |
| detalle_recepcion        |
| detalle_solicitud        |
| estados_cotizacion       |
| estados_factura          |
| estados_orden            |
| estados_recepcion        |
| estados_solicitud        |
| facturas                 |
| ordenes_compra           |
| prioridades              |
| proveedores              |
| recepciones              |
| roles                    |
| solicitudes_compra       |
| tipos_decision           |
| tipos_item               |
| usuarios                 |
+--------------------------+
22 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE roles;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| id_rol      | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_rol  | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion | varchar(255) | YES  |     | NULL    |                |
| activo      | tinyint(1)   | NO   |     | 1       |                |
+-------------+--------------+------+-----+---------+----------------+
4 rows in set (0.023 sec)

MariaDB [nexa_servicios]> DESCRIBE usuarios;
+-----------------+--------------+------+-----+---------------------+----------------+
| Field           | Type         | Null | Key | Default             | Extra          |
+-----------------+--------------+------+-----+---------------------+----------------+
| id_usuario      | int(11)      | NO   | PRI | NULL                | auto_increment |
| id_rol          | int(11)      | NO   | MUL | NULL                |                |
| nombres         | varchar(100) | NO   |     | NULL                |                |
| apellidos       | varchar(100) | NO   |     | NULL                |                |
| documento       | varchar(20)  | NO   | UNI | NULL                |                |
| correo          | varchar(150) | NO   | UNI | NULL                |                |
| telefono        | varchar(20)  | YES  |     | NULL                |                |
| contrasena_hash | varchar(255) | NO   |     | NULL                |                |
| estado          | tinyint(1)   | NO   |     | 1                   |                |
| fecha_registro  | datetime     | NO   |     | current_timestamp() |                |
+-----------------+--------------+------+-----+---------------------+----------------+
10 rows in set (0.020 sec)

MariaDB [nexa_servicios]> DESCRIBE proveedores;
+-----------------------+--------------+------+-----+---------------------+----------------+
| Field                 | Type         | Null | Key | Default             | Extra          |
+-----------------------+--------------+------+-----+---------------------+----------------+
| id_proveedor          | int(11)      | NO   | PRI | NULL                | auto_increment |
| codigo_proveedor      | varchar(20)  | NO   | UNI | NULL                |                |
| nombre                | varchar(150) | NO   |     | NULL                |                |
| identificacion_fiscal | varchar(30)  | NO   | UNI | NULL                |                |
| telefono              | varchar(20)  | NO   |     | NULL                |                |
| correo                | varchar(150) | YES  |     | NULL                |                |
| direccion             | varchar(200) | YES  |     | NULL                |                |
| activo                | tinyint(1)   | NO   |     | 1                   |                |
| fecha_registro        | datetime     | NO   |     | current_timestamp() |                |
+-----------------------+--------------+------+-----+---------------------+----------------+
9 rows in set (0.021 sec)

MariaDB [nexa_servicios]> SHOW CREATE TABLE usuarios;
+----------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table    | Create Table                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
+----------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| usuarios | CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `contrasena_hash` varchar(255) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `fecha_registro` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `documento` (`documento`),
  UNIQUE KEY `correo` (`correo`),
  KEY `fk_usuarios_roles` (`id_rol`),
  CONSTRAINT `fk_usuarios_roles` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci |
+----------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.001 sec)

MariaDB [nexa_servicios]> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| bd_transporte_logistica |
| contacto                |
| createinsert            |
| information_schema      |
| mysql                   |
| nexa_servicios          |
| performance_schema      |
| phpmyadmin              |
| plataforma_programacion |
| registro_porcicarnes    |
| sistema_tutorial        |
| test                    |
| tienda_porcicarnes      |
| tutorial_bd             |
+-------------------------+
14 rows in set (0.001 sec)

MariaDB [nexa_servicios]> notee;
MariaDB [(none)]> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| bd_transporte_logistica |
| contacto                |
| createinsert            |
| information_schema      |
| mysql                   |
| nexa_servicios          |
| performance_schema      |
| phpmyadmin              |
| plataforma_programacion |
| registro_porcicarnes    |
| sistema_tutorial        |
| test                    |
| tienda_porcicarnes      |
| tutorial_bd             |
+-------------------------+
14 rows in set (0.001 sec)

MariaDB [(none)]> USE nexa_servicios;
Database changed
MariaDB [nexa_servicios]> SHOW TBLES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TBLES' at line 1
MariaDB [nexa_servicios]> MariaDB [(none)]> DESCRIBE aprobaciones;
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> MariaDB [(none)]> SHOW DATABASES;
+-------------------------+
| Database                |
+-------------------------+
| bd_transporte_logistica |
| contacto                |
| createinsert            |
| information_schema      |
| mysql                   |
| nexa_servicios          |
| performance_schema      |
| phpmyadmin              |
| plataforma_programacion |
| registro_porcicarnes    |
| sistema_tutorial        |
| test                    |
| tienda_porcicarnes      |
| tutorial_bd             |
+-------------------------+
14 rows in set (0.001 sec)

MariaDB [(none)]> USE nexa_servicios;
Database changed
MariaDB [nexa_servicios]> SHOW TABLES;
+--------------------------+
| Tables_in_nexa_servicios |
+--------------------------+
| aprobaciones             |
| auditoria                |
| cotizaciones             |
| detalle_cotizacion       |
| detalle_orden_compra     |
| detalle_recepcion        |
| detalle_solicitud        |
| estados_cotizacion       |
| estados_factura          |
| estados_orden            |
| estados_recepcion        |
| estados_solicitud        |
| facturas                 |
| ordenes_compra           |
| prioridades              |
| proveedores              |
| recepciones              |
| roles                    |
| solicitudes_compra       |
| tipos_decision           |
| tipos_item               |
| usuarios                 |
+--------------------------+
22 rows in set (0.001 sec)

MariaDB [nexa_servicios]> DESCRIBE aprobaciones;
+------------------+----------+------+-----+---------------------+----------------+
| Field            | Type     | Null | Key | Default             | Extra          |
+------------------+----------+------+-----+---------------------+----------------+
| id_aprobacion    | int(11)  | NO   | PRI | NULL                | auto_increment |
| id_solicitud     | int(11)  | NO   | MUL | NULL                |                |
| id_usuario       | int(11)  | NO   | MUL | NULL                |                |
| id_tipo_decision | int(11)  | NO   | MUL | NULL                |                |
| motivo           | text     | YES  |     | NULL                |                |
| fecha_decision   | datetime | NO   |     | current_timestamp() |                |
+------------------+----------+------+-----+---------------------+----------------+
6 rows in set (0.020 sec)

MariaDB [nexa_servicios]> DESCRIBE auditoria;
+----------------+--------------+------+-----+---------------------+----------------+
| Field          | Type         | Null | Key | Default             | Extra          |
+----------------+--------------+------+-----+---------------------+----------------+
| id_auditoria   | bigint(20)   | NO   | PRI | NULL                | auto_increment |
| id_usuario     | int(11)      | YES  | MUL | NULL                |                |
| tabla_afectada | varchar(100) | NO   | MUL | NULL                |                |
| id_registro    | bigint(20)   | NO   | MUL | NULL                |                |
| accion         | varchar(20)  | NO   | MUL | NULL                |                |
| fecha_hora     | datetime     | NO   | MUL | current_timestamp() |                |
| descripcion    | text         | YES  |     | NULL                |                |
+----------------+--------------+------+-----+---------------------+----------------+
7 rows in set (0.014 sec)

MariaDB [nexa_servicios]> DESCRIBE cotizaciones;
+----------------------+---------------+------+-----+-----------+------------------+
| Field                | Type          | Null | Key | Default   | Extra            |
+----------------------+---------------+------+-----+-----------+------------------+
| id_cotizacion        | int(11)       | NO   | PRI | NULL      | auto_increment   |
| codigo_cotizacion    | varchar(30)   | NO   | UNI | NULL      |                  |
| id_solicitud         | int(11)       | NO   | MUL | NULL      |                  |
| id_proveedor         | int(11)       | NO   | MUL | NULL      |                  |
| fecha_cotizacion     | date          | NO   |     | curdate() |                  |
| fecha_vencimiento    | date          | YES  |     | NULL      |                  |
| tiempo_entrega_dias  | int(11)       | YES  |     | NULL      |                  |
| condiciones_pago     | varchar(100)  | YES  |     | NULL      |                  |
| valor_subtotal       | decimal(15,2) | NO   |     | 0.00      |                  |
| descuento            | decimal(15,2) | NO   |     | 0.00      |                  |
| valor_impuestos      | decimal(15,2) | NO   |     | 0.00      |                  |
| valor_total          | decimal(15,2) | YES  |     | NULL      | STORED GENERATED |
| id_estado_cotizacion | int(11)       | NO   | MUL | NULL      |                  |
| observaciones        | text          | YES  |     | NULL      |                  |
+----------------------+---------------+------+-----+-----------+------------------+
14 rows in set (0.021 sec)

MariaDB [nexa_servicios]> DESCRIBE detalle_cotizacion;
+-----------------------+---------------+------+-----+---------+------------------+
| Field                 | Type          | Null | Key | Default | Extra            |
+-----------------------+---------------+------+-----+---------+------------------+
| id_detalle_cotizacion | int(11)       | NO   | PRI | NULL    | auto_increment   |
| id_cotizacion         | int(11)       | NO   | MUL | NULL    |                  |
| id_detalle_solicitud  | int(11)       | NO   | MUL | NULL    |                  |
| cantidad              | decimal(10,2) | NO   |     | NULL    |                  |
| precio_unitario       | decimal(15,2) | NO   |     | NULL    |                  |
| subtotal              | decimal(15,2) | YES  |     | NULL    | STORED GENERATED |
+-----------------------+---------------+------+-----+---------+------------------+
6 rows in set (0.017 sec)

MariaDB [nexa_servicios]> DESCRIBE detalle_orden_compra;
+-----------------------+---------------+------+-----+---------+------------------+
| Field                 | Type          | Null | Key | Default | Extra            |
+-----------------------+---------------+------+-----+---------+------------------+
| id_detalle_orden      | int(11)       | NO   | PRI | NULL    | auto_increment   |
| id_orden              | int(11)       | NO   | MUL | NULL    |                  |
| id_detalle_solicitud  | int(11)       | NO   | MUL | NULL    |                  |
| id_detalle_cotizacion | int(11)       | NO   | MUL | NULL    |                  |
| cantidad              | decimal(10,2) | NO   |     | NULL    |                  |
| precio_unitario       | decimal(15,2) | NO   |     | NULL    |                  |
| descuento             | decimal(15,2) | NO   |     | 0.00    |                  |
| subtotal              | decimal(15,2) | YES  |     | NULL    | STORED GENERATED |
+-----------------------+---------------+------+-----+---------+------------------+
8 rows in set (0.014 sec)

MariaDB [nexa_servicios]> DESCRIBE detalle_recepcion;
+----------------------+---------------+------+-----+---------+------------------+
| Field                | Type          | Null | Key | Default | Extra            |
+----------------------+---------------+------+-----+---------+------------------+
| id_detalle_recepcion | int(11)       | NO   | PRI | NULL    | auto_increment   |
| id_recepcion         | int(11)       | NO   | MUL | NULL    |                  |
| id_detalle_orden     | int(11)       | NO   | MUL | NULL    |                  |
| cantidad_recibida    | decimal(10,2) | NO   |     | NULL    |                  |
| cantidad_aceptada    | decimal(10,2) | NO   |     | NULL    |                  |
| cantidad_rechazada   | decimal(10,2) | YES  |     | NULL    | STORED GENERATED |
| observacion          | text          | YES  |     | NULL    |                  |
+----------------------+---------------+------+-----+---------+------------------+
7 rows in set (0.014 sec)

MariaDB [nexa_servicios]> DESCRIBE detalle_solicitud;
+----------------------+---------------+------+-----+---------+----------------+
| Field                | Type          | Null | Key | Default | Extra          |
+----------------------+---------------+------+-----+---------+----------------+
| id_detalle_solicitud | int(11)       | NO   | PRI | NULL    | auto_increment |
| id_solicitud         | int(11)       | NO   | MUL | NULL    |                |
| id_tipo_item         | int(11)       | NO   | MUL | NULL    |                |
| descripcion_item     | varchar(255)  | NO   |     | NULL    |                |
| cantidad             | decimal(10,2) | NO   |     | NULL    |                |
| unidad_medida        | varchar(30)   | YES  |     | NULL    |                |
| valor_estimado       | decimal(15,2) | YES  |     | NULL    |                |
+----------------------+---------------+------+-----+---------+----------------+
7 rows in set (0.018 sec)

MariaDB [nexa_servicios]> DESCRIBE estados_cotizacion;
+----------------------+--------------+------+-----+---------+----------------+
| Field                | Type         | Null | Key | Default | Extra          |
+----------------------+--------------+------+-----+---------+----------------+
| id_estado_cotizacion | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_estado        | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion          | varchar(255) | YES  |     | NULL    |                |
+----------------------+--------------+------+-----+---------+----------------+
3 rows in set (0.023 sec)

MariaDB [nexa_servicios]> DESCRIBE estados_factura;
+-------------------+--------------+------+-----+---------+----------------+
| Field             | Type         | Null | Key | Default | Extra          |
+-------------------+--------------+------+-----+---------+----------------+
| id_estado_factura | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_estado     | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion       | varchar(255) | YES  |     | NULL    |                |
+-------------------+--------------+------+-----+---------+----------------+
3 rows in set (0.014 sec)

MariaDB [nexa_servicios]> DESCRIBE estados_orden;
+-----------------+--------------+------+-----+---------+----------------+
| Field           | Type         | Null | Key | Default | Extra          |
+-----------------+--------------+------+-----+---------+----------------+
| id_estado_orden | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_estado   | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion     | varchar(255) | YES  |     | NULL    |                |
+-----------------+--------------+------+-----+---------+----------------+
3 rows in set (0.018 sec)

MariaDB [nexa_servicios]> DESCRIBE estados_recepcion;
+---------------------+--------------+------+-----+---------+----------------+
| Field               | Type         | Null | Key | Default | Extra          |
+---------------------+--------------+------+-----+---------+----------------+
| id_estado_recepcion | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_estado       | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion         | varchar(255) | YES  |     | NULL    |                |
+---------------------+--------------+------+-----+---------+----------------+
3 rows in set (0.035 sec)

MariaDB [nexa_servicios]> DESCRIBE estados_solicitud;
+---------------------+--------------+------+-----+---------+----------------+
| Field               | Type         | Null | Key | Default | Extra          |
+---------------------+--------------+------+-----+---------+----------------+
| id_estado_solicitud | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_estado       | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion         | varchar(255) | YES  |     | NULL    |                |
+---------------------+--------------+------+-----+---------+----------------+
3 rows in set (0.015 sec)

MariaDB [nexa_servicios]> DESCRIBE facturas;
+-------------------+---------------+------+-----+-----------+------------------+
| Field             | Type          | Null | Key | Default   | Extra            |
+-------------------+---------------+------+-----+-----------+------------------+
| id_factura        | int(11)       | NO   | PRI | NULL      | auto_increment   |
| numero_factura    | varchar(50)   | NO   |     | NULL      |                  |
| id_proveedor      | int(11)       | NO   | MUL | NULL      |                  |
| id_orden          | int(11)       | NO   | MUL | NULL      |                  |
| fecha_factura     | date          | NO   |     | curdate() |                  |
| valor_subtotal    | decimal(15,2) | NO   |     | NULL      |                  |
| descuento         | decimal(15,2) | NO   |     | 0.00      |                  |
| valor_impuestos   | decimal(15,2) | NO   |     | 0.00      |                  |
| valor_total       | decimal(15,2) | YES  |     | NULL      | STORED GENERATED |
| id_estado_factura | int(11)       | NO   | MUL | NULL      |                  |
| observaciones     | text          | YES  |     | NULL      |                  |
+-------------------+---------------+------+-----+-----------+------------------+
11 rows in set (0.494 sec)

MariaDB [nexa_servicios]> DESCRIBE ordenes_compra;
+-----------------+---------------+------+-----+---------------------+------------------+
| Field           | Type          | Null | Key | Default             | Extra            |
+-----------------+---------------+------+-----+---------------------+------------------+
| id_orden        | int(11)       | NO   | PRI | NULL                | auto_increment   |
| codigo_orden    | varchar(30)   | NO   | UNI | NULL                |                  |
| id_solicitud    | int(11)       | NO   | MUL | NULL                |                  |
| id_cotizacion   | int(11)       | NO   | MUL | NULL                |                  |
| id_comprador    | int(11)       | NO   | MUL | NULL                |                  |
| fecha_orden     | datetime      | NO   |     | current_timestamp() |                  |
| valor_subtotal  | decimal(15,2) | NO   |     | 0.00                |                  |
| descuento       | decimal(15,2) | NO   |     | 0.00                |                  |
| valor_impuestos | decimal(15,2) | NO   |     | 0.00                |                  |
| valor_total     | decimal(15,2) | YES  |     | NULL                | STORED GENERATED |
| id_estado_orden | int(11)       | NO   | MUL | NULL                |                  |
| observaciones   | text          | YES  |     | NULL                |                  |
+-----------------+---------------+------+-----+---------------------+------------------+
12 rows in set (0.019 sec)

MariaDB [nexa_servicios]> DESCRIBE prioridades;
+------------------+--------------+------+-----+---------+----------------+
| Field            | Type         | Null | Key | Default | Extra          |
+------------------+--------------+------+-----+---------+----------------+
| id_prioridad     | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_prioridad | varchar(30)  | NO   | UNI | NULL    |                |
| descripcion      | varchar(255) | YES  |     | NULL    |                |
+------------------+--------------+------+-----+---------+----------------+
3 rows in set (0.014 sec)

MariaDB [nexa_servicios]> DESCRIBE proveedores;
+-----------------------+--------------+------+-----+---------------------+----------------+
| Field                 | Type         | Null | Key | Default             | Extra          |
+-----------------------+--------------+------+-----+---------------------+----------------+
| id_proveedor          | int(11)      | NO   | PRI | NULL                | auto_increment |
| codigo_proveedor      | varchar(20)  | NO   | UNI | NULL                |                |
| nombre                | varchar(150) | NO   |     | NULL                |                |
| identificacion_fiscal | varchar(30)  | NO   | UNI | NULL                |                |
| telefono              | varchar(20)  | NO   |     | NULL                |                |
| correo                | varchar(150) | YES  |     | NULL                |                |
| direccion             | varchar(200) | YES  |     | NULL                |                |
| activo                | tinyint(1)   | NO   |     | 1                   |                |
| fecha_registro        | datetime     | NO   |     | current_timestamp() |                |
+-----------------------+--------------+------+-----+---------------------+----------------+
9 rows in set (0.013 sec)

MariaDB [nexa_servicios]> DESCRIBE recepciones;
+---------------------+------------+------+-----+---------------------+----------------+
| Field               | Type       | Null | Key | Default             | Extra          |
+---------------------+------------+------+-----+---------------------+----------------+
| id_recepcion        | int(11)    | NO   | PRI | NULL                | auto_increment |
| id_orden            | int(11)    | NO   | MUL | NULL                |                |
| id_usuario          | int(11)    | NO   | MUL | NULL                |                |
| fecha_recepcion     | datetime   | NO   |     | current_timestamp() |                |
| id_estado_recepcion | int(11)    | NO   | MUL | NULL                |                |
| conforme            | tinyint(1) | NO   |     | 0                   |                |
| observaciones       | text       | YES  |     | NULL                |                |
+---------------------+------------+------+-----+---------------------+----------------+
7 rows in set (0.012 sec)

MariaDB [nexa_servicios]> DESCRIBE roles;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| id_rol      | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_rol  | varchar(50)  | NO   | UNI | NULL    |                |
| descripcion | varchar(255) | YES  |     | NULL    |                |
| activo      | tinyint(1)   | NO   |     | 1       |                |
+-------------+--------------+------+-----+---------+----------------+
4 rows in set (0.589 sec)

MariaDB [nexa_servicios]> DESCRIBE solicitudes_compra;
+---------------------+-------------+------+-----+---------------------+----------------+
| Field               | Type        | Null | Key | Default             | Extra          |
+---------------------+-------------+------+-----+---------------------+----------------+
| id_solicitud        | int(11)     | NO   | PRI | NULL                | auto_increment |
| codigo_solicitud    | varchar(20) | NO   | UNI | NULL                |                |
| id_solicitante      | int(11)     | NO   | MUL | NULL                |                |
| id_responsable      | int(11)     | YES  | MUL | NULL                |                |
| id_estado_solicitud | int(11)     | NO   | MUL | NULL                |                |
| id_prioridad        | int(11)     | NO   | MUL | NULL                |                |
| descripcion         | text        | NO   |     | NULL                |                |
| justificacion       | text        | NO   |     | NULL                |                |
| fecha_solicitud     | datetime    | NO   |     | current_timestamp() |                |
| fecha_actualizacion | datetime    | YES  |     | NULL                |                |
+---------------------+-------------+------+-----+---------------------+----------------+
10 rows in set (0.016 sec)

MariaDB [nexa_servicios]> DESCRIBE tipos_decision;
+------------------+--------------+------+-----+---------+----------------+
| Field            | Type         | Null | Key | Default | Extra          |
+------------------+--------------+------+-----+---------+----------------+
| id_tipo_decision | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_decision  | varchar(30)  | NO   | UNI | NULL    |                |
| descripcion      | varchar(255) | YES  |     | NULL    |                |
+------------------+--------------+------+-----+---------+----------------+
3 rows in set (1.531 sec)

MariaDB [nexa_servicios]> DESCRIBE tipos_item;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| id_tipo_item | int(11)      | NO   | PRI | NULL    | auto_increment |
| nombre_tipo  | varchar(30)  | NO   | UNI | NULL    |                |
| descripcion  | varchar(255) | YES  |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
3 rows in set (0.014 sec)

MariaDB [nexa_servicios]> DESCRIBE usuarios;
+-----------------+--------------+------+-----+---------------------+----------------+
| Field           | Type         | Null | Key | Default             | Extra          |
+-----------------+--------------+------+-----+---------------------+----------------+
| id_usuario      | int(11)      | NO   | PRI | NULL                | auto_increment |
| id_rol          | int(11)      | NO   | MUL | NULL                |                |
| nombres         | varchar(100) | NO   |     | NULL                |                |
| apellidos       | varchar(100) | NO   |     | NULL                |                |
| documento       | varchar(20)  | NO   | UNI | NULL                |                |
| correo          | varchar(150) | NO   | UNI | NULL                |                |
| telefono        | varchar(20)  | YES  |     | NULL                |                |
| contrasena_hash | varchar(255) | NO   |     | NULL                |                |
| estado          | tinyint(1)   | NO   |     | 1                   |                |
| fecha_registro  | datetime     | NO   |     | current_timestamp() |                |
+-----------------+--------------+------+-----+---------------------+----------------+
10 rows in set (0.015 sec)

MariaDB [nexa_servicios]> notee;
