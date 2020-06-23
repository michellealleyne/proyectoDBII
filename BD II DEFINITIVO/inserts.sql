
 /*INSERTS*/

 --STATUS--
INSERT INTO status (codigo, nombre) VALUES (sec_status.nextval, 'Disponible');
INSERT INTO status (codigo, nombre) VALUES (sec_status.nextval, 'Fuera de Servicio');
INSERT INTO status (codigo, nombre) VALUES (sec_status.nextval, 'En vuelo');
INSERT INTO status (codigo, nombre) VALUES (sec_status.nextval, 'Alquilado');
INSERT INTO status (codigo,nombre) VALUES (sec_status.nextval,'Ocupado');
INSERT INTO status (codigo,nombre) VALUES (sec_status.nextval,'Procesado');
INSERT INTO status (codigo,nombre) VALUES (sec_status.nextval,'No iniciado');
INSERT INTO status (codigo,nombre) VALUES (sec_status.nextval,'Abordando');
INSERT INTO status (codigo,nombre) VALUES (sec_status.nextval,'En transito');
INSERT INTO status (codigo,nombre) VALUES (sec_status.nextval,'Retrasado');



-- TIPO_PAGO--
INSERT INTO tipo_pago VALUES (sec_tipo_pago.nextval, 'TARJETA DE CREDITO');
INSERT INTO tipo_pago VALUES (sec_tipo_pago.nextval, 'TARJETA DE DEBITO');
INSERT INTO tipo_pago VALUES (sec_tipo_pago.nextval, 'CLUB DE MILLAS PREMIUN');
 
 -- TIPO_CLASE--
 -- 6--
INSERT INTO tipo_clase (codigo, nombre) VALUES (sec_Tipo_clase.nextval, 'De gran escala');
INSERT INTO tipo_clase (codigo, nombre) VALUES (sec_Tipo_clase.nextval, 'De red');
INSERT INTO tipo_clase (codigo, nombre) VALUES (sec_Tipo_clase.nextval, 'Regional');

INSERT INTO tipo_clase (codigo, nombre) VALUES (sec_Tipo_clase.nextval, 'Clase ejecutiva');
INSERT INTO tipo_clase (codigo, nombre) VALUES (sec_Tipo_clase.nextval, 'Economy Extra');
INSERT INTO tipo_clase (codigo, nombre) VALUES (sec_Tipo_clase.nextval, 'Cabina Principal');
INSERT INTO tipo_clase (codigo, nombre) VALUES (sec_Tipo_clase.nextval, 'Turista');
 
-- AEROLINEA--
-- 15--

INSERT INTO vista_aerolineas VALUES (sec_aerolinea.nextval,'Copa Airlines','Es una aerol?nea  ', 1);
INSERT INTO vista_aerolineas VALUES (sec_aerolinea.nextval,'Iberia','Es la aerol?nea de bandera de Espa?a, fundada en 1927', 1);
INSERT INTO vista_aerolineas VALUES (sec_aerolinea.nextval,'Plus Ultra','Es una aerol?nea espa?ola, fundada en el a?o 2011', 1);
INSERT INTO vista_aerolineas VALUES (sec_aerolinea.nextval,'Laser', 'Es una aerol?nea con sede en Caracas, Venezuela', 1);
INSERT INTO vista_aerolineas VALUES (sec_aerolinea.nextval,'Qatar Airways', 'Es la compa??a de transporte a?reo principal de Catar',1);

INSERT INTO vista_aerolineas VALUES (sec_aerolinea.nextval,'Aerolinea EasySky','Fue una aerol?nea de bajo coste de Honduras', 2);
INSERT INTO vista_aerolineas VALUES (sec_aerolinea.nextval,'Air Europa','Fundada en 1984 con el nombre comercial de Air Espa?a', 2);
INSERT INTO vista_aerolineas VALUES (sec_aerolinea.nextval,'Eurowings', 'Es una aerol?nea con sede en Dusseldorf, Alemania.',2);
INSERT INTO vista_aerolineas VALUES (sec_aerolinea.nextval,'Lufthansa', 'Es una compa??a a?rea alemana con sede en Colonia',2);
INSERT INTO vista_aerolineas VALUES (sec_aerolinea.nextval,'Air Europa Express', 'Opera  desde 2015 opera como Air Europa Express es una aerol?nea espa?ola que opera vuelos regionales',2);

INSERT INTO vista_aerolineas VALUES (sec_aerolinea.nextval,'Eastern Airway','Es una aerol?nea con base en el Aeropuerto de Humberside, Inglaterra', 3);
INSERT INTO vista_aerolineas VALUES (sec_aerolinea.nextval,'Bangkok Airways', 'Es una aerol?nea regional con base en Bangkok, Tailandia. ',3);
INSERT INTO vista_aerolineas VALUES (sec_aerolinea.nextval,'Avianca','Es la mayor aerol?nea de Colombia. Fundada en 1919 con el nombre SCADTA', 3);
INSERT INTO vista_aerolineas VALUES (sec_aerolinea.nextval,'Royal Air Maroc', 'Es la aerol?nea nacional de Marruecos, con base en Casablanca',3);
INSERT INTO vista_aerolineas VALUES (sec_aerolinea.nextval,'Hong Kong Airlines', ' anteriormente CR Airways Limited, es una aerol?nea con sede en Hong Kong',3);
 

 -- FLOTA--
  --57--
        -- Copa Airlines, codigo = 1--
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing 737 MAX 9', 1);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing 737-800', 1);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing 737-700', 1);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Embraer 190AR', 1); 
         -- Iberia, codigo = 2--
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A319', 2);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A320 Neo', 2);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A320', 2);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A321', 2); 
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A340-600', 2); 
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A330-300', 2); 
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A330-100', 2);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A350', 2);

-- Plus Ultra, codigo= 3--
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A340-600', 3);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A340-300', 3);

-- Laser, codigo =4--
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing MD-81', 4);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing MD-82', 4);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing MD-83', 4);

-- Qatar Airlines, codigo =5--
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A319LR', 5);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A320-200', 5);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A320neo', 5);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing 777-200LR', 5);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing 777-300ER', 5);

-- Aerolinea EasySky, codigo =6--
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing 737-200', 6);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing 737-500', 6);

-- Air Europ, codigo =7--
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing 737-800', 7);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing 737-200', 7);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing 787-8 Dreamliner', 7);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing 787-9 Dreamliner', 7);

--Eurowings, codigo =8--
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A319-100', 8);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A319-200', 8);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A321-200',8 );
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Dash 8', 8);

-- Lufthansa, codigo =9--
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A350-900', 9);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing 747-400', 9);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing 747-8I',9 );
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'MD-11', 9);

--  Air Europa Express, codigo=10--
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Embraer E190-200 LR', 10);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'ATR 72-500',10);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing 737-800', 10);

--Eastern Airways codigo =11--
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'ATR 72', 11);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'ERJ 145', 11);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Saab 200', 11);

-- Bangkok Airways codigo =12--
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A319-132', 12);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A320-200', 12);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'ATR 72-500', 12);

-- Avianca, codigo = 13--
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A320-200', 13);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A320neo', 13);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing B787-8 ', 13);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing B787-9', 13);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A319-100 ', 13);

--Royal Air Maroc. codigo =14--
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Embbraer 190', 14);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing 737 Max 8', 14);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'ATR 72-600', 14);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Boeing 737-300F', 14);

-- Hong Kong Airlines, codigo 15--
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A350-900', 15);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A330-400', 15);
INSERT INTO flota (codigo, nombre, fk_aerolinea) VALUES (sec_flota.nextval, 'Airbus A330-200F', 15);

-- MODELO--
    --112--
   /* Colocar datos info */
--Boeing 737 MAX 9--
    /*nombre: Unico*/
INSERT INTO vista_modelo  VALUES (sec_modelo.nextval, 'Unico-737','','1012 km/h', '5,700 km', '41,000 ft','35.9 m','3,76 m', '2.50 m', 1  );
--Boeing 737-800--
   /*NOMBRE: 737-800 A*/
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'737-800 A','', '840 km/h', '5,700 km', '41,000 ft','39.5 m','3.50 m', '2,14 m', 2 ); 
   /* NOMBRE: 737-800 B*/
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'737-800 B','', '840 km/h', '5,700 km', '41,000 ft','39.5 m','3.50 m', '2,14 m', 2 ); 
-- Boeing 737-700--
  /*nombre: Unico*/
INSERT INTO vista_modelo  VALUES (sec_modelo.nextval, 'Unico-700','','1012 km/h', '5,700 km', '41,000 ft','35.9 m','3,76 m', '2.50 m', 3  );
--Embraer--
    /*nombre: Embraer 190AR A*/ 
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'Embraer 190AR A','', '1004.5 km/h', '4,074 km', '41,000 ft','36,24 m','2,74 m', '2,00 m', 4 ); 
   /*nombre: Embraer 190AR B*/ 
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'Embraer 190AR B','', '1004.5 km/h', '4,074 km)', '41,000 ft','36,24 m','2,74 m', '2.00 m', 4  ); 
 -- Iberia, codigo = 2--
     --16--
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A350 A','','895.75 km/h','5391.05 km/h','41000 ft','34.47 m','3.75 m','2.16 m',5);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A350 B','','1018.65 km/h','5694.25 km/h','41000 ft','40.96 m','3.94 m','2.48 m',5);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'330-200 A','','957.50 km/h','4494.27 km/h','41000 ft','30.50 m','3.65 m','2.95 m',6);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'330-200 B','','994.71 km/h','5421.45 km/h','41000 ft','39.72 m','2.71 m','2.83 m',6);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'330 A','','873.26 km/h','4704.53 km/h','41000 ft','44.78 m','3.60 m','2.73 m',7);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'330 B','','815.88 km/h','4319.43 km/h','41000 ft','31.06 m','3.55 m','2.07 m',7);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'300 A','','1085.86 km/h','4084.13 km/h','41000 ft','40.47 m','3.38 m','2.66 m',8);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'300 B','','801.01 km/h','4654.00 km/h','41000 ft','42.77 m','3.03 m','2.20 m',8);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'340 A','','966.50 km/h','4933.12 km/h','41000 ft','40.72 m','3.98 m','2.41 m',9);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'340 B','','815.08 km/h','4025.82 km/h','41000 ft','37.04 m','2.67 m','2.89 m',9);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'600 A','','836.68 km/h','5740.11 km/h','41000 ft','42.80 m','2.86 m','2.80 m',10);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'600 B','','856.67 km/h','5937.29 km/h','41000 ft','36.29 m','3.14 m','2.73 m',10);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'321 A','','1018.33 km/h','5485.89 km/h','41000 ft','42.43 m','3.14 m','2.94 m',11);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'321 B','','804.34 km/h','4318.55 km/h','41000 ft','36.52 m','2.22 m','2.59 m', 11);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'320 A','','991.41 km/h','4823.70 km/h','41000 ft','32.90 m','2.28 m','2.61 m', 12);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'320 B','','1079.08 km/h','4497.07 km/h','41000 ft','33.31 m','2.38 m','2.87 m',12);
-- Plus Ultra, codigo= 3--
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'212 A','','812.50 km/h','5663.55 km/h','41000 ft','35.04 m','3.73 m','2.32 m',13);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'215 A','','999.16 km/h','5587.84 km/h','41000 ft','30.24 m','3.73 m','2.28 m',13);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'215 B','','871.72 km/h','4351.23 km/h','41000 ft','35.82 m','2.25 m','2.39 m',14);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'212 B','','999.90 km/h','4473.73 km/h','41000 ft','35.72 m','3.98 m','2.03 m',14);
-- Laser, codigo =4--
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'MD-81 A','','978.30 km/h','5366.40 km/h','41000 ft','35.69 m','3.38 m','2.71 m',15);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'MD-81 B','','1099.42 km/h','5690.26 km/h','41000 ft','34.26 m','3.63 m','2.83 m',15);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'MD-82 A','','938.50 km/h','5434.47 km/h','41000 ft','30.51 m','3.72 m','2.67 m',16);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'MD-82 B','','958.44 km/h','4398.29 km/h','41000 ft','35.53 m','3.93 m','2.88 m',16);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'MD-83 A','','955.85 km/h','5192.46 km/h','41000 ft','34.37 m','3.74 m','2.59 m',17);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'MD-83 B','','938.13 km/h','5376.88 km/h','41000 ft','38.62 m','3.18 m','2.31 m',17);
-- Qatar Airlines, codigo =5--
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'19LR A','','1057.85 km/h','4977.49 km/h','41000 ft','41.02 m','3.05 m','2.11 m',18);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'19LR B','','900.33 km/h','5214.65 km/h','41000 ft','31.57 m','3.84 m','2.19 m',18);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'19LR C','','927.44 km/h','5123.00 km/h','41000 ft','35.97 m','3.66 m','2.78 m',19);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'320neo 21','','996.28 km/h','5872.63 km/h','41000 ft','30.27 m','3.25 m','2.31 m',19);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'320neo 22','','1072.39 km/h','4410.92 km/h','41000 ft','34.04 m','3.04 m','2.66 m',20);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'320neo 23','','812.01 km/h','4209.58 km/h','41000 ft','30.50 m','2.76 m','2.01 m',20);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'321neo A','','982.23 km/h','4187.13 km/h','41000 ft','43.29 m','3.76 m','2.72 m',21);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'321neo B','','945.65 km/h','4441.40 km/h','41000 ft','31.14 m','3.04 m','2.78 m',21);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'321neo 12','','912.71 km/h','4419.13 km/h','41000 ft','39.56 m','2.19 m','2.79 m',22);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'321neo 11','','1037.62 km/h','5166.71 km/h','41000 ft','35.64 m','3.61 m','2.47 m',22);
-- Aerolinea EasySky, codigo =6--
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'737-200 A','','935.86 km/h','4891.59 km/h','39000 ft','29.26 m','3.61 m','2.69 m',23);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'737-200 B','','775.06 km/h','4394.78 km/h','39000 ft','32.22 m','3.35 m','2.10 m',23);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'737-500 A','','791.02 km/h','4047.68 km/h','39000 ft','35.35 m','2.03 m','2.16 m',24);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'737-500 B','','939.60 km/h','4891.25 km/h','39000 ft','31.90 m','3.46 m','1.95 m',24);
--46, Air Europa, codigo =7--
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'737-800 A1','','893.80 km/h','3681.08 km/h','39000 ft','37.77 m','3.69 m','2.73 m',25);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'737-800 B1','','885.28 km/h','4867.51 km/h','39000 ft','35.78 m','3.75 m','2.52 m',25);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'737-800 C1','','741.34 km/h','4842.66 km/h','39000 ft','29.34 m','3.39 m','2.84 m',26);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'737-800 D1','','921.84 km/h','3990.04 km/h','39000 ft','32.20 m','2.66 m','2.55 m',26);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'MAX 8 A','','886.29 km/h','4846.57 km/h','39000 ft','31.43 m','2.47 m','2.53 m',27);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'MAX 8 B','','740.64 km/h','4371.00 km/h','39000 ft','31.81 m','3.29 m','2.62 m',27);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'Dreamliner A','','862.63 km/h','3867.22 km/h','39000 ft','35.40 m','3.55 m','2.45 m',28);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'Dreamliner B','','771.15 km/h','4017.78 km/h','39000 ft','36.87 m','3.90 m','2.16 m',28);
--Eurowings, codigo =8--
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A319-A','','879.51 km/h','4386.60 km/h','39000 ft','30.69 m','2.43 m','2.43 m',29);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A319-B','','914.24 km/h','3778.51 km/h','39000 ft','29.54 m','2.05 m','2.75 m',29);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A319-C','','989.59 km/h','4053.25 km/h','39000 ft','30.34 m','3.81 m','1.93 m',30);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'737-800NG','','992.74 km/h','4644.21 km/h','39000 ft','38.49 m','3.72 m','2.25 m',30);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'737-8005G','','789.07 km/h','3868.76 km/h','39000 ft','36.70 m','3.65 m','2.12 m',31);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'737-8007G','','913.24 km/h','4616.58 km/h','39000 ft','33.28 m','1.99 m','2.13 m',31);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'Dash 8 B','','725.88 km/h','3948.60 km/h','39000 ft','29.00 m','3.10 m','2.28 m',32);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'Dash 8 A','','992.87 km/h','4270.61 km/h','39000 ft','34.85 m','3.38 m','2.25 m',32);
-- Lufthansa, codigo =9--
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A319-100 A','','892.43 km/h','4826.42 km/h','39000 ft','32.93 m','2.29 m','2.20 m',33);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A319-100 B','','825.19 km/h','4058.74 km/h','39000 ft','38.24 m','2.43 m','2.56 m',33);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A319-100 C','','911.10 km/h','3795.35 km/h','39000 ft','34.11 m','3.00 m','2.20 m',34);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A380-800 A','','884.88 km/h','4157.47 km/h','39000 ft','41.80 m','3.29 m','2.51 m',34);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A380-800 B','','855.22 km/h','3618.46 km/h','39000 ft','29.55 m','2.30 m','2.63 m',35);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A380-800 C','','948.64 km/h','3987.95 km/h','39000 ft','41.67 m','2.23 m','2.65 m',35);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'777F A','','756.96 km/h','4204.53 km/h','39000 ft','29.98 m','3.89 m','2.12 m',36);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'777F B','','766.29 km/h','4843.07 km/h','39000 ft','32.24 m','3.83 m','2.25 m',36);
--  Air Europa Express, codigo=10--
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'72-500 A','','898.92 km/h','4926.86 km/h','39000 ft','36.50 m','3.59 m','2.03 m',37);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'72-500 B','','734.16 km/h','4052.02 km/h','39000 ft','36.23 m','2.59 m','2.48 m',37);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'72-500 C','','951.45 km/h','4319.99 km/h','39000 ft','37.19 m','2.74 m','2.11 m',38);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'E190-200 LR1','','933.97 km/h','3617.43 km/h','39000 ft','36.90 m','2.07 m','2.73 m',38);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'E190-200 LR2','','949.36 km/h','4105.96 km/h','39000 ft','39.60 m','3.84 m','2.10 m',39);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'E190-200 LR3','','775.75 km/h','4526.45 km/h','39000 ft','32.12 m','3.53 m','2.28 m',39);
--Eastern Airways codigo =11--
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'ATR 72 2','','646.67 km/h','3873.01 km/h','39000 ft','37.24 m','2.81 m','2.14 m',40);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'ATR 72 1','','719.70 km/h','3977.71 km/h','39000 ft','28.40 m','2.06 m','2.09 m',40);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'ERJ 145 R','','702.37 km/h','3179.95 km/h','39000 ft','32.70 m','2.76 m','2.00 m',41);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'ERJ 145 H','','887.95 km/h','3576.53 km/h','39000 ft','29.65 m','3.62 m','1.86 m',41);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'Saab 2000 A','','618.19 km/h','3830.68 km/h','39000 ft','28.79 m','3.46 m','2.42 m',42);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'Saab 2000 B','','786.12 km/h','3084.27 km/h','39000 ft','37.10 m','1.70 m','2.44 m',42);
-- Bangkok Airways codigo =12--
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A319-132 A','','749.56 km/h','3551.37 km/h','39000 ft','38.89 m','2.28 m','2.05 m',43);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A319-132 J','','776.09 km/h','3143.63 km/h','39000 ft','33.60 m','2.20 m','1.94 m',43);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A320-200 B','','897.33 km/h','3515.12 km/h','39000 ft','35.34 m','3.35 m','2.39 m',44);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A320-200 A','','784.83 km/h','3248.07 km/h','39000 ft','32.62 m','2.76 m','2.11 m',44);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'72-500 K','','838.63 km/h','3881.94 km/h','39000 ft','38.91 m','2.90 m','1.98 m',45);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'72-500 H','','626.15 km/h','3692.98 km/h','39000 ft','33.24 m','2.15 m','2.57 m',45);
-- Avianca, codigo = 13--
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A320-200 RT','','748.77 km/h','3554.52 km/h','39000 ft','30.00 m','2.02 m','2.36 m',46);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A320-200 RJ','','717.41 km/h','3908.03 km/h','39000 ft','40.85 m','2.18 m','1.96 m',46);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A320-200 RK','','845.99 km/h','3119.05 km/h','39000 ft','36.90 m','1.99 m','1.90 m',47);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A320-200 R1','','670.73 km/h','3470.03 km/h','39000 ft','31.64 m','2.21 m','2.41 m',47);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A319-100 RT','','625.23 km/h','3219.18 km/h','39000 ft','30.63 m','2.63 m','2.43 m',48);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A319-100 RJ','','877.03 km/h','3391.58 km/h','39000 ft','30.96 m','2.41 m','1.99 m',48);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A319-100 RK','','706.95 km/h','3347.91 km/h','39000 ft','39.55 m','3.46 m','2.33 m',49);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'320neo A','','854.77 km/h','3415.07 km/h','39000 ft','39.69 m','3.03 m','1.89 m',49);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'320neo B','','839.91 km/h','3645.11 km/h','39000 ft','35.07 m','1.72 m','2.69 m',50);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'320neo C','','799.40 km/h','3207.89 km/h','39000 ft','38.97 m','3.48 m','1.99 m',50);
--Royal Air Maroc. codigo =14--
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'190 A','','733.77 km/h','3728.20 km/h','39000 ft','29.30 m','3.44 m','1.91 m',51);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'190 B','','670.27 km/h','3359.40 km/h','39000 ft','33.18 m','2.49 m','2.44 m',51);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'190 C','','845.81 km/h','3926.52 km/h','39000 ft','35.78 m','2.39 m','2.31 m',52);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'787-8 A','','653.48 km/h','3474.57 km/h','39000 ft','40.79 m','2.29 m','2.51 m',52);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'787-8 B','','874.31 km/h','3831.35 km/h','39000 ft','34.32 m','2.74 m','2.47 m',53);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'787-8 C','','758.10 km/h','3622.17 km/h','39000 ft','40.82 m','3.24 m','1.95 m',53);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'787-9 A','','833.00 km/h','3607.72 km/h','39000 ft','31.83 m','2.77 m','2.37 m',54);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'787-9 B','','793.79 km/h','3928.62 km/h','39000 ft','34.27 m','1.78 m','2.30 m',54);
-- Hong Kong Airlines, codigo 15--
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A350-900 A','','692.26 km/h','3682.79 km/h','39000 ft','35.64 m','2.92 m','1.85 m',55);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A350-900 B','','727.39 km/h','3989.14 km/h','39000 ft','35.49 m','3.62 m','1.90 m',55);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A350-900 C','','751.13 km/h','3842.63 km/h','39000 ft','36.14 m','3.63 m','2.11 m',56);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A330-200F1','','663.22 km/h','3939.43 km/h','39000 ft','33.03 m','3.47 m','2.04 m',56);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A330-200F2','','727.04 km/h','3869.49 km/h','39000 ft','34.60 m','2.25 m','2.07 m',57);
INSERT INTO vista_modelo VALUES (sec_modelo.nextval,'A330-200F3','','868.31 km/h','3968.69 km/h','39000 ft','30.73 m','1.72 m','2.51 m',57);


