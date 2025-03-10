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
TRUNCATE TABLE CaracteristicasHotel;
 */ 

-- Volver a habilitar claves foráneas
--  SET FOREIGN_KEY_CHECKS = 1;
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
(3, 28, '2024-03-01', 'Efectivo', 300000.00),
(4, 30, '2024-04-01', 'Efectivo', 400000.00),
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
(2, 28),
(6, 28),
(10, 28),
(3, 12),
(7, 12),
(11, 12),
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
-- **PARTE DE EVENTOS** 

-- EVENTO 
INSERT INTO evento (NombreEvento, TipoEvento, PrecioEvento, DescripcionEvento, CoordenadasEvento, idSERVICIO) VALUES
('Festival de Vino', 'Cultural', 150.00, 'Festival de cata de vinos locales', '-26.8315,-65.9314', 5),
('Concierto en la Capilla', 'Música', 200.00, 'Concierto de música clásica en la Capilla Jesuita', '-26.8860,-65.7112', 6);


-- SELECT * FROM EVENTO; -- muestro la tabla resultante

-- SPONSOR 
INSERT INTO sponsor (idSponsor, NombreSponsor) VALUES
(1, 'Rapicuotas'),
(2, 'Umbro'),
(3, 'Boreal'),
(4, 'Sucrédito'),
(5, 'Sporting'),
(6, 'Flecha Bus'),
(7, 'La Gaceta'),
(8, 'Yuhmak'),
(9, 'Catillo'),
(10, 'Supercanal');


--  SELECT * FROM SPONSOR; -- muestro la tabla resultante

-- FINANCIA 
INSERT INTO financia (idSponsor, idEvento, Aporte) VALUES
(1, 5, 5000.00),
(2, 5, 4500.00),
(4, 5, 5500.00),
(7, 5, 2700.00),
(9, 5, 3600.00),
(3, 6, 4000.00),
(5, 6, 5000.00),
(6, 6, 3800.00),
(8, 6, 4200.00),
(10, 6, 4100.00);

-- SELECT * FROM FINANCIA; -- muestra la tabla resultante


-- CALENDARIO
INSERT INTO calendario (FechaInicio, FechaFin, HorarioInicio, HorarioFin, idEvento) VALUES
('2024-12-01', '2024-12-01', '10:00:00', '18:00:00', 5),
('2024-12-06', '2024-12-06', '19:00:00', '22:00:00', 6);

-- SELECT * FROM CALENDARIO; -- muestro tabla resultante
 
 -- MULTIMEDIA_EVENTO
 INSERT INTO multimedia_evento (idMultimediaEvento, Imagen, Video, idEvento) VALUES
(1, 'https://ejemplo.com/festival_vino_01.jpg', 'https://ejemplo.com/festival_vino_01.mp4', 5),
(2, 'https://ejemplo.com/festival_vino_02.jpg', 'https://ejemplo.com/festival_vino_02.mp4', 5),
(3, 'https://ejemplo.com/concierto_capilla_01.jpg', 'https://ejemplo.com/concierto_capilla_01.mp4', 6),
(4, 'https://ejemplo.com/concierto_capilla_02.jpg', 'https://ejemplo.com/concierto_capilla_02.mp4', 6);

-- SELECT * FROM MULTIMEDIA_EVENTO; -- muestro la tabla resultante

-- **HOTEL**
-- HOTEL
INSERT INTO hotel (NombreHotel, CoordenadasHotel, idSERVICIO) VALUES
('Hotel Boutique Tucumán', '-26.8221,-65.2185', 7),
('Hotel Jardín Central', '-26.8306,-65.2058', 8);

-- SELECT * FROM HOTEL; -- muestro la tabla resultante

