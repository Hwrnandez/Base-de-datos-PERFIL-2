			DROP DATABASE IF EXISTS db_libroExpress_Rodas_Andres;
 
			CREATE DATABASE db_libroExpress_Rodas_Andres;

			USE db_libroExpress_Rodas_Andres;
 
			CREATE TABLE tb_clientes(

				id_cliente VARCHAR(36) PRIMARY KEY DEFAULT (uuid()),

				nombre_cliente VARCHAR(50) NOT NULL,

				email_cliente VARCHAR(100) NOT NULL,

				telefono VARCHAR(10) NOT NULL

			);
 
			CREATE TABLE tb_generos_libros(

				id_genero_libro VARCHAR(36) PRIMARY KEY DEFAULT (uuid()),

				nombre_genero_libro  VARCHAR(50)

			);
 
			CREATE TABLE tb_prestamos(

				id_prestamo VARCHAR(36) PRIMARY KEY DEFAULT (uuid()),

				id_cliente VARCHAR(36),

				CONSTRAINT fk_prestamos_cliente 

				FOREIGN KEY (id_cliente) REFERENCES tb_clientes (id_cliente),

				fecha_inicio DATE,

				fecha_devolucion DATE,

				estado ENUM ('Activo', 'inactivo')

			);
 
			CREATE TABLe tb_libros(

				id_libro VARCHAR(36) PRIMARY KEY DEFAULT (uuid()),

				titulo_libro VARCHAR (50) NOT NULL,

				anio_publicacion INT NOT NULL,

				CONSTRAINT chk_anio_publicacion CHECK(anio_publicacion > 0 AND anio_publicacion < 2025),

				id_genero_libro VARCHAR (36),

				CONSTRAINT fk_libro_genero 

				FOREIGN KEY (id_genero_libro) REFERENCES tb_generos_libros (id_genero_libro),

				estado ENUM ('Disponible','Prestado')

			);
 
			CREATE TABLE tb_detalles_prestamos(

				id_detalle_prestamo VARCHAR(36) PRIMARY KEY DEFAULT (uuid()),

				id_prestamo VARCHAR (36),

				CONSTRAINT fk_prestamo_detalle

				FOREIGN KEY (id_prestamo) REFERENCES tb_prestamos (id_prestamo),

				id_libro VARCHAR (36), 

				CONSTRAINT fk_prestamo_libro 

				FOREIGN KEY (id_libro) REFERENCES tb_libros (id_libro)

			);
 
 
	