--MODELO_CLASE---
   --225--
INSERT INTO modelo_clase (codigo,fk_modelo, fk_tipo_clase, porcentaje) VALUES (sec_modelo_clase.nextval, 1,4,0.10 );
INSERT INTO modelo_clase (codigo,fk_modelo, fk_tipo_clase, porcentaje) VALUES (sec_modelo_clase.nextval, 1,5,0.20 );
INSERT INTO modelo_clase (codigo,fk_modelo, fk_tipo_clase, porcentaje) VALUES (sec_modelo_clase.nextval, 1,6,0.05 );

INSERT INTO modelo_clase (codigo,fk_modelo, fk_tipo_clase, porcentaje) VALUES (sec_modelo_clase.nextval, 2,4,0.15 );
INSERT INTO modelo_clase (codigo,fk_modelo, fk_tipo_clase, porcentaje) VALUES (sec_modelo_clase.nextval, 2,6,0.06 );

INSERT INTO modelo_clase (codigo,fk_modelo, fk_tipo_clase, porcentaje) VALUES (sec_modelo_clase.nextval, 3,4,0.10 );
INSERT INTO modelo_clase (codigo,fk_modelo, fk_tipo_clase, porcentaje) VALUES (sec_modelo_clase.nextval, 3,6,0.05 );

INSERT INTO modelo_clase (codigo,fk_modelo, fk_tipo_clase, porcentaje) VALUES (sec_modelo_clase.nextval, 4,4,0.10 );
INSERT INTO modelo_clase (codigo,fk_modelo, fk_tipo_clase, porcentaje) VALUES (sec_modelo_clase.nextval, 4,6,0.05 );

INSERT INTO modelo_clase (codigo,fk_modelo, fk_tipo_clase, porcentaje) VALUES (sec_modelo_clase.nextval, 5,4,0.10 );
INSERT INTO modelo_clase (codigo,fk_modelo, fk_tipo_clase, porcentaje) VALUES (sec_modelo_clase.nextval, 5,6,0.05 );

INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval, 6,4,0.10 );
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval, 6,6,0.05 );

INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,7,4,0.21);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,7,5,0.03);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,8,4,0.51);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,8,5,0.23);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,9,7,0.29);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,9,5,0.26);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,10,5,0.57);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,10,6,0.56);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,11,6,0.51);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,11,7,0.58);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,12,4,0.04);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,12,7,0.33);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,13,6,0.05);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,13,4,0.46);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,14,4,0.04);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,14,5,0.09);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,15,5,0.48);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,15,7,0.13);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,16,5,0.56);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,16,6,0.11);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,17,6,0.36);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,17,7,0.51);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,18,5,0.13);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,18,7,0.55);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,19,4,0.58);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,19,6,0.19);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,20,4,0.46);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,20,5,0.57);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,21,7,0.59);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,21,5,0.46);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,22,6,0.27);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,22,7,0.21);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,23,6,0.41);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,23,7,0.53);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,24,5,0.43);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,24,7,0.38);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,25,5,0.48);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,25,4,0.32);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,26,6,0.08);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,26,5,0.54);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,27,6,0.16);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,27,5,0.48);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,28,7,0.08);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,28,6,0.31);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,29,6,0.43);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,29,7,0.03);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,30,5,0.49);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,30,7,0.57);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,31,6,0.36);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,31,4,0.31);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,32,4,0.33);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,32,5,0.27);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,33,6,0.41);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,33,5,0.18);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,34,6,0.50);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,34,7,0.25);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,35,6,0.21);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,35,7,0.27);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,36,6,0.29);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,36,7,0.20);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,37,5,0.06);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,37,4,0.53);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,38,4,0.13);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,38,5,0.35);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,39,6,0.10);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,39,5,0.47);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,40,7,0.49);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,40,6,0.49);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,41,6,0.56);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,41,7,0.44);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,42,6,0.38);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,42,7,0.48);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,43,6,0.19);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,43,4,0.14);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,44,4,0.16);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,44,5,0.44);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,45,5,0.49);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,45,6,0.52);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,46,7,0.14);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,46,6,0.16);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,47,5,0.33);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,47,7,0.14);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,48,6,0.27);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,48,7,0.35);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,49,6,0.09);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,49,4,0.05);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,50,4,0.14);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,50,5,0.16);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,51,5,0.11);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,51,4,0.56);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,52,4,0.15);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,52,5,0.40);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,53,6,0.09);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,53,5,0.25);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,54,7,0.33);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,54,6,0.23);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,55,6,0.06);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,55,7,0.28);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,56,4,0.46);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,56,7,0.40);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,57,5,0.49);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,57,4,0.55);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,58,6,0.48);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,58,5,0.06);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,59,7,0.30);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,59,5,0.40);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,60,5,0.43);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,60,6,0.15);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,61,4,0.55);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,61,7,0.59);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,62,4,0.25);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,62,7,0.16);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,63,6,0.42);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,63,4,0.45);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,64,4,0.41);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,64,5,0.54);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,65,7,0.18);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,65,5,0.27);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,66,6,0.04);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,66,5,0.29);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,67,6,0.30);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,67,7,0.41);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,68,6,0.11);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,68,7,0.26);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,69,5,0.11);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,69,4,0.58);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,70,6,0.39);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,70,5,0.14);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,71,7,0.38);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,71,5,0.60);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,72,4,0.03);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,72,6,0.60);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,73,7,0.26);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,73,6,0.28);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,74,4,0.17);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,74,7,0.28);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,75,4,0.47);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,75,6,0.59);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,76,4,0.29);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,76,5,0.26);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,77,4,0.58);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,77,5,0.39);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,78,5,0.46);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,78,6,0.45);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,79,6,0.56);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,79,7,0.45);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,80,4,0.14);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,80,7,0.27);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,81,5,0.05);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,81,4,0.30);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,82,4,0.09);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,82,5,0.38);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,83,7,0.34);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,83,5,0.44);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,84,5,0.22);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,84,6,0.17);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,85,6,0.30);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,85,7,0.43);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,86,5,0.09);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,86,7,0.26);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,87,5,0.11);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,87,4,0.39);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,88,4,0.07);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,88,5,0.10);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,89,6,0.25);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,89,5,0.05);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,90,7,0.20);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,90,6,0.47);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,91,6,0.10);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,91,7,0.31);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,92,4,0.44);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,92,7,0.10);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,93,5,0.06);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,93,4,0.05);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,94,4,0.29);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,94,6,0.30);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,95,7,0.55);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,95,5,0.58);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,96,5,0.06);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,96,6,0.47);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,97,5,0.37);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,97,7,0.33);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,98,5,0.42);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,98,7,0.28);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,99,4,0.53);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,99,4,0.44);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,100,4,0.08);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,100,7,0.08);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,101,7,0.16);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,101,4,0.10);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,102,4,0.48);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,102,5,0.34);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,103,7,0.25);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,103,5,0.51);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,104,7,0.36);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,104,6,0.58);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,105,6,0.55);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,105,7,0.24);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,106,6,0.32);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,106,7,0.06);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,107,5,0.17);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,107,4,0.31);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,108,4,0.31);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,108,5,0.34);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,109,7,0.06);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,109,5,0.38);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,110,5,0.08);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,110,6,0.33);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,111,6,0.37);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,111,7,0.19);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,112,4,0.14);
INSERT INTO modelo_clase (codigo,fk_modelo,fk_tipo_clase,porcentaje) VALUES (sec_modelo_clase.nextval,112,7,0.11);

