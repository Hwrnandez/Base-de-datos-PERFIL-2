            USE db_libroExpress_Rodas_Andres

-- 	Procedimiento almacenado de las inserciones de datos a clientes
 
			DELIMITER //

			CREATE PROCEDURE insercion_de_clientes(IN nombre VARCHAR(50), IN email VARCHAR(100), IN telefono VARCHAR(10))

			BEGIN

			INSERT INTO tb_clientes(nombre_cliente, email_cliente, telefono) VALUES (nombre, email, telefono);

			END

			//
 
	-- Inserccion de datos al procedimiento almacenado a clientes
 
		call insercion_de_clientes ('pacheco', 'mapache@gmail.com', '1223-8966');

		call insercion_de_clientes ('rodas', 'rodas@gmail.com', '1267-8966');

		call insercion_de_clientes ('andy', 'andy@gmail.com', '1262-8966');

		call insercion_de_clientes ('dom', 'dom@gmail.com', '1220-8966');

		call insercion_de_clientes('joel', 'joel@gmail.com', '1832-8966');

		call insercion_de_clientes('villegas', 'villegas@gmail.com', '1245-8566');

		call insercion_de_clientes('fernado', 'fernado@gmail.com', '1245-8916');

		call insercion_de_clientes('dylan', 'dylan@gmail.com', '1245-8968');

		call insercion_de_clientes('lennyn', 'lennyn@gmail.com', '3561-8966');

		call insercion_de_clientes('josue', 'josue@gmail.com', '6623-8966');

		call insercion_de_clientes('juan', 'juan@gmail.com', '1245-2425');

		call insercion_de_clientes('pablo', 'pablo@gmail.com', '1245-');

		call insercion_de_clientes('guillermo', 'guillermo@gmail.com', '1245-3453');

		call insercion_de_clientes('gerardo', 'gerardo@gmail.com', '1245-34543');

		call insercion_de_clientes('burgos', 'burgos@gmail.com', '1245-89665');
 
 
	 select * from tb_clientes

		-- Procedimiento almacenado de insercción de los generos de libros


		DELIMITER //

			CREATE PROCEDURE insercion_generos_libros(IN nombre VARCHAR(50))

			BEGIN

			INSERT INTO tb_generos_libros(nombre_genero_libro) VALUES (nombre);

			END

			//

			-- Inserccion de datos al procedimiento creado de generos de libros

			CALL insercion_generos_libros ('drama');

			CALL insercion_generos_libros ('accion');

			CALL insercion_generos_libros ('novela');

			CALL insercion_generos_libros ('bibia');

			CALL insercion_generos_libros ('kDrama');

			CALL insercion_generos_libros ('anime');

			CALL insercion_generos_libros ('chime');

			CALL insercion_generos_libros ('comedia');

			CALL insercion_generos_libros ('comedia romantica');

			CALL insercion_generos_libros ('manga');

			CALL insercion_generos_libros ('catolicos');

			CALL insercion_generos_libros ('cristianos');

			CALL insercion_generos_libros ('cultara');

			CALL insercion_generos_libros ('educion');

			CALL insercion_generos_libros ('drama turco');

			-- Procedimiento de Insercion de prestamos 

			DELIMITER //

			CREATE PROCEDURE insercion_prestamos (IN nombre VARCHAR(50), IN fecha_inicio DATE, fecha_devolucion DATE, estado ENUM ('Activo', 'inactivo'))

			BEGIN

			DECLARE id_nombre VARCHAR(50);

			SELECT id_cliente INTO id_nombre FROM tb_clientes WHERE  nombre_cliente = nombre;

			INSERT INTO tb_prestamos (id_cliente,fecha_inicio,fecha_devolucion,estado) VALUES (id_nombre,fecha_inicio,fecha_devolucion,estado);

			END

			//

			-- Insercción de datos a prestamos insertando los datos solicitados

			CALL insercion_prestamos ('pacheco','2024-01-01','2024-01-15','Activo');

			CALL insercion_prestamos ('rodas','2024-01-02','2024-01-8','Activo');

			CALL insercion_prestamos ('andy','2024-01-15','2024-01-30','Activo');

			CALL insercion_prestamos ('dom','2024-01-3','2024-01-15','Activo');

			CALL insercion_prestamos ('joel','2024-01-5','2024-01-30','Activo');

			CALL insercion_prestamos ('villegas','2024-01-6','2024-01-30','Activo');

			CALL insercion_prestamos ('fernado','2024-01-019','2024-01-30','Activo');

			CALL insercion_prestamos ('dylan','2024-02-01','2024-02-15','Activo');

			CALL insercion_prestamos ('lennyn','2024-02-02','2024-02-15','Activo');

			CALL insercion_prestamos ('josue','2024-02-03','2024-02-15','Activo');

			CALL insercion_prestamos ('juan','2024-02-04','2024-02-15','Activo');

			CALL insercion_prestamos ('pablo','2024-02-05','2024-02-15','Activo');

			CALL insercion_prestamos ('guillermo','2024-02-06','2024-02-15','Activo');

			CALL insercion_prestamos ('gerardo','2024-02-07','2024-02-15','Activo');

			CALL insercion_prestamos ('burgos','2024-02-08','2024-02-15','Activo');

			-- Procedimiento Almacenado de insersiones de libros 

			DELIMITER //

			CREATE PROCEDURE insercion_libros (IN titulo_libro VARCHAR (50), anio_publicacion INT,IN nombre VARCHAR(50), estado ENUM ('Disponible','Prestado'))

			BEGIN

			DECLARE nombre_genero VARCHAR(50);

			SELECT id_genero_libro INTO nombre_genero FROM tb_generos_libros WHERE  nombre_genero_libro = nombre;

			INSERT INTO tb_libros (titulo_libro,anio_publicacion,id_genero_libro,estado) VALUES (titulo_libro,anio_publicacion,nombre_genero,estado);

			END

			//

            CALL insercion_libros ('Potter','2001','drama','Disponible');
			CALL insercion_libros ('cerditos','2002','accion','Disponible');
		    CALL insercion_libros ('Potter2','2003','novela','Disponible');
			CALL insercion_libros ('Potter3','2004','biblia','Prestado');
			CALL insercion_libros ('Potter4','2005','Kdrama','Disponible');
		    CALL insercion_libros ('Potter5','2006','kDrama','Prestado');
			CALL insercion_libros ('Potter6','2007','anime','Disponible');
			CALL insercion_libros ('romeo y julieta8','2008','comedia romantica','Disponible');
			CALL insercion_libros ('caperucita la tiene roja','2005','comedia','Prestado');
			CALL insercion_libros ('ciencias naturales','2004','catolicos','Disponible');
			CALL insercion_libros ('matematicas','2012','cultara','Disponible');
			CALL insercion_libros ('el gato negro','2014','cultara','Disponible'); 
			CALL insercion_libros ('los 7 enanitos','1800','cultara','Prestado');
			CALL insercion_libros ('cenicienta','2009','cultara','Prestado');
			CALL insercion_libros ('winnie poo','2016','cultara','Disponible');
            
            drop procedure if exists insertar_detalle_prestamo
            

