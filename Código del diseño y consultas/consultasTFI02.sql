USE turismo; -- llamo a la base de datos 
-- *************PARA BORRAR DATOS DE UNA TABLA************************
-- Deshabilitar claves foráneas temporalmente
-- SET FOREIGN_KEY_CHECKS = 0;

-- Truncar la tabla
/*
TRUNCATE TABLE PERSONA;
TRUNCATE TABLE EMPLEADO;
TRUNCATE TABLE CLIENTE;
TRUNCATE TABLE COMPRA;
TRUNCATE TABLE VENDE;
TRUNCATE TABLE PAQUETE;
TRUNCATE TABLE INCLUYE;
TRUNCATE TABLE SERVICIO;
TRUNCATE TABLE TRANSPORTE;
TRUNCATE TABLE LUGAR_TUR;
TRUNCATE TABLE ACTIVIDAD;
TRUNCATE TABLE CIRCUITO_TUR;
TRUNCATE TABLE GUIA;
TRUNCATE TABLE IdiomasGuia;
TRUNCATE TABLE FormacionGuia;
TRUNCATE TABLE CaracteristicasLugar;
TRUNCATE TABLE MULTIMEDIA_LUGAR;
*/ 

-- Volver a habilitar claves foráneas
-- SET FOREIGN_KEY_CHECKS = 1;
-- **********************************************
-- *****PROCESO DE POBLADO DE LA BASE DE DATOS*****
-- PERSONA 

INSERT INTO PERSONA (idPERSONA, NombrePersona, ApellidoPersona, FechaNacPersona, DNI, EstadoCivil, Telefono, Nacionalidad, Sexo, Domicilio) VALUES -- 7 CLIENTES Y 3 EMPLEADOS
(1, 'Juan', 'Pérez', '1990-05-10', '30123456', 'Soltero', '3815123456', 'Argentina', 'Masculino', 'Lavalle 328-San Fernando del Valle de Catamarca-Catamarca'),
(2, 'María', 'Gómez', '1985-03-15', '27123456','Soltera', '3516234567', 'Argentina', 'Femenino', 'Av. Viamonte 2900-Córdoba Capital-Córdoba'),
(3, 'Luis', 'Rodríguez', '2000-07-20', '40123456','Casado', '3887345678', 'Argentina', 'Masculino', 'Estados Unidos 433-San Salvador de Jujuy-Jujuy'),
(4, 'José Ricardo', 'Gutierrez', '1999-08-15', '39123453','Soltero', '3877325678', 'Argentina', 'Masculino', 'Las Heras 43-Cafayate-Salta'),
(5, 'Cuevas', 'Lucia', '2002-02-02', '44743678', 'Casada','385234453', 'Argentina', 'Femenino', 'Las Piedras 784-Santiago del Estero Capital-Santiago del Estero'),
(6, 'John', 'Smith', '1992-11-22', '123456555', 'Soltero','3818456789','Estados Unidos', 'Masculino', '742 Evergreen Terrace, Springfield'),
(7, 'Giulia', 'Rossi', '1988-04-12', '90512355', 'Soltera','3819567890', 'Italia', 'Femenino', 'Via Roma 15, Florencia'),
(8, 'Marcelo Rafael', 'Vargas', '1997-07-01', '40412777', 'Soltero','3812136661', 'Argentina', 'Masculino', 'Mendoza 3220-San Miguel de Tucumán-Tucumán'),
(9, 'Santiago Nicolás', 'Piazza', '2001-03-21', '42412577', 'Casado','3812195661', 'Argentina', 'Masculino', 'Las Rosas 3220-Yerba Buena-Tucumán'),
(10, 'Roxana', 'Cabrera Bellomo', '2003-04-29','44213111', 'Soltera','385432954', 'Argentina', 'Femenino','San Juan 2500-San Miguel de Tucumán-Tucumán');

-- SELECT * FROM PERSONA; -- muestro la tabla resultante