-- CaracteristicasHotel
INSERT INTO caracteristicashotel (idCaracteristicasHotel, NombreCaracteristica, idHotel) VALUES
(1, 'Vista al mar', 7),
(2, 'Habitaciones familiares', 7),
(3, 'Decoración moderna', 7),
(4, 'Habitaciones insonorizadas', 7),
(5, 'Acepta mascotas', 7),
(6, 'Ubicación céntrica', 8),
(7, 'Jardines amplios', 8),
(8, 'Terraza', 8),
(9, 'Zona de juegos para niños', 8),
(10, 'Accesibilidad para discapacitados', 8);


-- SELECT * FROM CaracteristicasHotel; -- muestra la tabla resultante

-- ServiciosHotel

INSERT INTO servicioshotel (idServicio, NombreServicio, idHotel) VALUES
(1, 'Limpieza diaria', 7),
(2, 'Servicio de lavandería', 7),
(3, 'Transporte al aeropuerto', 7),
(4, 'Servicio a la habitación', 7),
(5, 'Wi-Fi gratis', 8),
(6, 'Desayuno buffet', 8),
(7, 'Piscina', 8),
(8, 'Gimnasio', 8),
(9, 'Spa', 8),
(10, 'Restaurante', 8);

SELECT * FROM ServiciosHotel; -- muestro la tabla resultante

-- HABITACION
INSERT INTO habitacion (NumeroHabitacion, TipoHabitacion, CapacidadHabitacion, idHotel) VALUES
(101, 'Doble', 2, 7),
(102, 'Suite', 4, 7),
(103, 'Simple', 1, 7),
(104, 'Familiar', 4, 7),
(105, 'Doble', 2, 7),
(201, 'Suite', 4, 8),
(202, 'Doble', 2, 8),
(203, 'Simple', 1, 8),
(204, 'Familiar', 4, 8),
(205, 'Doble', 2, 8);

-- SELECT * FROM HABITACION; -- muestra la tabla resultante

-- RESTAURANTE
INSERT INTO restaurante (NombreRestaurante, CoordenadasRestaurante, HorarioApertura, HorarioCierre, idSERVICIO) VALUES
('Restaurante Los Nogales', '-26.8373,-65.2045', '12:00:00', '23:00:00', 9),
('Parrilla La Querencia', '-26.8369,-65.2066', '11:00:00', '22:00:00', 10);

-- SELECT * FROM RESTAURANTE; -- muestro la tabla resultante 

-- CaracteristicasRestaurante
INSERT INTO caracteristicasrestaurante (idCaracteristicaRestaurante, NombreCaracteristica, idRestaurante) VALUES
(1, 'Ambiente Familiar', 9),
(2, 'Música en Vivo', 9),
(3, 'Terraza al Aire Libre', 9),
(4, 'Menú Vegetariano', 9),
(5, 'Wi-Fi Gratis', 9),
(6, 'Reservas en Línea', 10),
(7, 'Área para Niños', 10),
(8, 'Accesibilidad para Discapacitados', 10),
(9, 'Carta de Vinos', 10),
(10, 'Desayunos Especiales', 10);

-- SELECT * FROM CaracteristicasRestaurante; -- muestro la tabla resultante

-- Comidas
INSERT INTO comidas (idComida, NombreComida, idRestaurante) VALUES
(1, 'Pizza', 9),
(2, 'Burger', 9),
(3, 'Tacos', 9),
(4, 'Empanadas', 9),
(5, 'Asado', 9),
(6, 'Costillas a la Parrilla', 10),
(7, 'Chorizo', 10),
(8, 'Morcilla', 10),
(9, 'Provoleta a la Parrilla', 10),
(10, 'Matambre a la Pizza', 10);

-- SELECT * FROM Comidas; -- muestro la tabla resultante

-- Bebidas
INSERT INTO bebidas (idBebida, NombreBebida, idRestaurante) VALUES
(1, 'Cerveza', 9),
(2, 'Vino Tinto', 9),
(3, 'Limonada', 9),
(4, 'Agua Mineral', 9),
(5, 'Coca-Cola', 9),
(6, 'Vino Tinto', 10),
(7, 'Cerveza Artesanal', 10),
(8, 'Fernet con Coca', 10),
(9, 'Gancia con Sprite', 10),
(10, 'Agua Mineral', 10);