--AVION--
--206--
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'J4D 1B9','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'O5I 5Y7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'I0M 4B0','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'J1Y 5G6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'C0Q 0R5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'C1N 3F3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'I8Z 9F1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'J3Y 4C4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'O4M 1O1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'A0H 1C1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'T9B 3N6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'W5G 7R4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'P5D 1D8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'K3S 4B3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'Z4S 9B8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'B0T 0X7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'L5N 3Z0','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'X9R 9B4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'C8F 9P2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'L9A 8H1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'O9E 6U1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'C2G 3E3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'T7V 3S6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'X5F 8M5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'D3T 9D9','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'T7E 2S8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'R6H 1B4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'I6U 6A1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'U7J 8Y7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'K8L 1Y3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'Z9Q 1Q9','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'P5K 8M1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'W4L 1D4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'J0I 8X2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'V4Y 7L1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'G6R 1M7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'U2U 6O6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'D0M 8P4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'U5L 1B1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'L3A 1E1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'R4N 4X1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'S2S 0U0','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'I7L 3M7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'D7L 9W3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'J0Y 7P6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'S3O 2D4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'C0P 8L3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'Y7M 2T2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'R3S 1G8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'R5I 5R4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'H6I 7A7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'L6P 4X4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'Q1T 8N4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'F7S 9J7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'I4Y 6S4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'D9O 8Z2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'S9X 1M8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'R0M 4K1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'L7F 9J1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'R9P 0I2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'B2W 1B9','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'C4M 8W2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'J0Y 3V4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'G3J 7W7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'Q4S 4G0','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'Y4B 4O7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'L7B 5I6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'M2F 0W3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'W9Y 5A0','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'P7W 3U4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'B2R 0C5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'W1V 3E4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'I5C 6V6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'I7C 8V6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'F4O 0Y7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'Z5J 8E7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'R4M 8L1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'J6Q 0Z2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'B7N 7F7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'A2Y 1P5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'I3L 1A2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'S1Y 6N2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'V9I 1P2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'T6W 0I9','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'W5B 3L8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'B7W 1H4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'A4W 2S6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'P5M 9N4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'C7X 5U1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'E3G 1M0','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'Y7J 0T7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'U5Y 1D1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'V2F 4R9','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'H6P 7F7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'R2M 6G2','Perfecto estado',1);
iNSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'O7N 0B5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'X0O 8K0','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'C1G 4Z0','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'J7Y 9H1','Perfecto estado',1);
iNSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'U6P 9S8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'X6W 0X2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'K3C 1B3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'F4I 9H7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'B7C 7M7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'L1D 6W2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'Y5M 4N6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'U7M 3I7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'G1D 0S3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'R9M 8V9','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'Y6O 4O8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'W7W 6H9','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'H7L 9M1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'P1S 7H3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'K6C 8R0','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'J6O 2Y0','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'H4B 1T8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'T0B 9R2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'K8Y 7O5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'P2A 1V5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'G5O 8X7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'I2S 0E3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'S3K 1W0','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'B8U 1V1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'X4V 3K8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'N2L 7E6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'W7M 9V1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'T6C 0W2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'S3E 2D8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'M8O 9M1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'F9Q 7V5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'Q4Q 0H8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'Y1F 7Z8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'F4Y 9W6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'P0F 4M9','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'P5I 4W4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'D2S 3H1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'K7L 0Q4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'W3J 0O3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'E0D 1T6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'R2E 8Y0','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'S1I 2T3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'V0X 9H5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'E8N 9E4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'F4Q 4C7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'R8V 5G3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'O6J 7V4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'V8Z 4E5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'Y9D 6D8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'M6Y 9M6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'I6Y 1I9','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'C4F 4Z8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'H9Z 7H5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'G6I 6X6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'A9G 7E9','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'K5F 7L3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'O2R 5I8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'R0F 5A9','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'I9H 6D5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'W0Z 6Y1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'L6N 6R1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'K1K 6P7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'X2O 7R4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'A4D 1O8','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'M0F 8P1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'M2L 2Y5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'P7N 4F5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'V3L 5H9','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'N7S 8P5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'M5S 7P6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'M8R 2U2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'P2C 3U5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'L7I 5V4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'C6W 3T6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'Z2T 8P1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'O9N 4U0','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'R4I 5Y3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'W8N 2Q4','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'E9I 4F1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'E3B 6H6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'A7Z 5N2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'M7D 9Y5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'A9W 6G1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'N2B 1E6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'T5Q 1J2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'T7N 6M6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'K7K 6R5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'G7I 3K3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'B8F 4A1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'H0Z 7I6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'T4N 5I7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'P9C 4J1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'F0D 5O7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'X3J 2Q2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'S9P 7M9','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'H9A 6V7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'G7N 6M6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'Y7K 6R5','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'G7I 3K3','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'J8F 4A1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'K0Z 7I6','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'T4N 5I7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'L9C 4J1','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'M0D 5O7','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'V3J 2Q2','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'A9P 7M9','Perfecto estado',1);
INSERT INTO avion (codigo,nombre,observacion,fk_status) VALUES (sec_avion.nextval,'Z9A 6V7','Perfecto estado',1);

--MODELO_CLASE_AVION--
   --416--

INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,1,1);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,1,2);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,1,3);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,2,1);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,2,2);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,2,3);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,3,1);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,3,2);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,3,3);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,4,1);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,4,2);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,4,3);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,5,1);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,5,2);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,5,3);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,6,1);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,6,2);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,6,3);

INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,7,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,7,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,8,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,8,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,9,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,9,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,10,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,10,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,11,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,11,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,12,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,12,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,13,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,13,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,14,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,14,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,15,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,15,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,16,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,16,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,17,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,17,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,18,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,18,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,19,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,19,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,20,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,20,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,21,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,21,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,22,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,22,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,23,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,23,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,24,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,24,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,25,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,25,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,26,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,26,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,27,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,27,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,28,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,28,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,29,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,29,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,30,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,30,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,31,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,31,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,32,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,32,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,33,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,33,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,34,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,34,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,35,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,35,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,36,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,36,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,37,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,37,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,38,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,38,5);

INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,39,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,39,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,40,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,40,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,41,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,41,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,42,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,42,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,43,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,43,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,44,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,44,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,45,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,45,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,46,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,46,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,47,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,47,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,48,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,48,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,49,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,49,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,50,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,50,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,51,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,51,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,52,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,52,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,53,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,53,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,54,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,54,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,55,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,55,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,56,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,56,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,57,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,57,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,58,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,58,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,59,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,59,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,60,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,60,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,61,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,61,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,62,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,62,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,63,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,63,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,64,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,64,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,65,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,65,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,66,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,66,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,67,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,67,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,68,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,68,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,69,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,69,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,70,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,70,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,71,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,71,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,72,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,72,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,73,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,73,7);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,74,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,74,7);

INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,75,8);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,75,9);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,76,8);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,76,9);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,77,8);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,77,9);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,78,8);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,78,9);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,79,8);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,79,9);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,80,8);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,80,9);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,81,8);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,81,9);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,82,8);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,82,9);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,83,8);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,83,9);

INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,84,10);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,84,11);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,85,10);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,85,11);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,86,10);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,86,11);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,87,10);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,87,11);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,88,10);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,88,11);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,89,10);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,89,11);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,90,10);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,90,11);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,91,10);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,91,11);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,92,10);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,92,11);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,93,10);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,93,11);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,94,10);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,94,11);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,95,10);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,95,11);

INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,96,12);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,96,13);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,97,12);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,97,13);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,98,12);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,99,13);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,99,12);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,99,13);

INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,100,14);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,100,15);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,101,16);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,101,17);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,102,18);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,102,19);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,103,20);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,103,21);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,104,22);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,104,23);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,105,24);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,105,25);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,106,26);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,106,27);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,107,28);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,107,29);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,108,30);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,108,31);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,109,32);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,109,33);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,110,34);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,110,35);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,111,36);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,111,37);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,112,38);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,112,39);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,113,40);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,113,41);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,114,42);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,114,43);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,115,44);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,115,45);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,116,46);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,116,47);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,117,48);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,117,49);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,118,50);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,118,51);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,119,52);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,119,53);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,120,54);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,120,55);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,121,56);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,121,57);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,122,58);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,122,59);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,123,60);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,123,61);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,123,62);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,123,63);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,125,64);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,125,65);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,125,66);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,125,67);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,127,68);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,127,69);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,128,70);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,128,71);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,129,72);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,129,73);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,130,74);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,130,75);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,131,76);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,131,77);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,132,78);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,132,79);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,133,80);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,133,81);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,134,82);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,134,83);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,135,84);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,135,85);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,136,86);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,136,87);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,137,88);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,137,89);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,138,90);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,138,91);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,139,92);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,139,93);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,140,94);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,140,95);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,141,96);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,141,97);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,142,98);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,142,99);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,143,100);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,143,101);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,144,102);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,144,103);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,145,104);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,145,105);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,146,106);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,146,107);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,147,108);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,147,109);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,148,110);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,148,111);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,149,112);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,149,113);

INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,150,114);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,150,115);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,151,116);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,151,117);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,152,118);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,152,119);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,153,120);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,153,121);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,154,122);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,154,123);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,155,124);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,155,125);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,156,126);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,156,127);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,157,128);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,157,129);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,158,130);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,158,131);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,159,132);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,159,133);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,160,134);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,160,135);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,161,136);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,161,137);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,162,138);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,162,139);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,163,140);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,163,141);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,164,142);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,164,143);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,165,144);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,165,145);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,166,146);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,166,147);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,167,148);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,167,149);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,168,150);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,168,151);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,169,152);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,169,153);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,170,154);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,170,155);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,171,156);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,171,157);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,172,158);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,172,159);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,173,160);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,173,161);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,174,162);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,174,163);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,175,164);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,175,165);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,176,166);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,176,167);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,177,168);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,177,169);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,178,170);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,178,171);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,179,172);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,179,173);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,180,174);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,180,175);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,181,176);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,181,177);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,182,178);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,182,179);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,183,180);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,183,181);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,184,182);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,184,183);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,185,184);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,185,185);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,186,186);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,186,187);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,187,188);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,187,189);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,188,190);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,188,191);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,189,192);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,189,193);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,190,194);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,190,195);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,191,196);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,191,197);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,192,198);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,192,199);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,193,200);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,193,201);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,194,202);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,194,203);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,195,204);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,195,205);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,196,206);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,196,207);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,197,208);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,197,209);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,198,210);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,198,211);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,199,212);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,199,213);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,200,214);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,200,215);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,201,216);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,201,217);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,202,218);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,202,219);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,203,220);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,203,221);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,204,222);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,204,223);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,205,224);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,205,225);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,124,1);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,124,2);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,126,4);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,126,5);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,206,6);
INSERT INTO modelo_clase_avion (codigo,fk_avion,fk_modelo_clase) VALUES (sec_modelo_clase_avion.nextval,206,7);




 -- ASEGURADORA--
 /* Colocar datos info */
 -- 15--
 INSERT INTO vista_aseguradoras  VALUES (sec_aseguradora.nextval,'Ping An','La empresa se fund? en el 1988 y tiene su sede en Shenzhen');
 INSERT INTO vista_aseguradoras  VALUES (sec_aseguradora.nextval,'AIA','El m?s grande grupo asi?tico de seguros p?blicos independientes');
 INSERT INTO vista_aseguradoras  VALUES (sec_aseguradora.nextval,'State Farm','Es una empresa estadounidense de seguros. Tiene su sede en Bloomington, Illinois');
 INSERT INTO vista_aseguradoras  VALUES (sec_aseguradora.nextval,'AXA','Es una multinacional francesa especializada en el negocio de los seguros');
 INSERT INTO vista_aseguradoras  VALUES (sec_aseguradora.nextval,'Allianz','Es una multinacional alemana de servicios financieros con sede en M?nich');
 INSERT INTO vista_aseguradoras  VALUES (sec_aseguradora.nextval,'Geico','Es una compa??a estadounidense de seguros de autom?viles con sede en Maryland');
 INSERT INTO vista_aseguradoras  VALUES (sec_aseguradora.nextval,'CPIC','');
 INSERT INTO vista_aseguradoras  VALUES (sec_aseguradora.nextval,'MetLife','Es la subsidiaria de la empresa estadounidense Metropolitan Life Insurance Company');
 INSERT INTO vista_aseguradoras  VALUES (sec_aseguradora.nextval,'Travelers','Es una compa??a de seguros estadounidense');
 INSERT INTO vista_aseguradoras  VALUES (sec_aseguradora.nextval,'China Life','Es una compa??a con sede en Beijing con sede en China que ofrece seguros de vida');
 INSERT INTO vista_aseguradoras  VALUES (sec_aseguradora.nextval,'Zurich','Com?nmente conocida como Zurich, es una empresa de seguros suiza');
 INSERT INTO vista_aseguradoras  VALUES (sec_aseguradora.nextval,'ING',' Es una instituci?n financiera de origen neerland?s ');
 INSERT INTO vista_aseguradoras  VALUES (sec_aseguradora.nextval,'MAPFRE','Es una empresa multinacional espa?ola dedicada al sector del seguro y reaseguro,');
 INSERT INTO vista_aseguradoras  VALUES (sec_aseguradora.nextval,'Vida Caixa','Es la entidad l?der en previsi?n social.');
 INSERT INTO vista_aseguradoras  VALUES (sec_aseguradora.nextval,'CHUBB','Constituida en Zurich, Suiza, es la empresa matriz de Chubb');
 
 --SEGURO--

   
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Emergencia Medica', 1,10, 1);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Emergencia Medica', 2,20, 2);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Emergencia Medica', 3,30, 3);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Emergencia Medica', 4,40, 4);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Emergencia Medica', 5,50, 5);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Emergencia Medica', 6,60, 6);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Emergencia Medica', 7,70, 7);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Emergencia Medica', 8,80, 8);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Emergencia Medica', 9,90, 9);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Emergencia Medica', 10,100, 10);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'P?rdida de Equipaje', 1,10, 8);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'P?rdida de Equipaje', 2,20, 9);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'P?rdida de Equipaje', 3,30, 10);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'P?rdida de Equipaje', 4,40, 11);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'P?rdida de Equipaje', 5,50, 12);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'P?rdida de Equipaje', 6,60, 13);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'P?rdida de Equipaje', 7,70, 14);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'P?rdida de Equipaje', 8,80, 1);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'P?rdida de Equipaje', 9,90, 2);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'P?rdida de Equipaje', 10,100, 3);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Demora de Equipaje', 1,10, 15);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Demora de Equipaje', 2,20, 1);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Demora de Equipaje', 3,30, 2);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Demora de Equipaje', 4,40, 3);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Demora de Equipaje', 5,50, 4);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Demora de Equipaje', 6,60, 5);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Demora de Equipaje', 7,70, 6);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Demora de Equipaje', 8,80, 4);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Demora de Equipaje', 9,90, 9);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Demora de Equipaje', 10,100, 10);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Cancelacion o Interrupcion de viaje', 1,15, 7);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Cancelacion o Interrupcion de viaje', 2,25, 8);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Cancelacion o Interrupcion de viaje', 3,35, 9);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Cancelacion o Interrupcion de viaje', 4,45, 10);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Cancelacion o Interrupcion de viaje', 5,55, 11);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Cancelacion o Interrupcion de viaje', 6,65, 12);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Cancelacion o Interrupcion de viaje', 7,75, 13);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Cancelacion o Interrupcion de viaje', 8,85, 14);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Cancelacion o Interrupcion de viaje', 9,95, 15);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Asistencia medica durante 24h', 1,15, 14);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Asistencia medica durante 24h', 2,25, 15);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Asistencia medica durante 24h', 3,35, 1);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Asistencia medica durante 24h', 4,45, 2);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Asistencia medica durante 24h', 5,55, 3);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Asistencia medica durante 24h', 6,65, 4);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Asistencia medica durante 24h', 7,75, 5);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Asistencia medica durante 24h', 8,85, 8);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Asistencia medica durante 24h', 9,95, 9);
INSERT INTO seguro (codigo, nombre, cantidad_personas, precio, fk_aseguradora) VALUES (sec_seguro.nextval, 'Asistencia medica durante 24h', 10,105, 10);

 -- PERSONA--
     -- 100--
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1619110632399,'Amanda','Kamal','Walls','Price',TO_DATE('04/24/1979','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1698090515499,'Cheryl','Jamalia','Smith','Grimes',TO_DATE('11/30/1986','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1635071984599,'Uriah','Shelley','Mcdaniel','Waters',TO_DATE('09/08/1994','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1639060841799,'David','Hoyt','Spencer','Franks',TO_DATE('09/12/1965','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1677082180399,'Ethan','Pamela','Cole','Park',TO_DATE('04/23/1978','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1698010218599,'Trevor','Jaime','Bryant','Sanford',TO_DATE('07/20/1969','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1600012352099,'Matthew','Seth','Townsend','Ray',TO_DATE('03/01/2006','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1661122154499,'Gillian','Honorato','Santana','Benson',TO_DATE('10/01/1978','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1662081866299,'Rhoda','Lyle','Santiago','Waller',TO_DATE('10/02/2000','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1603062361899,'Wendy','Ray','Hall','Evans',TO_DATE('07/07/2001','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1621040408699,'Halee','Kasper','Hutchinson','Day',TO_DATE('12/05/1962','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1667091626599,'Byron','Hamilton','Rollins','Hampton',TO_DATE('07/16/1991','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1676041614099,'Ria','Timothy','Miles','Nelson',TO_DATE('08/07/2009','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1621020501499,'Tanner','Cain','Mitchell','Pearson',TO_DATE('01/06/1987','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1612011989499,'Rogan','Eleanor','Bradshaw','Sparks',TO_DATE('03/16/2006','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1695111856599,'Jeanette','George','Floyd','Warner',TO_DATE('12/07/1978','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1689101914399,'Daphne','Ginger','Moore','Fulton',TO_DATE('02/26/2013','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1606052843199,'Kathleen','Mari','Santiago','Mcfadden',TO_DATE('04/05/1977','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1657012057999,'Tate','Destiny','Wallace','Payne',TO_DATE('03/08/1960','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1695071723099,'Beck','Thane','Thomas','Foreman',TO_DATE('12/28/1964','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1601100101299,'Harriet','Mari','Lewis','Bowers',TO_DATE('04/04/1977','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1670112353599,'Theodore','Fatima','Jensen','Pratt',TO_DATE('08/01/2008','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1674041464599,'Declan','Florence','Wells','Cherry',TO_DATE('05/11/2004','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1641063069599,'Solomon','Ariel','Andrews','Stanton',TO_DATE('02/09/2010','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1679010945699,'Driscoll','Shay','Mclean','Lowe',TO_DATE('07/16/1984','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (655062794599 ,'Herman','Lee','Odonnell','Cunningham',TO_DATE('03/26/1968','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1677021858299, 'Nell','Blaze','Pacheco','Hernandez',TO_DATE('10/10/2006','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1606111794899,'Jack','Orson','Walton','Cameron',TO_DATE('01/21/2002','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1697112282099, 'Emerson','Rinah','Sullivan','Mccall',TO_DATE('05/01/1996','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1673022194199,'Benedict','Connor','Pace','Sharpe',TO_DATE('03/24/2000','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1614023015299,'Edward','Erasmus','Barrett','Mcguire',TO_DATE('05/07/1962','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1645022189799,'Clinton','Alisa','Hensley','Reyes',TO_DATE('05/25/2009','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1607071750699,'Tad','Akeem','Barr','Burns',TO_DATE('09/27/1976','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1655050759899,'Maxine','Dane','Conner','Bush',TO_DATE('06/22/2005','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1662020571699,'Aileen','Alice','Sampson','Hayes',TO_DATE('11/26/2001','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1677091565199,'Reed','Tamekah','Frost','Walker',TO_DATE('05/09/1970','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1686111801299,'Nell','Hadassah','William','Cook',TO_DATE('07/19/2016','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1609121815699,'Dorian','Clinton','Mcdowell','Calderon',TO_DATE('04/01/1970','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1697062912099,'Carter','Quincy','Garcia','Larson',TO_DATE('04/27/1964','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1626041950299,'Blair','Kato','Valdez','Hartman',TO_DATE('10/26/1992','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1629112282699,'Hunter','Scott','Duncan','Graham',TO_DATE('01/15/1998','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1663102080899,'Joy','Maggy','Molina','Graham',TO_DATE('06/07/2016','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1684061265399,'Darrel','Sylvester','Pollard','Decker',TO_DATE('02/17/1979','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1668030887799,'William','Theodore','Black','Sellers',TO_DATE('04/11/1969','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1625052233699,'Mufutau','Hedwig','Finley','House',TO_DATE('10/31/1995','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1667051500099,'Deacon','Christen','Cherry','Gallagher',TO_DATE('03/04/1979','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1689102075299,'Martena','Fletcher','Fitzgerald','Harmon',TO_DATE('08/25/1985','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1632080714199,'Leigh','Hammett','Sawyer','Michael',TO_DATE('11/03/2004','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1600061414099,'Ella','Stone','Sweeney','Norton',TO_DATE('09/01/1978','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (661051560899,'Noelani','Geraldine','Russell','Hester',TO_DATE('11/26/1994','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1634011075299,'Perry','Gemma','Rasmussen','Farmer',TO_DATE('10/25/2002','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1604040488099,'Ocean','Mallory','Weiss','Tanner',TO_DATE('03/18/1981','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1659050528399,'Otto','Sacha','Chandler','Church',TO_DATE('01/15/1966','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1664032910199,'Kasper','Porter','Garrison','Dixon',TO_DATE('06/16/1965','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1684072883199,'Felix','Oren','Mccullough','Wolf',TO_DATE('03/03/1998','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1659012081399,'Iliana','Nissim','Mathews','Sweeney',TO_DATE('02/20/2018','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1632122762299,'Sacha','Alea','Bonner','Leon',TO_DATE('08/24/1968','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1648101416899,'Graiden','Zephr','Sexton','Hobbs',TO_DATE('03/17/1985','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1666091686099,'Mufutau','Flavia','Barker','Page',TO_DATE('12/08/2017','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1622042772899,'Abbot','Abel','Hensley','Robertson',TO_DATE('10/21/1973','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1684023033899,'Guy','Clementine','Melton','Cobb',TO_DATE('12/27/1990','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1676100466499,'Ariana','Francis','Holden','Dodson',TO_DATE('10/31/2007','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1693113065399,'Yuli','Brenden','Hanson','Mullen',TO_DATE('07/29/1983','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1636041924099,'Justina','Rigel','Hodge','Sanders',TO_DATE('05/24/1991','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1617071415899,'Bradley','Reagan','Kline','Schneider',TO_DATE('01/04/2008','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (163412070559,'Dara','Raphael','Fletcher','Moon',TO_DATE('07/06/2002','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1686111976999,'Ignatius','Mara','Bishop','Jenkins',TO_DATE('05/19/1962','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1696102152699,'Conan','Venus','Michael','Snider',TO_DATE('10/29/2004','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1616031530899,'Sara','Judith','Spears','Fitzpatrick',TO_DATE('04/17/1988','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1610062403899,'Nomlanga','Colette','Cunningham','Huber',TO_DATE('12/20/2009','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1679112753199,'Fritz','Patricia','Beasley','Gardner',TO_DATE('06/01/1994','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1665010279399,'Lois','Lucy','Frost','Le',TO_DATE('05/07/1960','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1653061411999,'Lacota','Danielle','Coleman','Pena',TO_DATE('01/19/1965','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1683062439599,'Rigel','Azalia','Padilla','Robinson',TO_DATE('08/27/1964','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1659031070199,'Anthony','Callum','Knapp','Knight',TO_DATE('11/04/1983','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1603081878599,'Reed','Anastasia','Guzman','Andrews',TO_DATE('01/09/1990','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1660010778699,'Nita','Nita','Jensen','Cohen',TO_DATE('06/09/1977','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1629062413499,'Blake','Quintessa','Wynn','Forbes',TO_DATE('05/27/1966','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1642041890299,'Dolan','Griffin','Peters','Schneider',TO_DATE('03/07/2009','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1619090549799,'Brenden','Merrill','Barnes','Bray',TO_DATE('04/03/1961','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1608052240499,'Uriel','Nolan','Knight','Zamora',TO_DATE('06/28/2018','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1672093039899,'Howard','Ishmael','Shannon','Reeves',TO_DATE('09/28/2012','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1695120277799,'Chadwick','Igor','Beach','Riggs',TO_DATE('01/21/2012','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1684033080599,'Declan','Brielle','Cook','Parrish',TO_DATE('11/25/1988','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1677102285299,'Alice','Quynn','Norton','Bradford',TO_DATE('10/11/2012','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1662051796599,'Myra','Linda','Raymond','Pittman',TO_DATE('10/25/1996','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1659100689599,'Alec','Lois','Garrison','Burks',TO_DATE('01/20/2018','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1665013027899,'Rinah','Lucius','Ross','Harvey',TO_DATE('09/28/2007','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1657121225099,'Avram','Jerry','Mcneil','Williams',TO_DATE('03/26/2011','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1674113050699,'Lee','Clio','Hayden','Salas',TO_DATE('06/26/1983','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1615122131899,'Karly','Thomas','Hoffman','Mcintyre',TO_DATE('03/13/1971','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1676082850799,'Orla','Xanthus','Goodman','Perkins',TO_DATE('09/08/1989','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1679021641299,'Jemima','Ifeoma','Haynes','Monroe',TO_DATE('06/20/1971','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1638022704799,'Grady','Sloane','Woods','Gutierrez',TO_DATE('02/25/1991','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1602081347899,'Robin','Illiana','Rush','Chang',TO_DATE('11/30/2004','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1638050563599,'Laith','Dexter','Nixon','Collins',TO_DATE('08/26/1995','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1694061922299,'Riley','Alisa','Barrett','Becker',TO_DATE('08/16/1997','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1640080443199,'Nora','Calista','Stuart','Guerrero',TO_DATE('09/07/1998','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1665022377599,'Andrew','Zachery','Petersen','Ferguson',TO_DATE('03/21/1962','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1655051357999,'India','Dominic','Prince','Lopez',TO_DATE('05/05/2000','MM/DD/YYYY'));


-- 100 --

INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1614061596299,'Camden','Leah','Campos','Castaneda',TO_DATE('05/06/1967','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1612111451299,'Aurelia','Emerson','Montoya','Dorsey',TO_DATE('03/14/1975','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1601060421299,'Garrett','Sean','Houston','Potter',TO_DATE('01/13/1994','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1680062815199,'Troy','Griffith','Cotton','Shepherd',TO_DATE('05/06/1996','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1685011147499,'Keaton','Zahir','Griffin','Graham',TO_DATE('12/27/2006','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1607032791499,'Holmes','Lavinia','Harmon','Greer',TO_DATE('07/31/1975','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (6600625115999,'Lucas','Lacota','Bradford','Mayo',TO_DATE('10/14/2012','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1645010399999,'Reece','Beatrice','Clay','Horne',TO_DATE('09/03/2012','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1658110552599,'Jelani','Jena','Pittman','Nguyen',TO_DATE('01/22/2012','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1668040105399,'Fritz','Illana','Roman','Campbell',TO_DATE('03/22/1965','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1665041392499,'Shaeleigh','Madonna','Cervantes','Phelps',TO_DATE('01/03/2005','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1653051564499,'Angelica','Sara','Long','Hatfield',TO_DATE('02/24/1977','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1673121046099,'Yen','Ira','Marshall','Graves',TO_DATE('04/22/2007','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (683103065499,'Russell','Denton','Vinson','Gregory',TO_DATE('01/25/2007','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1695062870199,'Rachel','Zelda','Underwood','Higgins',TO_DATE('10/18/1982','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1632080481599,'Orson','Gail','Hartman','Elliott',TO_DATE('02/19/1972','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1686112862899,'Nerea','Bryar','Cannon','Baxter',TO_DATE('06/11/1992','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1607011561999,'McKenzie','Nero','Young','Weaver',TO_DATE('06/25/2013','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1657062563099,'Levi','Lars','William','Mayo',TO_DATE('03/29/1975','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1691110977799,'Sage','Yetta','Chen','Frost',TO_DATE('03/04/1973','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1633060412899,'Rigel','Jordan','Watkins','Barrett',TO_DATE('12/24/1968','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1643041084499,'Trevor','Tyler','Mclaughlin','Rosario',TO_DATE('07/18/2010','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1616012170699,'Knox','MacKensie','Beard','Munoz',TO_DATE('11/11/1986','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1620091815199,'Kaseem','Garrison','Waters','Oneal',TO_DATE('07/29/1976','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1685062510499,'Tashya','Camille','Sherman','Mcneil',TO_DATE('04/29/2016','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1668030935299,'Palmer','Erasmus','Washington','Swanson',TO_DATE('06/23/1986','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1682022688599,'Price','Gemma','Slater','Riddle',TO_DATE('06/14/1995','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1669071928799,'Ferdinand','Randall','Mejia','Graham',TO_DATE('04/19/1971','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1608090325299,'Alexa','Brandon','Bowen','Terrell',TO_DATE('09/03/1993','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1690071216699,'Morgan','Cullen','Reilly','Bass',TO_DATE('05/29/1974','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1689032624799,'Bruce','Brynn','Hudson','Manning',TO_DATE('08/27/1967','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1649022618799,'Colin','Logan','Haney','Nielsen',TO_DATE('07/02/1965','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1647021753199,'Serina','Vera','Freeman','Wall',TO_DATE('06/10/1972','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1661042044299,'Arsenio','Sopoline','Sutton','Bishop',TO_DATE('12/01/1997','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1686080986399,'Curran','Julian','Fields','Banks',TO_DATE('08/01/2016','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1618121146499,'Jade','Nissim','Roman','Snyder',TO_DATE('10/18/1987','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1651090396499,'Cole','Rylee','Mckay','Shaffer',TO_DATE('01/31/2004','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1611092062799,'Coby','Gray','Welch','Mckenzie',TO_DATE('05/25/1992','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1631031324799,'Ariana','Sean','Cummings','Melton',TO_DATE('07/26/1979','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1656072060299,'Silas','Winifred','Stafford','Maynard',TO_DATE('10/13/2016','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1679081725799,'Miriam','Byron','Sharp','Norton',TO_DATE('10/24/1992','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1671082375199,'Tatum','Raya','Pittman','Anderson',TO_DATE('08/20/1973','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1656120575999,'Jerome','Jennifer','Acevedo','Hoover',TO_DATE('09/16/2009','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1601121400799,'Hakeem','Adam','Sutton','Bartlett',TO_DATE('03/14/2001','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1657062023999,'Alexander','Genevieve','Palmer','Gibson',TO_DATE('03/26/1986','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1623022988399,'Caldwell','Ivy','Kane','Morrison',TO_DATE('03/16/1982','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1603062674399,'Teegan','Audra','Padilla','Alvarado',TO_DATE('09/03/1975','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1646041623399,'Wing','Ainsley','Downs','Albert',TO_DATE('12/02/1992','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1609081783099,'Cathleen','Casey','Newton','Erickson',TO_DATE('03/10/1986','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1668040424999,'Liberty','Philip','Cross','Hunt',TO_DATE('07/10/1964','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1604020693699,'Bevis','Victor','Morrison','Bryan',TO_DATE('04/27/1968','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1605010363399,'Timon','Price','Wiley','Fletcher',TO_DATE('09/06/2006','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1672080560099,'Regina','Tara','Baxter','Perez',TO_DATE('07/22/2001','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1692122080299,'Francis','Kitra','Gill','Beck',TO_DATE('03/09/1968','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1647012983699,'Eden','Vivian','Vega','Travis',TO_DATE('01/14/1969','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1611061599899,'Kareem','Evangeline','Juarez','Clark',TO_DATE('08/12/2002','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1645031348299,'Julian','Andrew','Barker','Hyde',TO_DATE('12/08/1996','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1675022385099,'Kyla','Allen','Whitney','Miles',TO_DATE('11/07/1992','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1616020500199,'Jemima','Clementine','Henderson','Elliott',TO_DATE('11/11/1979','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1629031010299,'Blythe','Delilah','Odom','Bass',TO_DATE('08/30/1989','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1677070859099,'Tucker','Brenda','Barlow','Travis',TO_DATE('05/05/2011','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1619112377899,'Ryder','Bethany','Huff','Sparks',TO_DATE('02/12/1973','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1604062206299,'Lucy','Alika','Cleveland','Patrick',TO_DATE('11/17/1976','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1690082842299,'Stephen','Paula','Franklin','Pennington',TO_DATE('10/07/2012','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1658050382599,'Roanna','Phelan','Park','Terrell',TO_DATE('11/08/1972','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1673071235799,'Urielle','Kiona','Guerra','Murray',TO_DATE('11/11/2005','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1656070853799,'Timon','Kaye','Terrell','Rush',TO_DATE('04/14/1974','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1647101478399,'Rudyard','Caryn','Macias','Peterson',TO_DATE('09/16/1993','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1660121069599,'Hilary','Nora','Allison','Langley',TO_DATE('03/08/1982','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1675051932399,'Nell','Wynne','Pate','Nolan',TO_DATE('04/25/1986','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1680110358399,'Liberty','Quinn','Vang','York',TO_DATE('01/13/2008','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1674050242899,'Hyacinth','Dominique','Cannon','Salazar',TO_DATE('10/28/1991','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1673112333499,'Nathan','Dillon','Cash','Hughes',TO_DATE('04/03/1999','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1690022678199,'Unity','Harding','Melton','Hoover',TO_DATE('06/03/2004','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1686042032799,'Graham','Caryn','Burt','Lucas',TO_DATE('07/28/1995','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1612040325599,'Rebecca','Kelsie','Hoover','Romero',TO_DATE('02/06/1984','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (658102777799,'Bianca','Hedy','Clements','Harrington',TO_DATE('06/28/2001','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1688060900499,'Nita','Benjamin','Hutchinson','Garrett',TO_DATE('04/30/1997','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1681090210899,'Glenna','Cora','Ruiz','Knox',TO_DATE('08/18/1998','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1602100335399,'Lewis','Ignacia','Hogan','Mckinney',TO_DATE('12/25/1964','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1638022827699,'Jaime','Joseph','Morrison','Walls',TO_DATE('06/05/1986','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1653010945999,'Whoopi','Lacota','Moses','Wade',TO_DATE('09/10/1999','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1651032823699,'Linda','Joy','Bridges','Roberts',TO_DATE('06/13/1995','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1648090113199,'Caesar','Hashim','Patton','Merritt',TO_DATE('01/30/2005','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1697101592199,'Marah','Hasad','Boyle','Carney',TO_DATE('03/10/1970','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1687040299099,'Wade','Lionel','Blake','Copeland',TO_DATE('11/09/1994','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1607092323299,'Summer','Tate','Erickson','Carney',TO_DATE('03/21/1989','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1609033016499,'Pearl','Flavia','Day','Bradley',TO_DATE('07/10/1962','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1672012743199,'Justin','Minerva','Fox','Anthony',TO_DATE('01/24/1980','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1677021840899,'Xander','Shannon','Jacobson','Oneill',TO_DATE('09/18/2013','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1694061080099,'Evan','Keefe','Olsen','Pratt',TO_DATE('03/26/2003','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1687102462999,'Kirsten','Judah','Blevins','Wong',TO_DATE('09/10/2011','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1699042859999,'Bertha','Travis','Dickson','Hinton',TO_DATE('05/16/2012','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1647062470999,'Lydia','Mark','Jordan','Turner',TO_DATE('05/11/2010','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1626101098799,'Paloma','MacKensie','Castillo','Mcintosh',TO_DATE('05/09/1980','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1622022405599,'Cara','Travis','Watts','Morales',TO_DATE('08/17/1962','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1647092479099,'Freya','Destiny','Sweeney','Evans',TO_DATE('01/01/1986','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1651122461899,'Zeus','Mariam','Quinn','Kaufman',TO_DATE('04/15/1997','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1620051474999,'Rudyard','Blaze','Ward','Gaines',TO_DATE('11/17/2004','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1675111573799,'Hiroko','Paul','Weaver','Walsh',TO_DATE('01/03/1996','MM/DD/YYYY'));

 -- 100--
 
 INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1627112095299,'Cynthia','Vivian','Palmer','Moses',TO_DATE('10/11/1982','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1608031031899,'Nomlanga','Sonia','Combs','Garrison',TO_DATE('01/18/1979','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1674121179699,'Autumn','Herman','Rivers','Levy',TO_DATE('06/30/1989','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1612121736399,'Eliana','Jessica','Gilbert','Saunders',TO_DATE('09/27/1982','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1691041675699,'Felix','Alana','Ayala','Holland',TO_DATE('09/10/2017','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1600031905199,'Frances','Yvonne','Wynn','Cotton',TO_DATE('07/16/1982','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1628050819399,'Brooke','Hilda','Mendez','Cameron',TO_DATE('04/09/1979','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1688121477999,'Daria','Madonna','Farrell','Zamora',TO_DATE('10/26/1972','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1648072187099,'Norman','Nell','Pace','Briggs',TO_DATE('08/14/1970','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1668082764499,'Fay','Coby','Velez','Hull',TO_DATE('11/22/1980','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1678021227499,'Regina','Carl','Hopper','Booker',TO_DATE('03/14/1986','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1645121178199,'Dante','Denton','Figueroa','Frye',TO_DATE('05/05/1972','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1664112609999,'Emi','Robin','Williamson','Alston',TO_DATE('12/23/1995','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1653021735999,'Pearl','Hyacinth','Newton','Kidd',TO_DATE('09/14/2002','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1600071696099,'Dalton','Dexter','Patrick','Booth',TO_DATE('05/26/2009','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1634012219299,'Willa','Jennifer','Sandoval','Soto',TO_DATE('01/18/1988','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1681092037599,'Victor','Galena','Church','Rose',TO_DATE('08/20/1966','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1613051990099,'Rebekah','James','Stanton','Cochran',TO_DATE('09/29/2017','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1681020309099,'Sandra','Yvonne','Sutton','Owen',TO_DATE('01/07/2015','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1639022017499,'Isadora','Leslie','Holloway','Peterson',TO_DATE('01/18/1992','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1605081347599,'Xantha','Nell','Chen','Hammond',TO_DATE('06/28/1964','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1673121977899,'Cooper','Zena','Harding','Soto',TO_DATE('06/05/1973','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1627080393299,'Lara','Halee','Sykes','Gates',TO_DATE('10/11/2006','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1670050802399,'Leonard','Nayda','Buck','Calhoun',TO_DATE('05/02/2003','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1639111921999,'Garth','Bethany','Compton','Padilla',TO_DATE('10/20/1969','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1699052503399,'Erich','Dante','Pruitt','Palmer',TO_DATE('08/08/1985','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1633112460099,'Hoyt','Benjamin','Bryan','Wiggins',TO_DATE('08/17/1962','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1678031488299,'Cairo','John','Johns','Shaw',TO_DATE('05/16/2013','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1629082092699,'Aline','Belle','Green','Hoffman',TO_DATE('07/23/2010','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1685032128099,'Philip','Kylie','Garner','Mills',TO_DATE('05/31/2017','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1663033038199,'Dakota','Justina','Romero','Fuentes',TO_DATE('07/17/1996','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1627050934899,'Ivana','Rudyard','Beach','Wilson',TO_DATE('01/15/1993','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1636102024399,'Aphrodite','Kirby','Mayo','Powers',TO_DATE('11/20/1978','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1687032448099,'Lane','Jaden','Wood','Stein',TO_DATE('04/18/1989','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1633030207899,'Nasim','Walter','Wilkins','Adkins',TO_DATE('02/08/2008','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1628040979999,'Gray','Hope','Moreno','Garrett',TO_DATE('08/12/1999','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1676012675299,'Vaughan','Garth','Curtis','Williams',TO_DATE('08/21/1985','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1642113067299,'Kennan','Jacob','Mcclain','Guerra',TO_DATE('07/17/1983','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1675052940699,'Brynne','Heidi','Rivas','Wood',TO_DATE('06/11/2009','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1682111052599,'Donovan','Virginia','Burgess','Erickson',TO_DATE('06/02/1990','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1687111851899,'Mari','Aurelia','Roman','Ramsey',TO_DATE('12/04/2016','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1606060190699,'Allistair','Marsden','Hart','Stewart',TO_DATE('12/03/1987','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1618032869099,'Fletcher','Emi','Schmidt','Snow',TO_DATE('03/08/1992','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1605120188599,'Julie','Eliana','Williamson','Porter',TO_DATE('11/15/2003','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1673110827399,'Dean','Demetrius','Conrad','Glass',TO_DATE('11/23/1982','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1684122349899,'Gregory','Kenneth','Lindsey','Newman',TO_DATE('03/17/1998','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1643050412399,'Leila','Lavinia','Bentley','Burns',TO_DATE('05/17/1983','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1676071627799,'Finn','Craig','Crawford','York',TO_DATE('11/06/2005','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1667062420199,'Jorden','Stephanie','Erickson','Taylor',TO_DATE('02/04/2003','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1696092665799,'Cairo','Merrill','Mcfarland','Greer',TO_DATE('07/11/1984','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1619012142999,'Kennedy','Lacey','Bell','Garner',TO_DATE('08/27/2015','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1657082139799,'Hedley','Jamalia','Little','Adkins',TO_DATE('08/06/1983','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1684021047599,'Violet','Halee','Lester','Horne',TO_DATE('12/04/1995','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1659081270599,'Lewis','Norman','Frazier','Smith',TO_DATE('01/12/1981','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1692010830899,'Zephr','Ocean','Gates','Jacobson',TO_DATE('05/29/2015','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1687010307299,'Nicole','Tashya','Daugherty','Sanford',TO_DATE('05/09/1988','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1600100368499,'Julie','Keefe','Downs','Harrell',TO_DATE('09/27/2016','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1612032670299,'Ursula','Ursula','Snow','Mullins',TO_DATE('05/08/1985','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1697092638099,'Aladdin','Aiko','Moore','Montgomery',TO_DATE('02/03/2010','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1610040263399,'Branden','Dolan','Fitzgerald','Weeks',TO_DATE('01/30/1968','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1657040358999,'Julie','Emerald','Deleon','Guzman',TO_DATE('01/06/1995','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1678121758599,'Kirestin','Ira','Carpenter','Pierce',TO_DATE('11/28/1964','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1621031315799,'Lester','Cody','Trujillo','Gomez',TO_DATE('08/30/2018','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1622071860099,'Brian','Julie','Gay','Dodson',TO_DATE('05/17/1990','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1605071787899,'Idona','Haviva','Payne','Kane',TO_DATE('02/06/2014','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1683012469399,'Ashely','Macey','Stout','Gordon',TO_DATE('04/07/1970','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1641041595799,'Dahlia','Kellie','Valencia','Valdez',TO_DATE('01/17/1973','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1660101860099,'Cassady','Yen','Christian','Gross',TO_DATE('10/02/2000','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1641021760199,'Abra','Kellie','Livingston','Jones',TO_DATE('01/15/1972','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1699071710499,'Ryder','Xenos','Saunders','Skinner',TO_DATE('12/20/1994','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1671102938899,'Ulysses','Hedy','Kline','Duran',TO_DATE('03/21/2010','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1617110817499,'Jelani','Juliet','Parks','Morrison',TO_DATE('03/22/2013','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1641023006499,'Sandra','Eliana','Hayden','Ryan',TO_DATE('06/28/1977','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1637090361299,'Jeremy','Elliott','Franks','French',TO_DATE('05/28/1991','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1638061736199,'Jessamine','Patrick','Grimes','Merrill',TO_DATE('11/23/2015','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1616022670599,'Lester','Jana','Chen','Hebert',TO_DATE('06/05/1977','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1624020429199,'Hilary','Gay','Hines','Benjamin',TO_DATE('07/18/2018','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1693011096599,'Dillon','Octavius','Nieves','Puckett',TO_DATE('07/18/1977','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1638083090499,'Raja','Connor','Velez','Valentine',TO_DATE('03/25/2010','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1622100714699,'Maya','Hakeem','Clements','Rios',TO_DATE('04/10/1965','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1686091023999,'Thor','Anne','Cummings','Pace',TO_DATE('02/26/1961','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1602042883399,'Cadman','Jacob','Mills','Adams',TO_DATE('07/10/1995','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1652092125399,'Magee','Daniel','Hines','Monroe',TO_DATE('08/05/1999','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1657070881099, 'Aaron','Gil','Garrison','Mayo',TO_DATE('04/27/1999','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1680081986099,'Maite','Lesley','Walter','Reyes',TO_DATE('08/31/1970','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1634100908299,'Uriel','Jane','Gentry','Donaldson',TO_DATE('01/26/2010','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1693071945999,'Darryl','Jenette','Jacobson','Avila',TO_DATE('10/16/1987','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1663092164199,'Ferris','Walter','Singleton','Hopkins',TO_DATE('02/14/1974','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1637040750599,'Thaddeus','Timothy','Warner','Ingram',TO_DATE('11/01/1962','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1628022552899,'Noelani','Todd','Kelley','Dotson',TO_DATE('07/07/2011','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1650102073099,'Ava','Cade','Byrd','Duncan',TO_DATE('01/21/1972','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1675070393599,'Quinn','Portia','Snyder','Singleton',TO_DATE('01/20/1968','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1653022776399,'Geraldine','Virginia','Beard','Mason',TO_DATE('10/19/1987','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1694092043099,'Roary','Preston','Elliott','Black',TO_DATE('10/03/1993','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1697060908199,'Cecilia','Celeste','Valdez','Kerr',TO_DATE('10/25/2002','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1655102396499,'Karina','Buffy','Moran','Bradley',TO_DATE('03/24/2019','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1640122466999,'Herrod','Carolyn','Douglas','Barber',TO_DATE('04/03/1984','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1685020177399,'Basil','Chester','Morris','Santiago',TO_DATE('05/06/1974','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1680101775499,'Leandra','Amal','Swanson','Lowery',TO_DATE('02/07/1994','MM/DD/YYYY'));
INSERT INTO persona (cedula,nombre,segundo_nombre,apellido,segundo_apellido,fecha_nacimiento) VALUES (1645040902499,'Raven','Fritz','Mcgowan','Sears',TO_DATE('05/30/2016','MM/DD/YYYY'));


-- USUARIO--
-- 32  --
/* Verificar los tipos de datos y colocarle codigo a la tabla usuario*/

INSERT INTO vista_usuarios (codigo,correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES  (sec_usuario.nextval, 'ava123@hotmail.com', 0212188322, 1, 1650102073099);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'noelani123@hotmail.com', 1477121322, 1,1628022552899);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'thaddeus123@hotmail.com', 2412166322, 1, 1637040750599);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'ferris123@hotmail.com', 6412432232, 1, 1663092164199);

INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'karina123@hotmail.com', 4034232139, 0, 1655102396499);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'cecilia@hotmail.com', 3311112139, 0, 1697060908199);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'roary123@hotmail.com', 112262139, 0, 1694092043099);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'quinn123@hotmail.com', 11812419939, 0, 1675070393599);

INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'marah123@hotmail.com', 048882121322, 1, 1697101592199);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'caesar123@hotmail.com', 04772121322, 1,1648090113199);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'linda123@hotmail.com', 0412166322, 1, 1651032823699);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'woopi123@hotmail.com', 0412432232, 1, 1653010945999);


INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'raven123@hotmail.com', 5034232139, 0, 1645040902499);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'leandra@hotmail.com', 0411112139, 0, 1680101775499);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'basil123@hotmail.com', 022662139, 0, 1685020177399);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'herrodqq123@hotmail.com', 88812419939, 0, 1640122466999);

INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'justin123@hotmail.com', 0412221322, 1, 1672012743199);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'pearl123@hotmail.com',  11212981322, 1,1609033016499);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'summer123@hotmail.com', 04121892322, 1, 1607092323299);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'wade123@hotmail.com',   241200132, 1, 1687040299099);

INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'bertha123@hotmail.com', 503412139, 0, 1699042859999);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'kirsten@hotmail.com', 04122412139, 0, 1687102462999);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'Evan123@hotmail.com', 0412662139, 0, 1694061080099);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval,'xander123@hotmail.com', 1412419939, 0, 1677021840899);

INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'Camden123@hotmail.com', 0412121322, 1, 1614061596299);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'Hiroko123@hotmail.com', 0412121322, 1, 1675111573799);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval,'Rudyard123@hotmail.com', 041212322, 1, 1620051474999);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'Zeus123@hotmail.com', 0412412132, 1, 1651122461899);

INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'Freya123@hotmail.com', 0412212122, 0, 1647092479099);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'Cara123@hotmail.com', 04124213221, 0, 1622022405599);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'Paloma123@hotmail.com', 0412412128, 0, 1626101098799);
INSERT INTO vista_usuarios (codigo, correo, numero_telefono, socio_club_de_millas, fk_persona) VALUES (sec_usuario.nextval, 'lydia123@hotmail.com', 0412412139, 0, 1647062470999);


--PROMOCION--
--15--
-- tipo de dato de porcentaje--
INSERT INTO promocion (codigo, porcentaje, descripcion, nombre) VALUES (sec_promocion.nextval, 0.05, 'Promocion de navidad', 'Viva navidad');
INSERT INTO promocion (codigo, porcentaje, descripcion, nombre) VALUES (sec_promocion.nextval, 0.15, 'Promocion de vacaciones largas', 'Viva vacaciones');
INSERT INTO promocion (codigo, porcentaje, descripcion, nombre) VALUES (sec_promocion.nextval, 0.25, 'Promocion de halloween', 'Viva halloween');
INSERT INTO promocion (codigo, porcentaje, descripcion, nombre) VALUES (sec_promocion.nextval, 0.07, 'Promocion de a?o nuevo', 'Feliz a?o');
INSERT INTO promocion (codigo, porcentaje, descripcion, nombre) VALUES (sec_promocion.nextval, 0.08, 'Promocion de carnaval', 'Viva carnaval');

INSERT INTO promocion (codigo, porcentaje, descripcion, nombre) VALUES (sec_promocion.nextval, 0.03, 'Promocion de aniversario', 'Feliz aniversario');
INSERT INTO promocion (codigo, porcentaje, descripcion, nombre) VALUES (sec_promocion.nextval, 0.18, 'Promocion de primero de cada mes', 'Viva el primero');
INSERT INTO promocion (codigo, porcentaje, descripcion, nombre) VALUES (sec_promocion.nextval, 0.26, 'Promocion de mes de febrero', 'Viva febreo');
INSERT INTO promocion (codigo, porcentaje, descripcion, nombre) VALUES (sec_promocion.nextval, 0.09, 'Promocion de a?o nuevo', 'Feliz a?o');
INSERT INTO promocion (codigo, porcentaje, descripcion, nombre) VALUES (sec_promocion.nextval, 0.50, 'Promocion de carnaval', 'Viva carnaval');

INSERT INTO promocion (codigo, porcentaje, descripcion, nombre) VALUES (sec_promocion.nextval, 0.03, 'Promocion de marzo', 'Feliz marzo');
INSERT INTO promocion (codigo, porcentaje, descripcion, nombre) VALUES (sec_promocion.nextval, 0.18, 'Promocion de abril', 'Viva el abril');
INSERT INTO promocion (codigo, porcentaje, descripcion, nombre) VALUES (sec_promocion.nextval, 0.26, 'Promocion de mayo', 'Viva mayo');
INSERT INTO promocion (codigo, porcentaje, descripcion, nombre) VALUES (sec_promocion.nextval, 0.09, 'Promocion de cumplea?o', 'Feliz a?os');
INSERT INTO promocion (codigo, porcentaje, descripcion, nombre) VALUES (sec_promocion.nextval, 0.50, 'Promocion de dia del planeta', 'Viva el planeta');


/*LUGAR*/
--PAISES--
INSERT INTO lugar (codigo,nombre,tipo) VALUES (sec_lugar.nextval,'Venezuela','Pais');
INSERT INTO lugar (codigo,nombre,tipo) VALUES (sec_lugar.nextval,'South Africa','Pais');
INSERT INTO lugar (codigo,nombre,tipo) VALUES (sec_lugar.nextval,'China','Pais');
INSERT INTO lugar (codigo,nombre,tipo) VALUES (sec_lugar.nextval,'Spain','Pais');
INSERT INTO lugar (codigo,nombre,tipo) VALUES (sec_lugar.nextval,'Australia','Pais');
INSERT INTO lugar (codigo,nombre,tipo) VALUES (sec_lugar.nextval,'United Arab Emirates','Pais');
INSERT INTO lugar (codigo,nombre,tipo) VALUES (sec_lugar.nextval,'Mexico','Pais');
INSERT INTO lugar (codigo,nombre,tipo) VALUES (sec_lugar.nextval,'Estados Unidos','Pais');
INSERT INTO lugar (codigo,nombre,tipo) VALUES (sec_lugar.nextval,'Alemania','Pais');
INSERT INTO lugar (codigo,nombre,tipo) VALUES (sec_lugar.nextval,'Colombia','Pais');
INSERT INTO lugar (codigo,nombre,tipo) VALUES (sec_lugar.nextval,'Argentina','Pais');
INSERT INTO lugar (codigo,nombre,tipo) VALUES (sec_lugar.nextval,'Inglaterra','Pais');
INSERT INTO lugar (codigo,nombre,tipo) VALUES (sec_lugar.nextval,'Canada','Pais');
INSERT INTO lugar (codigo,nombre,tipo) VALUES (sec_lugar.nextval,'Francia','Pais');
INSERT INTO lugar (codigo,nombre,tipo) VALUES (sec_lugar.nextval,'Italia','Pais');

--CIUDADES--
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'La Guaira','Ciudad',1);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Ciudad del cabo','Ciudad',2);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Pretoria','Ciudad',2);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Pekin','Ciudad',3);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'shanghai','Ciudad',3);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Madrid','Ciudad',4);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Sevilla','Ciudad',4);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Canberra','Ciudad',5);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Sidney','Ciudad',5);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Abu Dabi','Ciudad',6);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Ajman','Ciudad',6);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Mexico DF','Ciudad',7);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Cancun','Ciudad',7);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Miami','Ciudad',8);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'New York','Ciudad',8);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Berlin','Ciudad',9);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Munich','Ciudad',9);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Bogota','Ciudad',10);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Barranquilla','Ciudad',10);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Buenos Aires','Ciudad',11);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'La plata','Ciudad',11);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Londres','Ciudad',12);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Liverpool','Ciudad',12);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Paris','Ciudad',14);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Montpellier','Ciudad',14);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Otawa','Ciudad',13);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Toronto','Ciudad',13);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Roma','Ciudad',15);
INSERT INTO lugar (codigo,nombre,tipo, fk_lugar) VALUES (sec_lugar.nextval,'Milan','Ciudad',15);

/*PROVEEDORES*/
INSERT INTO vista_proveedores VALUES (sec_proveedor.nextval, 'Budget', 'Es una empresa estadounidense de alquiler de autom?viles que fue fundada en 1958 ');
INSERT INTO vista_proveedores VALUES (sec_proveedor.nextval, 'Rentalcars', 'Es una empresa estadounidense de alquiler de autom?viles');
INSERT INTO vista_proveedores VALUES (sec_proveedor.nextval, 'Avis', 'Avis es una empresa estadounidense de alquiler de autom?viles con sede en Parsippany, Nueva Jersey');
INSERT INTO vista_proveedores VALUES (sec_proveedor.nextval, 'Thrifty', ' ');
INSERT INTO vista_proveedores VALUES (sec_proveedor.nextval, 'Dollar car rental', ' ');
INSERT INTO vista_proveedores VALUES (sec_proveedor.nextval, 'National Car Rental', ' ');

INSERT INTO vista_proveedores VALUES (sec_proveedor.nextval, 'Hertz', ' ');
INSERT INTO vista_proveedores VALUES (sec_proveedor.nextval, 'Ace Rent a Car', ' ');
INSERT INTO vista_proveedores VALUES (sec_proveedor.nextval, 'Enterprise Rent-A-Car', ' ');
INSERT INTO vista_proveedores VALUES (sec_proveedor.nextval, 'Kemwell', ' ');
INSERT INTO vista_proveedores VALUES (sec_proveedor.nextval, 'Zipcar', ' ');

INSERT INTO vista_proveedores VALUES (sec_proveedor.nextval, 'EuropCar', ' ');
INSERT INTO vista_proveedores VALUES (sec_proveedor.nextval, 'Alamo', ' ');
INSERT INTO vista_proveedores VALUES (sec_proveedor.nextval, 'Renting Arval', ' ');
INSERT INTO vista_proveedores VALUES (sec_proveedor.nextval, 'Athlon Car', ' ');

/*PROVEEDOR-LUGAR*/
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,1,16);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,1,17);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,1,18);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,2,16);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,2,17);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,2,18);


INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,3,19);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,3,20);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,3,21);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,4,19);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,4,20);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,4,21);

INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,5,22);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,5,23);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,5,24);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,6,22);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,6,23);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,6,24);

INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,7,25);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,7,26);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,7,27);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,8,25);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,8,26);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,8,27);

INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,9,28);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,9,29);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,9,30);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,10,28);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,10,29);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,10,30);

INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,11,31);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,11,32);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,11,33);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,1,31);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,1,32);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,1,33);

INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,1,34);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,1,35);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,1,36);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,2,34);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,2,35);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,2,36);

INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,3,37);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,3,38);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,3,39);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,4,37);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,4,38);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,4,39);

INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,5,40);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,5,41);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,5,42);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,6,40);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,6,41);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,6,42);

INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,7,43);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,7,44);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,7,43);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,8,44);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,8,43);
INSERT INTO proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (sec_proveedor_lugar.nextval,8,44);

/*AUTOMOVILES*/

INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,1,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,2,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,3,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,4,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,5,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,6,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,7,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,8,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,9,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,10,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,11,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,12,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,13,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,14,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,15,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,16,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,17,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,18,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,19,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,20,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,21,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,22,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,23,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,24,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,25,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,26,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,27,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,28,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,29,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,30,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,31,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,32,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,33,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,34,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,35,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,36,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,37,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,38,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,39,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,40,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,41,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,42,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,43,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,44,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,45,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,46,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,47,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,48,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,49,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,50,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,51,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,52,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Arteon', 100,53,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,54,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,55,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Touran', 100,56,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,57,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,58,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,59,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Volkswagen','Eos', 100,60,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,1,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,2,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,3,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,4,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,5,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,6,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,7,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,8,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,9,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,10,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,11,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,12,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,13,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,14,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,15,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,16,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,17,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,18,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,19,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,20,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,21,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,22,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,23,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,24,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,25,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,26,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,27,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,28,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,29,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,30,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,31,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,32,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,33,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,34,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,35,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,36,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,37,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,38,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,39,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,40,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,41,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,42,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,43,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,44,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,45,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,46,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,47,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,48,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,49,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,50,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,51,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,52,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,53,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,54,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,55,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,56,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,57,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,58,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,59,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'Peugeot','208 2020', 300,60,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,1,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,2,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,3,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,4,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,5,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,6,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,7,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,8,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,9,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,10,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,11,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,12,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,13,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,14,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,15,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,16,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,17,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,18,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,19,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,20,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,21,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,22,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,23,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,24,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,25,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,26,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,27,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,28,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,29,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,30,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,31,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,32,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,33,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,34,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 1 2020', 300,35,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,36,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,37,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,38,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,39,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,40,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,41,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,42,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,43,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,44,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,45,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,46,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,47,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,48,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,49,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,50,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,51,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,52,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,53,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,54,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,55,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,56,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,57,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,58,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,59,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'BMW','Serie 3 Gran Turismo', 300,60,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,1,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,2,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,3,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,4,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,5,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,6,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,7,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,8,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,9,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,10,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,11,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,12,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,13,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,14,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,15,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,16,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,17,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,18,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,19,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,20,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,21,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,22,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,23,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,24,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,25,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,26,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,27,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,28,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,29,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Corsa 2020', 250,30,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,31,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,32,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,33,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,34,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,35,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,36,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,37,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,38,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,39,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,40,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,41,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,42,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,43,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,44,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,45,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,46,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,47,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,48,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,49,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,50,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,51,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,52,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,53,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,54,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,55,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,56,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,57,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,58,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,59,1);
INSERT INTO vista_automoviles VALUES(sec_automovil.nextval, 'OPEL','Mokka X', 400,60,1);


/* HOTEL */

insert into vista_hoteles values (sec_hotel.nextval,'eurobuilding','lujoso',8,16);
insert into vista_hoteles values (sec_hotel.nextval,'olecaribe','medio',6,16);
insert into vista_hoteles values (sec_hotel.nextval,'oneandonly','lujoso',9,17);
insert into vista_hoteles values (sec_hotel.nextval,'tablebay','medio', 5,17);
insert into vista_hoteles values (sec_hotel.nextval,'sheraton','bueno',7,18);
insert into vista_hoteles values (sec_hotel.nextval,'hatfield','vacacional',7,18);
insert into vista_hoteles values (sec_hotel.nextval,'regent','lujoso',9,19);
insert into vista_hoteles values (sec_hotel.nextval,'thegreatwall','vacacional',10,19);
insert into vista_hoteles values (sec_hotel.nextval,'nanjiao','lujoso',9,20);
insert into vista_hoteles values (sec_hotel.nextval,'yugarden','bueno',7,20);
insert into vista_hoteles values (sec_hotel.nextval,'alcala','medio',6,21);
insert into vista_hoteles values (sec_hotel.nextval,'oscar','bueno',5,21);
insert into vista_hoteles values (sec_hotel.nextval,'silken','vacacional',7,22);
insert into vista_hoteles values (sec_hotel.nextval,'macarena','bueno',5,22);
insert into vista_hoteles values (sec_hotel.nextval,'kurrajong','excelente',7,23);
insert into vista_hoteles values (sec_hotel.nextval,'ibis styles','bueno',8,23);
insert into vista_hoteles values (sec_hotel.nextval,'sofitel','lujoso',10,24);
insert into vista_hoteles values (sec_hotel.nextval,'mercure','bueno',8,24);
insert into vista_hoteles values (sec_hotel.nextval,'fairmont','lujoso',10,25);
insert into vista_hoteles values (sec_hotel.nextval,'novotel','bueno',10,25);
insert into vista_hoteles values (sec_hotel.nextval,'ajman','vacacional',7,26);
insert into vista_hoteles values (sec_hotel.nextval,'kempinski','lujoso',9,26);
insert into vista_hoteles values (sec_hotel.nextval,'marquis','lujoso',8,27);
insert into vista_hoteles values (sec_hotel.nextval,'marlowe','bueno',7,27);
insert into vista_hoteles values (sec_hotel.nextval,'iberostar','lujoso',6,28);
insert into vista_hoteles values (sec_hotel.nextval,'riu cancun','vacacional',8,28);
insert into vista_hoteles values (sec_hotel.nextval,'hilton','lujoso',10,29);
insert into vista_hoteles values (sec_hotel.nextval,'conrad','medio',7,29);
insert into vista_hoteles values (sec_hotel.nextval,'stewart','lujoso',9,30);
insert into vista_hoteles values (sec_hotel.nextval,'avalon','excelente',10,30);
insert into vista_hoteles values (sec_hotel.nextval,'excelsior','bueno',7,31);
insert into vista_hoteles values (sec_hotel.nextval,'steigenberger','lujoso',8,31);
insert into vista_hoteles values (sec_hotel.nextval,'eden hotel wolff','medio',7,32);
insert into vista_hoteles values (sec_hotel.nextval,'leonardo royal','bueno',6,32);
insert into vista_hoteles values (sec_hotel.nextval,'el campin','medio',5,33);
insert into vista_hoteles values (sec_hotel.nextval,'dann norte','lujoso',9,33);
insert into vista_hoteles values (sec_hotel.nextval,'ibis','bueno',6,34);
insert into vista_hoteles values (sec_hotel.nextval,'holiday inn','vacacional',8,34);
insert into vista_hoteles values (sec_hotel.nextval,'intercontinental','excelente',9,35);
insert into vista_hoteles values (sec_hotel.nextval,'emperador','medio',7,35);
insert into vista_hoteles values (sec_hotel.nextval,'hotel del sol','basico',6,36);
insert into vista_hoteles values (sec_hotel.nextval,'hotel del rey','bueno',7,36);
insert into vista_hoteles values (sec_hotel.nextval,'russel','lujoso',10,37);
insert into vista_hoteles values (sec_hotel.nextval,'ibis greenwich','bueno',8,37);
insert into vista_hoteles values (sec_hotel.nextval,'atlantic tower','lujoso',10,38);
insert into vista_hoteles values (sec_hotel.nextval,'adelphi','medio',8,38);
insert into vista_hoteles values (sec_hotel.nextval,'millennium','bueno',7,39);
insert into vista_hoteles values (sec_hotel.nextval,'pullman','excelente',9,39);
insert into vista_hoteles values (sec_hotel.nextval,'holliday inn montpellier','bueno',6,40);
insert into vista_hoteles values (sec_hotel.nextval,'crowne plaza','vacacional',8,40);
insert into vista_hoteles values (sec_hotel.nextval,'sheraton ottawa','bueno',7,41);
insert into vista_hoteles values (sec_hotel.nextval,'les suites','excelente',8,41);
insert into vista_hoteles values (sec_hotel.nextval,'bond place','lujoso',10,42);
insert into vista_hoteles values (sec_hotel.nextval,'toronto don valley','vacacional',7,42);
insert into vista_hoteles values (sec_hotel.nextval,'imperiale','medio',5,43);
insert into vista_hoteles values (sec_hotel.nextval,'nizza','basico',6,43);
insert into vista_hoteles values (sec_hotel.nextval,'marriot milano','excelente',7,44);
insert into vista_hoteles values (sec_hotel.nextval,'indigo','medio',6,44);


/*RUTA*/


INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6224,16,18,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,9000,16,20,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5000,16,22,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,10000,16,24,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7100,16,26,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2500,16,28,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2500,16,30,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6100,16,32,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,700,16,34,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2700,16,36,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5000,16,38,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4505,16,40,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3200,16,42,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5100,16,44,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6000,18,16,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3200,18,20,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4500,18,22,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7100,18,24,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2000,18,26,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5130,18,28,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5000,18,30,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3140,18,32,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4100,18,34,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5120,18,36,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3100,18,38,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3250,18,40,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6100,18,42,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3150,18,44,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,8010,20,16,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5110,20,18,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4230,20,22,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3250,20,24,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4600,20,26,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7600,20,28,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6700,20,30,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4300,20,32,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6456,20,34,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7643,20,36,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4425,20,38,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4631,20,40,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,8442,20,42,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5774,20,44,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5100,22,16,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2200,22,18,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4223,22,20,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7333,22,24,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3404,22,26,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6344,22,28,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5853,22,30,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2744,22,32,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5765,22,34,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5794,22,36,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2703,22,38,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2643,22,40,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5964,22,42,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,1535,22,44,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,9932,24,16,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6642,24,18,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4878,24,20,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6537,24,22,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3656,24,26,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,10845,24,28,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7803,24,30,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5565,24,32,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7445,24,34,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7666,24,36,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5867,24,38,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4189,24,40,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7394,24,42,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7564,24,44,0);



INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3445,26,18,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3487,26,20,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3467,26,22,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5435,26,24,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6045,26,16,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6545,26,28,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6756,26,30,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2375,26,32,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5454,26,34,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6231,26,36,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2467,26,38,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3241,26,40,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5431,26,42,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3462,26,44,1);

INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5324,28,18,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7434,28,20,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5467,28,22,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,9935,28,24,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,1044,28,16,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6504,28,26,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3341,28,30,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6533,28,32,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2343,28,34,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3566,28,36,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5434,28,38,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5424,28,40,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4234,28,42,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5424,28,44,0);

INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5424,30,18,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7684,30,20,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5634,30,22,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,8544,30,24,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2345,30,16,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6456,30,26,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3404,30,28,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5533,30,32,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2643,30,34,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3166,30,36,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5213,30,38,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5624,30,40,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2234,30,42,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5456,30,44,1);

INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,1203,32,18,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6684,32,20,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2634,32,22,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7544,32,24,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5845,32,16,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3456,32,26,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5404,32,28,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5833,32,30,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5643,32,34,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5966,32,36,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2213,32,38,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2624,32,40,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5434,32,42,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2456,32,44,1);

INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5424,34,18,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7545,34,20,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5734,34,22,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,8345,34,24,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,534,34,16,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6435,34,26,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,1344,34,28,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2856,34,30,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5353,34,32,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,1564,34,36,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5213,34,38,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5674,34,40,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3048,34,42,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5644,34,44,1);

INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5724,36,18,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7845,36,20,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5134,36,22,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,8895,36,24,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2443,36,16,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6537,36,26,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3214,36,28,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4856,36,30,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5345,36,32,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,1533,36,34,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5245,36,38,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6533,36,40,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4875,36,42,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6534,36,44,1);


INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4321,38,18,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7345,38,20,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2134,38,22,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,9895,38,24,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4443,38,16,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4537,38,26,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4214,38,28,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3459,38,30,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2356,38,32,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6547,38,34,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6543,38,36,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3242,38,40,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3715,38,42,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2534,38,44,1);


INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4721,40,18,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6345,40,20,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2034,40,22,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7895,40,24,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5243,40,16,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4537,40,26,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5214,40,28,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4459,40,30,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2156,40,32,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5547,40,34,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6243,40,36,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2242,40,38,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4515,40,42,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2324,40,44,1);


INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6032,42,18,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,8345,42,20,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5234,42,22,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,9895,42,24,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4643,42,16,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6537,42,26,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3814,42,28,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2159,42,30,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5356,42,32,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4547,42,34,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4543,42,36,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5242,42,38,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5815,42,40,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5134,42,44,1);

INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4032,44,18,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7215,44,20,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,1234,44,22,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,7895,44,24,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5643,44,16,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3537,44,26,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5514,44,28,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,4959,44,30,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,1056,44,32,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,5312,44,34,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,6343,44,36,0);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,2242,44,38,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,1215,44,40,1);
INSERT INTO ruta (codigo,millas,fk_lugar_salida,fk_lugar_llegada,directo) VALUES (sec_ruta.nextval,3213,44,42,1);

exec insertarEscala;


/*HUESPED*/
insert into huesped values (sec_huesped.nextval,'adulto');
insert into huesped values (sec_huesped.nextval,'niño');
insert into huesped values (sec_huesped.nextval,'tercera edad');

/*HABITACION-HUESPED*/
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,2,1,1);
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,1,1,2);
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,2,2,1);
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,1,2,3);
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,2,3,1);
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,2,3,3);
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,1,4,1);
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,2,4,2);
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,1,5,2);
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,2,5,3);
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,1,6,3);
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,2,6,2);
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,1,7,1);
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,2,7,3);
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,1,8,1);
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,2,8,3);
insert into habitacion_huesped values (sec_habitacion_huesped.nextval,1,9,3);


  

insert into vuelo values (sec_vuelo.nextval,null,null,300,TO_TIMESTAMP('07-02-2019 07:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('07-02-2019 12:14:00', 'DD-MM-YYYY HH24:MI:SS'),1,1);
insert into vuelo values (sec_vuelo.nextval,null,null,400,TO_TIMESTAMP('08-02-2019 12:20:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('08-02-2019 23:14:00', 'DD-MM-YYYY HH24:MI:SS'),2,2);
insert into vuelo values (sec_vuelo.nextval,null,null,500,TO_TIMESTAMP('07-02-2019 05:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('07-02-2019 12:14:00', 'DD-MM-YYYY HH24:MI:SS'),3,3);
insert into vuelo values (sec_vuelo.nextval,null,null,350,TO_TIMESTAMP('10-02-2019 20:10:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('10-02-2019 23:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,4);
insert into vuelo values (sec_vuelo.nextval,null,null,420,TO_TIMESTAMP('11-02-2019 06:45:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('11-02-2019 12:14:00', 'DD-MM-YYYY HH24:MI:SS'),5,5);
insert into vuelo values (sec_vuelo.nextval,null,null,380,TO_TIMESTAMP('12-02-2019 13:40:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('12-02-2019 23:14:00', 'DD-MM-YYYY HH24:MI:SS'),6,6);
insert into vuelo values (sec_vuelo.nextval,null,null,500,TO_TIMESTAMP('11-02-2019 07:14:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('11-02-2019 12:14:00', 'DD-MM-YYYY HH24:MI:SS'),7,7);
insert into vuelo values (sec_vuelo.nextval,null,null,460,TO_TIMESTAMP('10-02-2019 10:14:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('10-02-2019 23:14:00', 'DD-MM-YYYY HH24:MI:SS'),8,8);
insert into vuelo values (sec_vuelo.nextval,null,null,390,TO_TIMESTAMP('12-02-2019 10:14:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('12-02-2019 12:14:00', 'DD-MM-YYYY HH24:MI:SS'),9,9);
insert into vuelo values (sec_vuelo.nextval,null,null,455,TO_TIMESTAMP('08-02-2019 10:14:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('08-02-2019 14:14:00', 'DD-MM-YYYY HH24:MI:SS'),10,10);
insert into vuelo values (sec_vuelo.nextval,null,null,405,TO_TIMESTAMP('07-02-2019 10:14:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('07-02-2019 15:14:00', 'DD-MM-YYYY HH24:MI:SS'),11,11);
insert into vuelo values (sec_vuelo.nextval,null,null,310,TO_TIMESTAMP('09-02-2019 14:14:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('09-02-2019 16:14:00', 'DD-MM-YYYY HH24:MI:SS'),12,12);
insert into vuelo values (sec_vuelo.nextval,null,null,470,TO_TIMESTAMP('07-02-2019 06:14:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('21-02-2019 17:14:00', 'DD-MM-YYYY HH24:MI:SS'),13,13);
insert into vuelo values (sec_vuelo.nextval,null,null,405,TO_TIMESTAMP('11-02-2019 16:14:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('11-02-2019 20:14:00', 'DD-MM-YYYY HH24:MI:SS'),14,14);
insert into vuelo values (sec_vuelo.nextval,null,null,300,TO_TIMESTAMP('09-02-2019 09:14:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('09-02-2019 11:14:00', 'DD-MM-YYYY HH24:MI:SS'),15,15);
insert into vuelo values (sec_vuelo.nextval,null,null,500,TO_TIMESTAMP('12-02-2019 08:14:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('12-02-2019 10:14:00', 'DD-MM-YYYY HH24:MI:SS'),16,16);




INSERT INTO reserva VALUES (sec_reserva.nextval,4988, TO_DATE('09/09/2019','MM/DD/YYYY'),null,1,TO_DATE ('09/20/2019','MM/DD/YYYY'), null);             
INSERT INTO seguro_reserva VALUES(sec_seguro_reserva.nextval,datos_reservacion(TO_DATE('09/09/2019','MM/DD/YYYY'),TO_DATE ('09/20/2019','MM/DD/YYYY'),1000),datos_costo(1160),1,1);
INSERT INTO reserva_hotel VALUES(sec_reserva_hotel.nextval,datos_reservacion(TO_DATE('09/09/2019','MM/DD/YYYY'),TO_DATE ('09/20/2019','MM/DD/YYYY'),2000),datos_costo(2320),1,1);
INSERT INTO reserva_automovil VALUES(sec_reserva_automovil.nextval,datos_reservacion(TO_DATE('09/09/2019','MM/DD/YYYY'),TO_DATE ('09/19/2019','MM/DD/YYYY'),1000),datos_costo(1160),1,1);

INSERT INTO reserva VALUES (sec_reserva.nextval,8004, TO_DATE('10/01/2019','MM/DD/YYYY'),null,1,TO_DATE ('10/25/2019','MM/DD/YYYY'), null);             
INSERT INTO seguro_reserva VALUES(sec_seguro_reserva.nextval,datos_reservacion(TO_DATE('10/01/2019','MM/DD/YYYY'),TO_DATE ('10/25/2019','MM/DD/YYYY'),2000),datos_costo(2320),2,2);
INSERT INTO reserva_hotel VALUES(sec_reserva_hotel.nextval,datos_reservacion(TO_DATE('10/01/2019','MM/DD/YYYY'),TO_DATE ('10/25/2019','MM/DD/YYYY'),2000),datos_costo(2320),2,5);
INSERT INTO reserva_automovil VALUES(sec_reserva_automovil.nextval,datos_reservacion(TO_DATE('10/01/2019','MM/DD/YYYY'),TO_DATE ('10/25/2019','MM/DD/YYYY'),2500),datos_costo(2900),2,5);


INSERT INTO reserva VALUES (sec_reserva.nextval,7540, TO_DATE('10/15/2019','MM/DD/YYYY'),null,3,TO_DATE ('11/09/2019','MM/DD/YYYY'), null);             
INSERT INTO seguro_reserva VALUES(sec_seguro_reserva.nextval,datos_reservacion(TO_DATE('10/15/2019','MM/DD/YYYY'),TO_DATE ('11/09/2019','MM/DD/YYYY'),1500),datos_costo(1740),3,3);
INSERT INTO reserva_hotel VALUES(sec_reserva_hotel.nextval,datos_reservacion(TO_DATE('10/15/2019','MM/DD/YYYY'),TO_DATE ('11/09/2019','MM/DD/YYYY'),2000),datos_costo(2320),3,10);
INSERT INTO reserva_automovil VALUES(sec_reserva_automovil.nextval,datos_reservacion(TO_DATE('10/15/2019','MM/DD/YYYY'),TO_DATE ('11/09/2019','MM/DD/YYYY'),2500),datos_costo(2900),3,10);


INSERT INTO reserva VALUES (sec_reserva.nextval, 9106, TO_DATE('10/12/2019','MM/DD/YYYY'),null,4,TO_DATE ('11/07/2019','MM/DD/YYYY'), null);             
INSERT INTO seguro_reserva VALUES(sec_seguro_reserva.nextval,datos_reservacion(TO_DATE('10/12/2019','MM/DD/YYYY'),TO_DATE ('11/07/2019','MM/DD/YYYY'),2000),datos_costo(2320),4,4);
INSERT INTO reserva_hotel VALUES(sec_reserva_hotel.nextval,datos_reservacion(TO_DATE('10/12/2019','MM/DD/YYYY'),TO_DATE ('11/07/2019','MM/DD/YYYY'),3000),datos_costo(3480),4,15);
INSERT INTO reserva_automovil VALUES(sec_reserva_automovil.nextval,datos_reservacion(TO_DATE('10/12/2019','MM/DD/YYYY'),TO_DATE ('11/07/2019','MM/DD/YYYY'),2500),datos_costo(2900),4,15);


INSERT INTO reserva VALUES (sec_reserva.nextval, 9187, TO_DATE('10/25/2019','MM/DD/YYYY'),null,5,TO_DATE ('11/19/2019','MM/DD/YYYY'), null);             
INSERT INTO seguro_reserva VALUES(sec_seguro_reserva.nextval,datos_reservacion(TO_DATE('10/25/2019','MM/DD/YYYY'),TO_DATE ('11/19/2019','MM/DD/YYYY'),2000),datos_costo(2320),5,5);
INSERT INTO reserva_hotel VALUES(sec_reserva_hotel.nextval,datos_reservacion(TO_DATE('10/25/2019','MM/DD/YYYY'),TO_DATE ('11/19/2019','MM/DD/YYYY'),3000),datos_costo(3480),5,20);
INSERT INTO reserva_automovil VALUES(sec_reserva_automovil.nextval,datos_reservacion(TO_DATE('10/25/2019','MM/DD/YYYY'),TO_DATE ('11/19/2019','MM/DD/YYYY'),2500),datos_costo(2900),5,20);


INSERT INTO reserva VALUES (sec_reserva.nextval,5081, TO_DATE('09/09/2019','MM/DD/YYYY'),null,6,TO_DATE ('10/09/2019','MM/DD/YYYY'), null);             
INSERT INTO seguro_reserva VALUES(sec_seguro_reserva.nextval,datos_reservacion(TO_DATE('09/09/2019','MM/DD/YYYY'),TO_DATE ('10/09/2019','MM/DD/YYYY'),1000),datos_costo(1160),6,6);
INSERT INTO reserva_hotel VALUES(sec_reserva_hotel.nextval,datos_reservacion(TO_DATE('09/09/2019','MM/DD/YYYY'),TO_DATE ('10/09/2019','MM/DD/YYYY'),2000),datos_costo(2320),6,25);
INSERT INTO reserva_automovil VALUES(sec_reserva_automovil.nextval,datos_reservacion(TO_DATE('09/09/2019','MM/DD/YYYY'),TO_DATE ('09/19/2019','MM/DD/YYYY'),1000),datos_costo(1160),6,25);


INSERT INTO reserva VALUES (sec_reserva.nextval, 9280, TO_DATE('11/12/2019','MM/DD/YYYY'),null,7,TO_DATE ('12/12/2019','MM/DD/YYYY'), null);             
INSERT INTO seguro_reserva VALUES(sec_seguro_reserva.nextval,datos_reservacion(TO_DATE('11/12/2019','MM/DD/YYYY'),TO_DATE ('12/12/2019','MM/DD/YYYY'),2000),datos_costo(2320),7,7);
INSERT INTO reserva_hotel VALUES(sec_reserva_hotel.nextval,datos_reservacion(TO_DATE('11/12/2019','MM/DD/YYYY'),TO_DATE ('12/12/2019','MM/DD/YYYY'),3000),datos_costo(3480),7,30);
INSERT INTO reserva_automovil VALUES(sec_reserva_automovil.nextval,datos_reservacion(TO_DATE('11/12/2019','MM/DD/YYYY'),TO_DATE ('12/07/2019','MM/DD/YYYY'),2500),datos_costo(2900),7,30);


INSERT INTO reserva VALUES (sec_reserva.nextval,8074, TO_DATE('10/07/2019','MM/DD/YYYY'),null,8,TO_DATE ('11/01/2019','MM/DD/YYYY'), null);             
INSERT INTO seguro_reserva VALUES(sec_seguro_reserva.nextval,datos_reservacion(TO_DATE('10/07/2019','MM/DD/YYYY'),TO_DATE ('11/01/2019','MM/DD/YYYY'),2000),datos_costo(2320),8,8);
INSERT INTO reserva_hotel VALUES(sec_reserva_hotel.nextval,datos_reservacion(TO_DATE('10/07/2019','MM/DD/YYYY'),TO_DATE ('11/01/2019','MM/DD/YYYY'),2000),datos_costo(2320),8,35);
INSERT INTO reserva_automovil VALUES(sec_reserva_automovil.nextval,datos_reservacion(TO_DATE('10/07/2019','MM/DD/YYYY'),TO_DATE ('11/01/2019','MM/DD/YYYY'),2500),datos_costo(2900),8,35);


INSERT INTO reserva VALUES (sec_reserva.nextval, 9152, TO_DATE('10/22/2019','MM/DD/YYYY'),null,9,TO_DATE ('11/16/2019','MM/DD/YYYY'), null);             
INSERT INTO seguro_reserva VALUES(sec_seguro_reserva.nextval,datos_reservacion(TO_DATE('10/22/2019','MM/DD/YYYY'),TO_DATE ('11/16/2019','MM/DD/YYYY'),2000),datos_costo(2320),9,9);
INSERT INTO reserva_hotel VALUES(sec_reserva_hotel.nextval,datos_reservacion(TO_DATE('10/22/2019','MM/DD/YYYY'),TO_DATE ('11/16/2019','MM/DD/YYYY'),3000),datos_costo(3480),9,40);
INSERT INTO reserva_automovil VALUES(sec_reserva_automovil.nextval,datos_reservacion(TO_DATE('10/22/2019','MM/DD/YYYY'),TO_DATE ('11/16/2019','MM/DD/YYYY'),2500),datos_costo(2900),9,40);


INSERT INTO reserva VALUES (sec_reserva.nextval,5168, TO_DATE('09/15/2019','MM/DD/YYYY'),null,10,TO_DATE ('10/15/2019','MM/DD/YYYY'), null);             
INSERT INTO seguro_reserva VALUES(sec_seguro_reserva.nextval,datos_reservacion( TO_DATE('09/15/2019','MM/DD/YYYY'),TO_DATE ('10/15/2019','MM/DD/YYYY'),1000),datos_costo(1160),10,10);
INSERT INTO reserva_hotel VALUES(sec_reserva_hotel.nextval,datos_reservacion( TO_DATE('09/15/2019','MM/DD/YYYY'),TO_DATE ('10/15/2019','MM/DD/YYYY'),2000),datos_costo(2320),10,45);
INSERT INTO reserva_automovil VALUES(sec_reserva_automovil.nextval,datos_reservacion( TO_DATE('09/15/2019','MM/DD/YYYY'),TO_DATE ('09/25/2019','MM/DD/YYYY'),1000),datos_costo(1160),10,45);


INSERT INTO reserva VALUES (sec_reserva.nextval, 9170, TO_DATE('11/25/2019','MM/DD/YYYY'),null,11,TO_DATE ('12/20/2019','MM/DD/YYYY'), null);             
INSERT INTO seguro_reserva VALUES(sec_seguro_reserva.nextval,datos_reservacion(TO_DATE('11/25/2019','MM/DD/YYYY'),TO_DATE ('12/20/2019','MM/DD/YYYY'),2000),datos_costo(2320),11,11);
INSERT INTO reserva_hotel VALUES(sec_reserva_hotel.nextval,datos_reservacion(TO_DATE('11/25/2019','MM/DD/YYYY'),TO_DATE ('12/20/2019','MM/DD/YYYY'),3000),datos_costo(3480),11,50);
INSERT INTO reserva_automovil VALUES(sec_reserva_automovil.nextval,datos_reservacion(TO_DATE('11/25/2019','MM/DD/YYYY'),TO_DATE ('12/20/2019','MM/DD/YYYY'),2500),datos_costo(2900),11,50);


INSERT INTO reserva VALUES (sec_reserva.nextval, 7900, TO_DATE('09/07/2019','MM/DD/YYYY'),null,12,TO_DATE ('10/02/2019','MM/DD/YYYY'), null);             
INSERT INTO seguro_reserva VALUES(sec_seguro_reserva.nextval,datos_reservacion(TO_DATE('09/07/2019','MM/DD/YYYY'),TO_DATE ('10/02/2019','MM/DD/YYYY'),2000),datos_costo(2320),12,12);
INSERT INTO reserva_hotel VALUES(sec_reserva_hotel.nextval,datos_reservacion(TO_DATE('09/07/2019','MM/DD/YYYY'),TO_DATE ('10/02/2019','MM/DD/YYYY'),2000),datos_costo(2320),12,55);
INSERT INTO reserva_automovil VALUES(sec_reserva_automovil.nextval,datos_reservacion(TO_DATE('09/07/2019','MM/DD/YYYY'),TO_DATE ('10/02/2019','MM/DD/YYYY'),2500),datos_costo(2900),12,55);


INSERT INTO reserva VALUES (sec_reserva.nextval,7505, TO_DATE('09/17/2019','MM/DD/YYYY'),null,13,TO_DATE ('10/12/2019','MM/DD/YYYY'), null);             
INSERT INTO seguro_reserva VALUES(sec_seguro_reserva.nextval,datos_reservacion(TO_DATE('09/17/2019','MM/DD/YYYY'),TO_DATE ('10/12/2019','MM/DD/YYYY'),1500),datos_costo(1740),13,13);
INSERT INTO reserva_hotel VALUES(sec_reserva_hotel.nextval,datos_reservacion(TO_DATE('09/17/2019','MM/DD/YYYY'),TO_DATE ('10/12/2019','MM/DD/YYYY'),2000),datos_costo(2320),13,60);
INSERT INTO reserva_automovil VALUES(sec_reserva_automovil.nextval,datos_reservacion(TO_DATE('09/17/2019','MM/DD/YYYY'),TO_DATE ('10/12/2019','MM/DD/YYYY'),2500),datos_costo(2900),13,60);


INSERT INTO reserva VALUES (sec_reserva.nextval, 9170, TO_DATE('10/03/2019','MM/DD/YYYY'),null,14,TO_DATE ('10/28/2019','MM/DD/YYYY'), null);             
INSERT INTO seguro_reserva VALUES(sec_seguro_reserva.nextval,datos_reservacion(TO_DATE('10/03/2019','MM/DD/YYYY'),TO_DATE ('10/28/2019','MM/DD/YYYY'),2000),datos_costo(2320),14,14);
INSERT INTO reserva_hotel VALUES(sec_reserva_hotel.nextval,datos_reservacion(TO_DATE('10/03/2019','MM/DD/YYYY'),TO_DATE ('10/28/2019','MM/DD/YYYY'),3000),datos_costo(3480),14,65);
INSERT INTO reserva_automovil VALUES(sec_reserva_automovil.nextval,datos_reservacion(TO_DATE('10/03/2019','MM/DD/YYYY'),TO_DATE ('10/28/2019','MM/DD/YYYY'),2500),datos_costo(2900),14,65);


INSERT INTO reserva VALUES (sec_reserva.nextval, 7888, TO_DATE('09/29/2019','MM/DD/YYYY'),null,15,TO_DATE ('10/24/2019','MM/DD/YYYY'), null);             
INSERT INTO seguro_reserva VALUES(sec_seguro_reserva.nextval,datos_reservacion(TO_DATE('09/29/2019','MM/DD/YYYY'),TO_DATE ('10/24/2019','MM/DD/YYYY'),2000),datos_costo(2320),15,15);
INSERT INTO reserva_hotel VALUES(sec_reserva_hotel.nextval,datos_reservacion(TO_DATE('09/29/2019','MM/DD/YYYY'),TO_DATE ('10/24/2019','MM/DD/YYYY'),2000),datos_costo(2320),15,70);
INSERT INTO reserva_automovil VALUES(sec_reserva_automovil.nextval,datos_reservacion(TO_DATE('09/29/2019','MM/DD/YYYY'),TO_DATE ('10/24/2019','MM/DD/YYYY'),2500),datos_costo(2900),15,70);

insert into vuelo_reserva_boleto values (sec_vuelo_reserva_boleto.nextval,1,1,1, 300);
insert into vuelo_reserva_boleto values (sec_vuelo_reserva_boleto.nextval,2,2,1, 400);
insert into vuelo_reserva_boleto values (sec_vuelo_reserva_boleto.nextval,3,3,2, 500);
insert into vuelo_reserva_boleto values (sec_vuelo_reserva_boleto.nextval,4,4,2, 350);
insert into vuelo_reserva_boleto values (sec_vuelo_reserva_boleto.nextval,5,5,4, 420);
insert into vuelo_reserva_boleto values (sec_vuelo_reserva_boleto.nextval,6,6,4, 380);
insert into vuelo_reserva_boleto values (sec_vuelo_reserva_boleto.nextval,7,7,5, 500);
insert into vuelo_reserva_boleto values (sec_vuelo_reserva_boleto.nextval,8,8,5, 460);
insert into vuelo_reserva_boleto values (sec_vuelo_reserva_boleto.nextval,9,9,8, 390);
insert into vuelo_reserva_boleto values (sec_vuelo_reserva_boleto.nextval,10,10,8, 455);
insert into vuelo_reserva_boleto values (sec_vuelo_reserva_boleto.nextval,11,11,11, 405);
insert into vuelo_reserva_boleto values (sec_vuelo_reserva_boleto.nextval,12,12,11, 310);
insert into vuelo_reserva_boleto values (sec_vuelo_reserva_boleto.nextval,13,13,14, 470);
insert into vuelo_reserva_boleto values (sec_vuelo_reserva_boleto.nextval,14,14,14, 405);
insert into vuelo_reserva_boleto values (sec_vuelo_reserva_boleto.nextval,15,15,15, 500);

insert into persona_reserva values (sec_persona_reserva.nextval,1619110632399,1,1);
insert into persona_reserva values (sec_persona_reserva.nextval,1698090515499,2,2);
insert into persona_reserva values (sec_persona_reserva.nextval,1635071984599,3,3);
insert into persona_reserva values (sec_persona_reserva.nextval,1639060841799,4,4);
insert into persona_reserva values (sec_persona_reserva.nextval,1677082180399,5,5);
insert into persona_reserva values (sec_persona_reserva.nextval,1698010218599,6,6);
insert into persona_reserva values (sec_persona_reserva.nextval,1600012352099,7,7);
insert into persona_reserva values (sec_persona_reserva.nextval,1661122154499,8,8);
insert into persona_reserva values (sec_persona_reserva.nextval,1662081866299,9,9);
insert into persona_reserva values (sec_persona_reserva.nextval,1603062361899,10,10);
insert into persona_reserva values (sec_persona_reserva.nextval,1621040408699,11,11);
insert into persona_reserva values (sec_persona_reserva.nextval,1667091626599,12,12);
insert into persona_reserva values (sec_persona_reserva.nextval,1676041614099,13,13);
insert into persona_reserva values (sec_persona_reserva.nextval,1621020501499,14,14);
insert into persona_reserva values (sec_persona_reserva.nextval,1612011989499,15,15);

/*PAGO*/

INSERT INTO pago VALUES  (sec_pago.nextval, 2499, TO_DATE('09/09/2019','MM/DD/YYYY'), 1,6,1, '7328' );
INSERT INTO pago VALUES  (sec_pago.nextval, 2499, TO_DATE('09/09/2019','MM/DD/YYYY'), 1,6,2, '7218' );

INSERT INTO pago VALUES  (sec_pago.nextval, 8004, TO_DATE('10/01/2019','MM/DD/YYYY'), 2,6,1, '1328' );
INSERT INTO pago VALUES  (sec_pago.nextval, 7540, TO_DATE('10/15/2019','MM/DD/YYYY'), 3,6,2, '2328' );

INSERT INTO pago VALUES  (sec_pago.nextval, 9106, TO_DATE('10/12/2019','MM/DD/YYYY'), 4,6,1, '3328' );
INSERT INTO pago VALUES  (sec_pago.nextval, 9187, TO_DATE('10/25/2019','MM/DD/YYYY'), 5,6,2, '4328' );
INSERT INTO pago VALUES  (sec_pago.nextval, 5081, TO_DATE('09/09/2019','MM/DD/YYYY'), 6,6,1, '5328' );
INSERT INTO pago VALUES  (sec_pago.nextval, 9280, TO_DATE('11/12/2019','MM/DD/YYYY'), 7,6,2, '6328' );
INSERT INTO pago VALUES  (sec_pago.nextval, 8074, TO_DATE('10/07/2019','MM/DD/YYYY'), 8,6,1, '8328' );
INSERT INTO pago VALUES  (sec_pago.nextval, 9152, TO_DATE('10/22/2019','MM/DD/YYYY'), 9,6,2, '9328' );
INSERT INTO pago VALUES  (sec_pago.nextval, 5168, TO_DATE('09/15/2019','MM/DD/YYYY'), 10,6,1, '7928' );

INSERT INTO pago VALUES  (sec_pago.nextval, 9170, TO_DATE('11/25/2019','MM/DD/YYYY'), 11,6,2, '7228' );
INSERT INTO pago VALUES  (sec_pago.nextval, 7505, TO_DATE('09/17/2019','MM/DD/YYYY'), 13,6,1, '7328' );
INSERT INTO pago VALUES  (sec_pago.nextval, 9170, TO_DATE('10/03/2019','MM/DD/YYYY'), 14,6,1, '7328' );
INSERT INTO pago VALUES  (sec_pago.nextval, 7800, TO_DATE('09/29/2019','MM/DD/YYYY'), 15,6,1, '7328' );

INSERT INTO REINTEGRO VALUES (sec_reintegro.nextval, 3000, to_date('09/30/2019','MM/DD/YYYY'), 15 );
INSERT INTO REINTEGRO VALUES (sec_reintegro.nextval, 2000, to_date('10/04/2019','MM/DD/YYYY'), 14);
INSERT INTO REINTEGRO VALUES (sec_reintegro.nextval, 3000, to_date('09/20/2019','MM/DD/YYYY'), 13 );


-- INSERTE ESTO ANTES DE CORRER REPORTE 8 --
insert into vuelo values (sec_vuelo.nextval,null,null,12000,TO_TIMESTAMP('07-02-2019 07:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('07-02-2019 12:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,104);
insert into vuelo values (sec_vuelo.nextval,null,null,13000,TO_TIMESTAMP('13-02-2019 07:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('13-02-2019 12:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,104);
insert into vuelo values (sec_vuelo.nextval,null,null,12000,TO_TIMESTAMP('15-02-2019 07:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('15-02-2019 12:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,116);
insert into vuelo values (sec_vuelo.nextval,null,null,13000,TO_TIMESTAMP('16-02-2019 07:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('16-02-2019 12:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,116);
insert into vuelo values (sec_vuelo.nextval,null,null,12000,TO_TIMESTAMP('17-02-2019 07:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('17-02-2019 12:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,116);
insert into vuelo values (sec_vuelo.nextval,null,null,13000,TO_TIMESTAMP('18-02-2019 07:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('18-02-2019 12:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,116);
insert into vuelo values (sec_vuelo.nextval,null,null,12000,TO_TIMESTAMP('19-02-2019 07:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('19-02-2019 12:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,116);
insert into vuelo values (sec_vuelo.nextval,null,null,13000,TO_TIMESTAMP('20-02-2019 07:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('20-02-2019 12:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,116);
insert into vuelo values (sec_vuelo.nextval,null,null,11000,TO_TIMESTAMP('20-02-2019 13:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('20-02-2019 16:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,125); ------ misma aerlinea
insert into vuelo values (sec_vuelo.nextval,null,null,11000,TO_TIMESTAMP('20-02-2019 08:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('20-02-2019 12:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,125); ------
insert into vuelo values (sec_vuelo.nextval,null,null,11300,TO_TIMESTAMP('20-02-2019 08:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('20-02-2019 12:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,127); ------
insert into vuelo values (sec_vuelo.nextval,null,null,13400,TO_TIMESTAMP('20-02-2019 15:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('20-02-2019 20:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,127); ------
insert into vuelo values (sec_vuelo.nextval,null,null,13400,TO_TIMESTAMP('20-02-2019 15:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('20-02-2019 20:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,136); -----x
insert into vuelo values (sec_vuelo.nextval,null,null,13400,TO_TIMESTAMP('21-02-2019 15:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('21-02-2019 20:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,136); -----x
insert into vuelo values (sec_vuelo.nextval,null,null,13400,TO_TIMESTAMP('22-02-2019 15:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('22-02-2019 20:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,136); -----x
insert into vuelo values (sec_vuelo.nextval,null,null,13400,TO_TIMESTAMP('22-02-2019 15:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('22-02-2019 20:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,140); -----y
insert into vuelo values (sec_vuelo.nextval,null,null,13400,TO_TIMESTAMP('21-02-2019 15:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('21-02-2019 20:14:00', 'DD-MM-YYYY HH24:MI:SS'),4,140); -----y

update status_vuelo set fk_status = 8 where fk_vuelo in (3,4,5,18,20,26);
update status_vuelo set fk_status = 9 where fk_vuelo in (6,7,9,10,17,21,28);
update status_vuelo set fk_status = 10 where fk_vuelo in (11,12,13,16,24,30);