-- CLIENTE
INSERT INTO CLIENTE (Usuario, Contrasenia,idPERSONA) VALUES
('juanperez', 'clave123',1),
('mariagomez', 'clave456',2),
('lusrod','clave321',3),
('josericardo','clave122',4),
('lcuevas','clave222',5),
('johns','clave433',6),
('grossi','clave434',7);

-- SELECT * FROM CLIENTE; -- muestro la tabla resultante


-- EMPLEADO 
INSERT INTO EMPLEADO (Legajo, Rol,idPERSONA) VALUES
(523519, 'Vendedor',8),
(932121, 'Vendedor',9),
(452136,'Vendedor',10);

-- SELECT * FROM EMPLEADO; -- muestro la tabla resultante

--  PAQUETE 
INSERT INTO PAQUETE (idPaquete) VALUES
(1),(12),(28),(30);

-- SELECT * FROM PAQUETE; -- muestro la tabla resultante

-- VENDE 

INSERT INTO  VENDE (idPERSONA,idPAQUETE) VALUES
(8,1),(8,12),(8,28),(9,12),(9,28),(9,1),(10,28), (10,12),(10,1),(10,30);

-- SELECT * FROM VENDE; -- muestro la tabla resultante

-- COMPRA 
INSERT INTO COMPRA (idPERSONA, idPAQUETE, FechaCompra, FormaDePago, Monto) VALUES
(1, 1, '2024-01-01', 'Tarjeta de crédito', 100.00),
(2, 12, '2024-02-01', 'Efectivo', 200000.00),
(3, 28, '2024-03-01', 'Transferencia bancaria', 300000.00),
(4, 30, '2024-04-01', 'Tarjeta de débito', 400000.00),
(5, 1, '2024-05-01', 'Tarjeta de crédito', 150000.00),
(6, 12, '2024-06-01', 'Efectivo', 250000.00),
(7, 28, '2024-07-01', 'Transferencia bancaria', 350000.00),
(1, 30, '2024-08-01', 'Tarjeta de débito', 450000.00);

-- SELECT * FROM COMPRA; -- muestro la tabla resultante

-- SERVICIO 
INSERT INTO SERVICIO (idSERVICIO) VALUES
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12);

-- SELECT * FROM SERVICIO; -- muestro la tabla resultante

-- INCLUYE 
INSERT INTO INCLUYE (idSERVICIO, idPAQUETE) VALUES
(1, 1),
(5, 1),
(9, 1),
(2, 12),
(6, 12),
(10, 12),
(3, 28),
(7, 28),
(11, 28),
(4, 30),
(8, 30),
(12, 30);

-- SELECT * FROM INCLUYE; -- muestro la tabla resultante

-- *******SERVICIOS *************
-- **TRANSPORTE**
INSERT INTO TRANSPORTE (NombreEmpresa, Origen, Destino, CapacidadTransporte, TipoTransporte, idSERVICIO) VALUES
('Empresa B', 'San Miguel de Tucumán', 'Tafí del Valle', 45, 'Colectivo', 1),
('Empresa C', 'San Miguel de Tucumán', 'Concepción', 40, 'Colectivo', 2);

-- SELECT * FROM TRANSPORTE; -- muestro la tabla resultante

-- **LUGAR TURISTICO**
-- CIRCUITO_TUR
INSERT INTO CIRCUITO_TUR (idCircuito, NombreCircuito, Movilidad, Localidad) VALUES
(12, 'Ruta del Vino', 'Colectivo', 'Colalao del Valle'),
(2, 'Valles Calchaquíes', 'Colectivo', 'Tafí del Valle');

-- SELECT * FROM CIRCUITO_TUR; -- muestro la tabla resultante

-- LUGAR_TUR
INSERT INTO LUGAR_TUR (NombreLugarTur, CoordenadasLugarTur, idSERVICIO, idCircuito) VALUES
('Bodega Chico Zossi', '-26.8315,-65.9314', 3, 12),
('Capilla Jesuita La Banda', '-26.8860,-65.7112', 4, 2);