-- SELECT * FROM Bebidas; -- muestro la tabla resultante

-- EXTRA 
INSERT INTO extra (NombreExtra, DescripcionExtra, PrecioExtra, idSERVICIO) VALUES
('Parking', 'Estacionamiento seguro para vehículos', 10.00, 11),
('Servicio de Lavandería', 'Lavandería y planchado de ropa', 15.00, 12);


-- SELECT * FROM EXTRA; -- muestra la tabla resultante 

-- **ULTIMAS TABLAS** 
-- OPINA
INSERT INTO opina (idPERSONA, idSERVICIO, Comentario, Puntuacion) VALUES
(1, 1, 'Excelente servicio, muy satisfecho', 4.5),
(2, 2, 'Buena experiencia, pero podría mejorar', 3.8),
(3, 3, 'El personal fue muy amable', 4.2),
(4, 4, 'Las instalaciones estaban limpias y ordenadas', 4.0),
(5, 5, 'La comida fue deliciosa', 4.7),
(6, 6, 'El servicio de Wi-Fi fue lento', 3.5),
(7, 7, 'Gran ubicación, cerca de todos los puntos de interés', 4.6),
(1, 8, 'El precio fue un poco elevado', 3.9),
(2, 9, 'El spa fue relajante', 4.8),
(3, 10, 'La piscina estaba limpia y agradable', 4.3),
(4, 11, 'El estacionamiento fue conveniente', 4.4),
(5, 12, 'El servicio de lavandería fue rápido', 4.1);


-- SELECT * FROM opina; -- muestra la tabla resultante

-- CONTINGENCIA 
INSERT INTO contingencia (DescripcionContingencia, FechaContingencia, TipoContingencia, Estado, idSERVICIO) VALUES
('Corte de electricidad en la zona', '2024-11-01', 'Eléctrica', 'No Resuelta', 1),
('Corte de electricidad en la zona', '2024-11-03', 'Eléctrica', 'Resuelta', 2),
('Caída de sistema informático', '2024-11-05', 'Informática', 'No Resuelta', 3),
('Fuga de gas en la cocina', '2024-11-04', 'Gas', 'Resuelta', 4),
('Incendio en el almacén', '2024-11-05', 'Incendio', 'Resuelta', 5),
('Interrupción del servicio de internet', '2024-11-06', 'Comunicación', 'No Resuelta', 6),
('Interrupción del servicio de internet', '2024-11-08', 'Comunicación', 'Resuelta', 7),
('Corte de agua en el edificio', '2024-11-08', 'Hidráulica', 'No Resuelta', 8),
('Corte de electricidad en la zona', '2024-11-09', 'Eléctrica', 'Resuelta', 9),
('Problemas con el suministro de alimentos', '2024-11-10', 'Logística', 'No Resuelta', 10),
('Fallo en el sistema de seguridad', '2024-11-11', 'Seguridad', 'Resuelta', 11),
('Problemas con la calefacción', '2024-11-12', 'Climatización', 'No Resuelta', 12);

-- SELECT * FROM CONTINGENCIA; -- muestro la tabla resultante


/*-------- CONSULTAS ---------*/

/*
1) Indicar los sponsors que financian los eventos que están incluidos 
en el paquete de idPAQUETE=28
*/
SELECT SPONSOR.NombreSponsor FROM
SPONSOR INNER JOIN FINANCIA ON SPONSOR.idSponsor = FINANCIA.idSponsor
INNER JOIN EVENTO ON FINANCIA.idEvento = EVENTO.idServicio
INNER JOIN SERVICIO ON EVENTO.idServicio = SERVICIO.idServicio
INNER JOIN INCLUYE ON SERVICIO.idServicio = INCLUYE.idServicio
WHERE INCLUYE.idPaquete = 28;