DELIMITER //

    CREATE PROCEDURE insertar_detalle_prestamo(IN titulo VARCHAR(50),IN inicio DATE)

	BEGIN

	DECLARE libro VARCHAR(36);

	DECLARE prestamo VARCHAR(36);

    SELECT id_prestamo INTO prestamo FROM tb_prestamos WHERE fecha_inicio = inicio;
 
    SELECT id_libro INTO libro FROM tb_libros WHERE titulo_libro = titulo;

    -- Insertar el nuevo registro en la tabla

    INSERT INTO detalles_prestamos (id_prestamo, id_libro)

    VALUES (prestamo, libro);

    END

//
            CALL insertar_detalle_prestamo ('Potter','2024-01-01');
			CALL insercion_libros ('cerditos','2002','accion','Disponible');
		    CALL insercion_libros ('Potter2','2003','novela','Disponible');
			CALL insercion_libros ('Potter3','2004','biblia','Prestado');
			CALL insercion_libros ('Potter4','2005','Kdrama','Disponible');
		    CALL insercion_libros ('Potter5','2006','kDrama','Prestado');
			CALL insercion_libros ('Potter6','2007','anime','Disponible');
			CALL insercion_libros ('romeo y julieta8','2008','comedia romantica','Disponible');
			CALL insercion_libros ('caperucita la tiene roja','2005','comedia','Prestado');
			CALL insercion_libros ('ciencias naturales','2004','catolicos','Disponible');
			CALL insercion_libros ('matematicas','2012','cultara','Disponible');
			CALL insercion_libros ('el gato negro','2014','cultara','Disponible'); 
			CALL insercion_libros ('los 7 enanitos','1800','cultara','Prestado');
			CALL insercion_libros ('cenicienta','2009','cultara','Prestado');
			CALL insercion_libros ('winnie poo','2016','cultara','Disponible');
            
            
			DELIMITER //
			CREATE TRIGGER actualizar_existencias
			AFTER INSERT ON tb_prestamos
			FOR EACH ROW
			BEGIN
			UPDATE tb_libros
			SET estado = 'Prestado'
			WHERE id_libro = tb_detalles_prestamos.id_producto;
			END