-- SELECT * FROM LUGAR_TUR; -- muestro la tabla resultante

-- CaracteristicasLugar
INSERT INTO caracteristicaslugar (idCaracteristicaLugar, NombreCaracteristica, idLugar) VALUES
(1, 'Hermosas vistas panorámicas', 3),
(2, 'Productor de vinos de alta calidad', 3),
(3, 'Arquitectura histórica', 4),
(4, 'Patrimonio cultural', 4);

-- SELECT * FROM CaracteristicasLugar; -- muestro la tabla resultante

-- GUIA
INSERT INTO guia (idGuia, FechaNacGuia) VALUES
(1, '1980-01-15'),
(2, '1985-03-22'),
(3, '1990-07-30'),
(4, '1995-11-05'),
(5, '2000-02-18'),
(6, '2005-06-25');

-- SELECT * FROM GUIA; -- muestro la tabla resultante

-- IdiomasGuia
INSERT INTO idiomasguia (idIdioma, NombreIdioma, idGuia) VALUES
(1, 'Español', 1),
(2, 'Inglés', 1),
(3, 'Francés', 1),
(4, 'Español', 2),
(5, 'Inglés', 2),
(6, 'Alemán', 2),
(7, 'Español', 3),
(8, 'Inglés', 3),
(9, 'Portugués', 3),
(10, 'Español', 4),
(11, 'Inglés', 4),
(12, 'Italiano', 4),
(13, 'Español', 5),
(14, 'Inglés', 5),
(15, 'Chino', 5),
(16, 'Español', 6),
(17, 'Inglés', 6),
(18, 'Japonés', 6);

-- SELECT * FROM IdiomasGuia; -- muestro la tabla resultante

-- FormacionGuia
INSERT INTO formacionguia (idFormacion, NombreFormacion, idGuia) VALUES
(1, 'Especialista en Enoturismo', 1),
(2, 'Sommelier', 2),
(3, 'Historiador del Arte', 3),
(4, 'Experto en Historia Jesuita', 4),
(5, 'Especialista en Vinos Premium', 5),
(6, 'Guía de Excursiones', 6);

-- SELECT * FROM FormacionGuia; -- muestro la tabla resultante




-- ACTIVIDAD
INSERT INTO actividad (idActividad, NombreActividad, TipoActividad, PrecioActividad, CantidadMinimaParticipantes, idLugar, idGuia) VALUES
(1, 'Tour de la Bodega', 'Visita guiada', 50.00, 5, 3, 1),
(2, 'Degustación de Vinos', 'Experiencia', 70.00, 4, 3, 2),
(3, 'Visita a la Capilla', 'Visita histórica', 30.00, 8, 4, 3),
(4, 'Charla sobre Historia Jesuita', 'Charla educativa', 25.00, 10, 4, 4),
(5, 'Cata de Vinos Premium', 'Experiencia', 100.00, 3, 3, 5),
(6, 'Recorrido por los Valles', 'Excursión', 80.00, 6, 4, 6);

-- SELECT * FROM ACTIVIDAD; --muestro la tabla resultante

-- MULTIMEDIA_LUGAR
INSERT INTO multimedia_lugar (idMultimediaLugar, Imagen, Video, idLugar) VALUES
(1, 'https://ejemplo.com/ruta_vino_01.jpg', 'https://ejemplo.com/ruta_vino_01.mp4', 3),
(2, 'https://ejemplo.com/ruta_vino_02.jpg', 'https://ejemplo.com/ruta_vino_02.mp4', 3),
(3, 'https://ejemplo.com/capilla_jesuita_01.jpg', 'https://ejemplo.com/capilla_jesuita_01.mp4', 4),
(4, 'https://ejemplo.com/capilla_jesuita_02.jpg', 'https://ejemplo.com/capilla_jesuita_02.mp4', 4);


-- SELECT * FROM MULTIMEDIA_LUGAR; --muestro la tabla resultante

-- EVENTO 



