/* 
2) Listar los comentarios realizados sobre los servicios incluidos 
en el paquete que adquirió el cliente cuyo usuario es "josericardo"
*/
SELECT SERVICIO.idServicio, OPINA.Comentario, OPINA.Puntuacion FROM
OPINA INNER JOIN SERVICIO ON OPINA.idServicio = SERVICIO.idServicio
INNER JOIN INCLUYE ON SERVICIO.idServicio = INCLUYE.idServicio
INNER JOIN PAQUETE ON INCLUYE.idPaquete = PAQUETE.idPaquete
INNER JOIN COMPRA ON PAQUETE.idPaquete = COMPRA.idPaquete
INNER JOIN CLIENTE ON COMPRA.idPersona = CLIENTE.idPersona
WHERE CLIENTE.Usuario = 'josericardo';

/*
3)Indicar los lugares turísticos que incluye el circuito de 
idCircuito=12
*/
SELECT LUGAR_TUR.NombreLugarTur FROM
LUGAR_TUR
WHERE LUGAR_TUR.idCircuito=12;

/*
4) Indicar las formas de pago mas usadas para la compra de paquetes
*/
SELECT COMPRA.FormaDePago, count(FormaDePago) as "Frecuencia" FROM
COMPRA GROUP BY COMPRA.FormaDePago ORDER BY Frecuencia DESC;

-- También se implementó con un stored procedure que genera una tabla temporal
-- para mostrar la frecuencia de los medios de pago en porcentaje de uso.
CALL CalcularPorcentajeFormasPago();

/*
5) Obtener los tipos de contingencia con mas ocurrencias
*/
SELECT CONTINGENCIA.TipoContingencia, count(TipoContingencia) as "Frecuencia" FROM
CONTINGENCIA GROUP BY CONTINGENCIA.TipoContingencia ORDER BY Frecuencia DESC;

-- Nuestras (3)

/*
6) Obtener los hoteles incluidos en servicios que tengan opiniones, 
cuya puntuación sea mayor a 4.
*/
SELECT HOTEL.NombreHotel, OPINA.Puntuacion FROM
HOTEL INNER JOIN SERVICIO ON HOTEL.idServicio = SERVICIO.idServicio
INNER JOIN OPINA ON SERVICIO.idServicio = OPINA.idServicio
WHERE OPINA.Puntuacion > 4;

/*
7) Mostrar el nombre, tipo y precio de eventos que sean en 
diciembre 2024 y de noche (a partir de las 18hs).
*/
SELECT EVENTO.NombreEvento, EVENTO.TipoEvento, EVENTO.PrecioEvento FROM
EVENTO INNER JOIN CALENDARIO ON EVENTO.idServicio = CALENDARIO.idEvento
WHERE CALENDARIO.FechaInicio >= "2024-12-01" AND CALENDARIO.FechaFin <= "2024-12-31" AND CALENDARIO.HorarioInicio >= "18:00:00";

/*
8) Mostrar el/los idioma/s que habla/n el/los guía/s de la/s actividad/es 
incluidas en el paquete cuyo idPAQUETE=12.
*/
SELECT ACTIVIDAD.NombreActividad, GUIA.idGuia, IdiomasGuia.NombreIdioma FROM
IdiomasGuia INNER JOIN GUIA ON IdiomasGuia.idGuia = GUIA.idGuia
INNER JOIN ACTIVIDAD ON GUIA.idGuia = ACTIVIDAD.idGuia
INNER JOIN LUGAR_TUR ON ACTIVIDAD.idLugar = LUGAR_TUR.idServicio
INNER JOIN SERVICIO ON LUGAR_TUR.idServicio = SERVICIO.idServicio
INNER JOIN INCLUYE ON SERVICIO.idServicio = INCLUYE.idServicio
WHERE INCLUYE.idPaquete = 12;

