create or replace type datos_costo as object (
precio number,
static function calcular_conversion(precio number,divisa varchar2) return number,
static function calcular_costo(precio number) return number
);
/
create or replace type body datos_costo as 
static function calcular_conversion(precio number,divisa varchar2) return number 
is
total number:=precio;
begin
    if (divisa='dolar')then
    total:=precio;
    else if(divisa='euro')then
    total:=precio*1.6;
    end if;
    end if;
    return total;
end;
------------------------------------------------------------------------------------------------------------
static function calcular_costo(precio number) return number
is
total number:=precio;
begin
    total:= (total*0.16)+total;
    return total;
end;
end;
/
create or replace type datos_reservacion as object (
fecha_inicio date,
fecha_fin date,
precio number,
static function calcular_duracion(fecha_inicio date,fecha_fin date) return number,
static function calcular_costo(precio number,fecha_inicio date,fecha_fin date) return number
);
/
create or replace type body datos_reservacion as 
    static function calcular_duracion(fecha_inicio date,fecha_fin date) return number
    is
    d number;
    begin
        select to_date(fecha_fin,'DD/MM/YYYY')- to_date(fecha_inicio,'DD/MM/YYYY') as diferencia_dias
        into d from dual;
        return d;
    end;
--------------------------------------------------------------------------------------------------------------    
     static function calcular_costo(precio number,fecha_inicio date,fecha_fin date) return number
    is
    dias number;
    total number;
    begin
        dias:=calcular_duracion(fecha_inicio,fecha_fin);
        total:=precio*dias;
        return total;
    end;
    end;
/
create or replace type datos_info as object (
nombre varchar2(30),
descripcion varchar2(300),
foto blob 
);
/
create table lugar (
  codigo number,
  nombre varchar2 (30) not null,
  tipo varchar2 (30) not null,
  altitud varchar2(30),
  longitud varchar2(30),
  fk_lugar number,
  constraint pk_lugar primary key (codigo),
  constraint fk_lugar_lugar foreign key (fk_lugar)
  references lugar (codigo) on delete cascade
);

create table ruta (
	codigo number,
	millas number not null,
	fk_lugar_salida number not null,
	fk_lugar_llegada number not null,
	directo number not null,
	constraint pk_ruta primary key (codigo),
 	constraint fk_lugar_salida_ruta foreign key (fk_lugar_salida)
	references lugar (codigo) on delete cascade,
	constraint fk_lugar_llegada_ruta foreign key (fk_lugar_llegada)
	references lugar (codigo) on delete cascade
	
);

create table persona(
	cedula number not null,
	nombre varchar2(30) not null,
	segundo_nombre varchar2(30),
	apellido varchar2(30) not null,
	segundo_apellido varchar2(30),
	fecha_nacimiento date not null,
	constraint pk_persona primary key (cedula)
);

create table usuario (
	codigo number,
	correo varchar2(40) unique,
	numero_telefono number not null,
	foto BLOB default EMPTY_BLOB(), 
	socio_club_de_millas number,
	fk_persona number,
	constraint pk_usuario primary key (codigo),
 	constraint fk_persona_usuario foreign key (fk_persona) 
	references persona (cedula) on delete cascade
);

create table promocion (
	codigo number,
	porcentaje number not null,
	descripcion varchar2(50),  
	nombre varchar2(30),
	constraint pk_promocion primary key (codigo)
);

create table reserva (
	codigo number,
	precio_total number not null,
	fecha date not null,
	fk_promocion number,
	fk_usuario number not null,
	fecha_salida date not null,
	fecha_regreso date,
	constraint pk_reserva primary key (codigo),
	constraint fk_promocion_reserva foreign key (fk_promocion) 
	references promocion (codigo) on delete cascade,
	constraint fk_usuario_reserva foreign key (fk_usuario) 
	references usuario (codigo) on delete cascade
);

create table reintegro (
	codigo number,
	cantidad number not null,
	fecha_reintegro date not null,
	fk_reserva number not null,
	constraint pk_reintegro primary key (codigo),
	constraint fk_reserva_reintegro foreign key (fk_reserva) 
	references reserva (codigo) on delete cascade
);

create table status (
	codigo number,
	nombre varchar2 (30) not null,
	descripcion varchar2(50) ,
	constraint pk_status primary key (codigo)
);

create table tipo_clase (
	codigo number ,
	nombre varchar2(30) not null,
	constraint pk_tipo_clase primary key (codigo)
);

create table aerolinea (
	codigo number,
	datos_aerolinea datos_info,
	fk_tipo_clase number not null,
	constraint pk_aerolinea primary key (codigo),
 	constraint fk_tipo_clase_aerolinea foreign key (fk_tipo_clase) 
	references tipo_clase (codigo) on delete cascade
);

create table flota (
	codigo number,
	nombre varchar2(30) not null,
	fk_aerolinea number not null,
	constraint pk_flota primary key (codigo),
 	constraint fk_aerolinea_flota foreign key (fk_aerolinea) 
	references aerolinea (codigo) on delete cascade
);

create table modelo (
	codigo number,
	datos_modelo datos_info,
	velocidad_maxima varchar2(30) not null,
	alcance varchar2(30) not null,
	altitud_maxima varchar2(30) not null,
	envergadura varchar2(30)  not null,
	ancho_interior_cabina varchar2(30)  not null,
	altura_interior_cabina varchar2(30)  not null,
	fk_flota number not null,
	constraint pk_modelo primary key (codigo),
 	constraint fk_flota_modelo foreign key (fk_flota) 
	references flota (codigo) on delete cascade
);
create table modelo_clase(
	codigo number,
	porcentaje number not null,
	fk_modelo number not null,
	fk_tipo_clase number,
	constraint pk_modelo_clase primary key (codigo),	
	constraint fk_modelo_modelo_clase foreign key (fk_modelo) 
	references modelo (codigo) on delete cascade,
 	constraint fk_tipo_clase_modelo_clase foreign key (fk_tipo_clase) 
	references tipo_clase (codigo) on delete cascade
);

create table avion(
	codigo number,
	nombre varchar2(30) not null,
	observacion varchar2(50) not null,
	fk_status number not null,
	constraint pk_avion primary key (codigo),	
	constraint fk_status_avion foreign key (fk_status) 
	references status (codigo) on delete cascade
);

create table modelo_clase_avion(
	codigo number,
	fk_modelo_clase number not null,
	fk_avion number,
	constraint pk_modelo_clase_avion primary key (codigo),	
	constraint fk_modelo_clase_modelo_clase_avion foreign key (fk_modelo_clase) 
	references modelo_clase (codigo) on delete cascade,
 	constraint fk_avion_modelo_clase_avion foreign key (fk_avion) 
	references avion (codigo) on delete cascade
);
create table escala (
	codigo number,
	fk_ruta_final number not null,
	fk_ruta_propia number not null,
	constraint pk_escala primary key (codigo),	
	constraint fk_ruta_final_escala foreign key (fk_ruta_final) 
	references ruta (codigo) on delete cascade,
 	constraint fk_ruta_propia_escala  foreign key (fk_ruta_propia) 
	references ruta (codigo) on delete cascade
);
create table vuelo (
	codigo number,
	fecha_salida timestamp,
	fecha_llegada timestamp,
	costo number not null,
	fecha_estimada_salida timestamp not null,
	fecha_estimada_llegada timestamp not null,
	fk_escala number not null,
	fk_avion number not null,
	constraint pk_vuelo primary key (codigo),	
	constraint fk_avion_vuelo foreign key (fk_avion) 
	references avion (codigo) on delete cascade,
	constraint fk_escala_vuelo foreign key (fk_escala) 
	references escala (codigo) on delete cascade
);

create table status_vuelo(
	codigo number,
	fecha date not null,
	fk_vuelo number not null,
	fk_status number not null,
	constraint pk_status_vuelo primary key (codigo),	
	constraint fk_vuelo_status_vuelo foreign key (fk_vuelo) 
	references vuelo (codigo) on delete cascade,
	constraint fk_status_status_vuelo foreign key (fk_status) 
	references status (codigo) on delete cascade
);

create table asiento (
	codigo number,
	numero varchar2(30) not null,
	fk_modelo_clase_avion number not null,
	constraint pk_asiento primary key (codigo),
	constraint fk_modelo_clase_asiento foreign key (fk_modelo_clase_avion) 
	references modelo_clase_avion (codigo) on delete cascade
);

create table status_asiento(
	codigo number,
	fk_asiento number not null,
	fk_status number not null,
	fk_vuelo number not null,
	constraint pk_status_asiento primary key (codigo),
	constraint fk_asiento_status_asiento foreign key (fk_asiento) 
	references asiento (codigo) on delete cascade,
	constraint fk_status_status_asiento foreign key (fk_status) 
	references status (codigo) on delete cascade,
	constraint fk_vuelo_status_asiento foreign key (fk_vuelo) 
	references vuelo (codigo) on delete cascade
);


create table vuelo_reserva_boleto(
	codigo number,
	fk_vuelo number not null,
	fk_reserva number not null,
	fk_ruta number not null,
	costo number not null,
	constraint pk_vuelo_reserva_boleto primary key (codigo),
 	constraint fk_vuelo_vuelo_reserva_boleto foreign key (fk_vuelo) 
	references vuelo (codigo) on delete cascade,
 	constraint fk_reserva_vuelo_reserva_boleto foreign key (fk_reserva) 
	references reserva (codigo) on delete cascade,
	constraint fk_ruta_vuelo_reserva_boleto foreign key (fk_ruta) 
	references ruta (codigo) on delete cascade
);

create table persona_reserva (
	codigo number,
	fk_persona number not null,
	fk_asiento number not null,
	fk_vuelo_reserva_boleto number not null,
	constraint pk_persona_reserva primary key (codigo),
 	constraint fk_persona_persona_reserva foreign key (fk_persona) 
	references persona (cedula) on delete cascade,
 	constraint fk_asiento_persona_reserva foreign key (fk_asiento) 
	references asiento (codigo) on delete cascade,
	constraint fk_vuelo_reserva_boleto_persona_reserva foreign key (fk_vuelo_reserva_boleto) 
	references vuelo_reserva_boleto (codigo) on delete cascade
);


create table aseguradora (
	codigo number,
	datos_aseguradora datos_info,
	constraint pk_aseguradora primary key (codigo)
);

create table seguro (
	codigo number,
	nombre varchar2(50) not null,
	cantidad_personas number not null,
	precio number not null,
	fk_aseguradora number not null,
	constraint pk_seguro primary key (codigo),
 	constraint fk_seguro_aseguradora foreign key (fk_aseguradora) 
	references aseguradora (codigo) on delete cascade
);

create table seguro_reserva(
	codigo number,
	reserva_seguro datos_reservacion not null,
	costo_seguro datos_costo not null,
	fk_seguro number not null,
	fk_reserva number not null,
	constraint pk_seguro_reserva primary key (codigo),
 	constraint fk_seguro_seguro_reserva foreign key (fk_seguro) 
	references seguro (codigo) on delete cascade,
 	constraint fk_reserva_seguro_reserva foreign key (fk_reserva) 
	references reserva (codigo) on delete cascade
);

create table proveedor (
	codigo number,
	datos_proveedor datos_info not null,
	constraint pk_proveedor primary key (codigo)
);

create table proveedor_lugar(
	codigo number,
	fk_proveedor number not null,
	fk_lugar number not null,
	constraint pk_proveedor_lugar primary key (codigo),
	constraint fk_proveedor_proveedor_lugar foreign key (fk_proveedor) 
	references proveedor (codigo) on delete cascade,
	constraint fk_lugar_proveedor foreign key (fk_lugar) 
	references lugar (codigo) on delete cascade
);

create table automovil (
	codigo number,
	marca varchar2(30) not null,
	modelo varchar2(30) not null,
	foto blob default EMPTY_BLOB(),
	precio_por_dia number not null,
	fk_proveedor_lugar number not null,
	fk_status number not null,
	constraint pk_automovil primary key (codigo),
	constraint fk_proveedor_lugar_automovil foreign key (fk_proveedor_lugar) 
	references proveedor_lugar (codigo) on delete cascade,
	constraint fk_status_automovil foreign key (fk_status) 
	references status (codigo) on delete cascade
);

create table reserva_automovil (
	codigo number,
	reserva_auto datos_reservacion not null,
	costo_automovil datos_costo not null,
	fk_reserva number not null,
	fk_automovil number not null,
	constraint pk_reserva_automovil primary key (codigo),
	constraint fk_reserva_reserva_automovil foreign key (fk_reserva) 
	references reserva (codigo) on delete cascade,
	constraint fk_automovil_reserva_automovil foreign key (fk_automovil) 
	references automovil (codigo) on delete cascade
);

create table hotel (
	codigo number,
	datos_hotel datos_info not null,
	puntuacion number not null,
	fk_lugar number not null,
	constraint pk_hotel primary key (codigo),
	constraint fk_lugar_hotel foreign key (fk_lugar) 
	references lugar (codigo) on delete cascade
);

create table habitacion (
	codigo number,
	foto blob default EMPTY_BLOB(),
	tipo varchar2(30) not null,
	descripcion varchar2(60) not null,
	precio_por_dia number not null,
	capacidad number not null,
	fk_hotel number not null,
	fk_status number not null,
	constraint pk_habitacion primary key (codigo),
	constraint fk_hotel_habitacion foreign key (fk_hotel) 
	references hotel (codigo) on delete cascade,
	constraint fk_status_habitacion foreign key (fk_status) 
	references status (codigo) on delete cascade
);

create table huesped (
	codigo number,
	tipo varchar2(30) not null,
	constraint pk_huesped primary key (codigo)
);

create table habitacion_huesped (
	codigo number,
	cantidad number not null,
	fk_habitacion number not null,
	fk_huesped number not null,
	constraint pk_habitacion_huesped primary key (codigo),
	constraint fk_habitacion_habitacion_huesped foreign key (fk_habitacion) 
	references habitacion (codigo) on delete cascade,
	constraint fk_huesped_habitacion_huesped foreign key (fk_huesped) 
	references huesped (codigo) on delete cascade
);

create table reserva_hotel (
	codigo number,
	reserva_hotel datos_reservacion not null,
	costo_hotel datos_costo not null,
	fk_reserva number not null,
	fk_habitacion number not null,
	constraint pk_reserva_hotel primary key (codigo),
	constraint fk_reserva_reserva_hotel foreign key (fk_reserva) 
	references reserva (codigo) on delete cascade,
	constraint fk_habitacion_reserva_hotel foreign key (fk_habitacion) 
	references habitacion (codigo) on delete cascade
);
create table tipo_pago (
	codigo number, 
	nombre varchar2(30) not null,
	constraint pk_tipo_pago primary key (codigo)
);
/
create table pago (
	codigo number,
	monto_pagado number not null,
	fecha_pago date not null,
    fk_reserva number not null,
	fk_status number not null,
	fk_tipo_pago number not null,
	descripcion varchar2(200),
	constraint pk_pago primary key (codigo),
	constraint fk_status_pago foreign key (fk_status) 
	references status (codigo) on delete cascade,
    constraint fk_reserva_pago foreign key (fk_reserva)
    references reserva(codigo) on delete cascade,
	constraint fk_tipo_pago foreign key (fk_tipo_pago) 
	references tipo_pago (codigo) on delete cascade
);


/

/* SECUENCIAS*/
 
 create sequence sec_Tipo_clase
 start with 1
 increment by 1;
  
 create sequence sec_aerolinea
 start with 1
 increment by 1;
 
 create sequence sec_flota
 start with 1
 increment by 1;
 
 create sequence sec_aseguradora
 start with 1
 increment by 1;
 
 create sequence sec_seguro
 start with 1
 increment by 1;
 
 create sequence sec_usuario
 start with 1
 increment by 1;
 
 create sequence sec_seguro_reserva
 start with 1
 increment by 1;
 
  create sequence sec_persona_reserva
 start with 1
 increment by 1;
 
  create sequence sec_reserva
 start with 1
 increment by 1;
 
  create sequence sec_pago
 start with 1
 increment by 1;
 
 /* create sequence sec_registro_pago
 start with 1
 increment by 1;*/
 
  create sequence sec_tipo_pago
 start with 1
 increment by 1;
 
  create sequence sec_asiento
 start with 1
 increment by 1;
 
  create sequence sec_reintegro
 start with 1
 increment by 1;
 
  create sequence sec_modelo_clase
 start with 1
 increment by 1;
 
   create sequence sec_modelo
 start with 1
 increment by 1;
 
  create sequence sec_avion
 start with 1
 increment by 1;
   create sequence sec_vuelo
 start with 1
 increment by 1;
  create sequence sec_vuelo_reserva_boleto
 start with 1
 increment by 1;
 
  create sequence sec_promocion
 start with 1
 increment by 1;
 
  create sequence sec_reserva_hotel
 start with 1
 increment by 1;
 
  create sequence sec_hotel
 start with 1
 increment by 1;
 
  create sequence sec_reserva_automovil
 start with 1
 increment by 1;
 
  create sequence sec_automovil
  start with 1
  increment by 1;
  
   create sequence sec_status_vuelo
 start with 1
 increment by 1;
 
  create sequence sec_ruta
 start with 1
 increment by 1;
 
  create sequence sec_lugar
 start with 1
 increment by 1;
 
  create sequence sec_habitacion
 start with 1
 increment by 1;
 
  create sequence sec_habitacion_huesped
 start with 1
 increment by 1;
 
  create sequence sec_huesped
 start with 1
 increment by 1;
 
  create sequence sec_proveedor
 start with 1
 increment by 1;
 
  create sequence sec_proveedor_lugar
 start with 1
 increment by 1;
 
  create sequence sec_status
 start with 1
 increment by 1;
 
  create sequence sec_status_asiento
 start with 1
 increment by 1;
 
 create sequence sec_modelo_clase_avion
 start with 1
 increment by 1;
 create sequence sec_escala
 start with 1
 increment by 1;

/* VISTAS */
create or replace view vista_hoteles as(
	select h.codigo codigo, h.datos_hotel.nombre nombre,
		   h.datos_hotel.descripcion descripcion, h.puntuacion puntuacion, h.fk_lugar lugar
		   from hotel h
);
/
create or replace view vista_aerolineas as (
   select ae.codigo codigo, ae.datos_aerolinea.nombre nombre,
          ae.datos_aerolinea.descripcion descripcion, ae.fk_tipo_clase tipo
   from aerolinea ae
);
/
create or replace view vista_modelo as (
   select m.codigo codigo, m.datos_modelo.nombre nombre,
          m.datos_modelo.descripcion descripcion, m.velocidad_maxima velocidad,
          m.alcance alcance, m.altitud_maxima altitud, m.envergadura envergadura, 
          m.ancho_interior_cabina ancho, m.altura_interior_cabina  altura, 
          m.fk_flota  flota
   from modelo m
);
/
create or replace view vista_aseguradoras as (
   select a.codigo codigo, a.datos_aseguradora.nombre nombre,
          a.datos_aseguradora.descripcion descripcion
   from aseguradora a
);
/
 create or replace view vista_usuarios as (
    select codigo, correo, numero_telefono, socio_club_de_millas, fk_persona  from usuario
);
/

create or replace view vista_proveedores as (
   select p.codigo codigo, p.datos_proveedor.nombre nombre,
          p.datos_proveedor.descripcion descripcion
   from proveedor p
);
/
 create or replace view vista_automoviles as (
    select codigo,marca, modelo, precio_por_dia, fk_proveedor_lugar,fk_status  from automovil
);
/
 create or replace view vista_habitaciones as (
    select codigo,tipo,descripcion, precio_por_dia,capacidad,fk_hotel,fk_status  from habitacion
);
 
  
/*TRIGGERS*/
CREATE OR REPLACE TRIGGER trigger_aerolinea
INSTEAD OF INSERT ON vista_aerolineas
FOR EACH ROW 
DECLARE 
v_blob BLOB;
v_bfile BFILE;
BEGIN
    INSERT INTO aerolinea a (codigo, datos_aerolinea, fk_tipo_clase) VALUES (:new.codigo, datos_info(:new.nombre, :new.descripcion,EMPTY_BLOB()), :new.tipo)  
    RETURNING a.datos_aerolinea.foto INTO v_blob;
    v_bfile:=BFILENAME('DIR_IMG', :new.nombre||'.png');
    DBMS_LOB.OPEN(v_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(v_blob, v_bfile, DBMS_LOB.GETLENGTH(v_bfile));
    DBMS_LOB.CLOSE(v_bfile);
END;
/

CREATE OR REPLACE TRIGGER trigger_modelo
INSTEAD OF INSERT ON vista_modelo
FOR EACH ROW 
DECLARE 
v_blob BLOB;
v_bfile BFILE;
BEGIN
    INSERT INTO modelo m (codigo, datos_modelo,velocidad_maxima, 
    alcance,altitud_maxima, envergadura, ancho_interior_cabina, 
    altura_interior_cabina, fk_flota )
    VALUES (:new.codigo, datos_info(:new.nombre, :new.descripcion,EMPTY_BLOB()), :new.velocidad, :new.alcance, :new.altitud,
    :new.envergadura, :new.ancho, :new.altura,  :new.flota)  
    RETURNING m.datos_modelo.foto INTO v_blob;
    v_bfile:=BFILENAME('DIR_IMG', :new.nombre||'.jpg');
    DBMS_LOB.OPEN(v_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(v_blob, v_bfile, DBMS_LOB.GETLENGTH(v_bfile));
    DBMS_LOB.CLOSE(v_bfile);
END;
/
CREATE OR REPLACE TRIGGER trigger_aseguradora
INSTEAD OF INSERT ON vista_aseguradoras
FOR EACH ROW 
DECLARE 
v_blob BLOB;
v_bfile BFILE;
BEGIN
    INSERT INTO aseguradora a (codigo, datos_aseguradora) VALUES (:new.codigo, datos_info(:new.nombre, :new.descripcion,EMPTY_BLOB()))  
    RETURNING a.datos_aseguradora.foto INTO v_blob;
    v_bfile:=BFILENAME('DIR_IMG', :new.nombre||'.png');
    DBMS_LOB.OPEN(v_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(v_blob, v_bfile, DBMS_LOB.GETLENGTH(v_bfile));
    DBMS_LOB.CLOSE(v_bfile);
END;
/
CREATE OR REPLACE TRIGGER trigger_usuario
INSTEAD OF INSERT ON vista_usuarios
FOR EACH ROW 
DECLARE 
v_blob BLOB;
v_bfile BFILE;
BEGIN
    INSERT INTO usuario (codigo, correo, numero_telefono, foto, socio_club_de_millas, fk_persona) 
    VALUES (:new.codigo, :new.correo,:new.numero_telefono, EMPTY_BLOB(), :new.socio_club_de_millas, :new.fk_persona)  
    RETURNING foto INTO v_blob;
    v_bfile:=BFILENAME('DIR_IMG', :new.correo||'.jpg');
    DBMS_LOB.OPEN(v_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(v_blob, v_bfile, DBMS_LOB.GETLENGTH(v_bfile));
    DBMS_LOB.CLOSE(v_bfile);
END;
/
CREATE OR REPLACE TRIGGER trigger_proveedor
INSTEAD OF INSERT ON vista_proveedores
FOR EACH ROW 
DECLARE 
v_blob BLOB;
v_bfile BFILE;
BEGIN
    INSERT INTO proveedor a (codigo, datos_proveedor) VALUES (:new.codigo, datos_info(:new.nombre, :new.descripcion,EMPTY_BLOB()))  
    RETURNING a.datos_proveedor.foto INTO v_blob;
    v_bfile:=BFILENAME('DIR_IMG', :new.nombre||'.png');
    DBMS_LOB.OPEN(v_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(v_blob, v_bfile, DBMS_LOB.GETLENGTH(v_bfile));
    DBMS_LOB.CLOSE(v_bfile);
END;
/

CREATE OR REPLACE TRIGGER trigger_hotel
INSTEAD OF INSERT ON vista_hoteles
FOR EACH ROW 
DECLARE 
v_blob BLOB;
v_bfile BFILE;
BEGIN
    INSERT INTO hotel a (codigo, datos_hotel,puntuacion,fk_lugar) VALUES (:new.codigo, datos_info(:new.nombre, :new.descripcion,EMPTY_BLOB()),:new.puntuacion,:new.lugar)  
    RETURNING a.datos_hotel.foto INTO v_blob;
    v_bfile:=BFILENAME('DIR_IMG', :new.nombre||'.jpg');
    DBMS_LOB.OPEN(v_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(v_blob, v_bfile, DBMS_LOB.GETLENGTH(v_bfile));
    DBMS_LOB.CLOSE(v_bfile);
END;

/


CREATE OR REPLACE TRIGGER trigger_automovil
INSTEAD OF INSERT ON vista_automoviles
FOR EACH ROW 
DECLARE 
v_blob BLOB;
v_bfile BFILE;
BEGIN
    INSERT INTO automovil (codigo, marca, modelo, foto, precio_por_dia,fk_proveedor_lugar,fk_status) 
    VALUES (:new.codigo, :new.marca,:new.modelo, EMPTY_BLOB(), :new.precio_por_dia, :new.fk_proveedor_lugar,:new.fk_status)  
    RETURNING foto INTO v_blob;
    v_bfile:=BFILENAME('DIR_IMG', :new.modelo||'.jpg');
    DBMS_LOB.OPEN(v_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(v_blob, v_bfile, DBMS_LOB.GETLENGTH(v_bfile));
    DBMS_LOB.CLOSE(v_bfile);
END;
/

CREATE OR REPLACE TRIGGER insertar_asientos
AFTER INSERT ON modelo_clase_avion
FOR EACH ROW 
DECLARE 
    i number:=1;
    clase number:=0;
BEGIN
   SELECT fk_tipo_clase INTO clase FROM modelo_clase WHERE codigo =:new.fk_modelo_clase;
   CASE ( :new.fk_modelo_clase)
       When 1 Then  i:=16;
       When 2 Then  i:=24;
       When 3 Then  i:=126;
       When 4 Then  i:=16;
       When 5 Then  i:=144;
       When 6 Then  i:=16;
	   When 7 Then  i:=138;
       When 8 Then  i:=12;
       When 9 Then  i:=112;
       When 10 Then  i:=10;
       When 11 Then  i:=84;
       When 12 Then  i:=12;
	   When 13 Then  i:=88;
       Else i:=0 ;
   END CASE;
   if (i=0) then 
        CASE (clase)
           When 4 Then  SELECT  ROUND(DBMS_RANDOM.VALUE(15,20))  INTO i FROM dual;
           When 5 Then  SELECT  ROUND(DBMS_RANDOM.VALUE(21,40))  INTO i FROM dual;
           When 6 Then  SELECT  ROUND(DBMS_RANDOM.VALUE(41,120)) INTO i FROM dual;
           When 7 Then  SELECT  ROUND(DBMS_RANDOM.VALUE(50,110)) INTO i FROM dual;
           ELSE i:=0;
           END CASE;
    end if;
    
    WHILE (i<>0)
   LOOP
       INSERT INTO asiento (codigo,numero,fk_modelo_clase_avion) VALUES (sec_asiento.nextval,'AA-'||sec_asiento.nextval,:new.codigo);
       i:= i-1;
   END LOOP;
END;

/

CREATE OR REPLACE TRIGGER verificar_fechas
BEFORE INSERT  ON reserva
FOR EACH ROW 
DECLARE 

BEGIN
    IF (:new.fecha > :new.fecha_salida) THEN
        RAISE_APPLICATION_ERROR(-2000, 'La fecha de la reserva debe ser menor a la fecha de salida');
    END IF;
    IF ( :new.fecha_salida is not null) THEN
        IF (:new.fecha_regreso < :new.fecha_salida) THEN 
            RAISE_APPLICATION_ERROR(-2001, 'La fecha de la reserva debe ser menor a la fecha de salida');
        END IF;
    END IF;
END;
/
CREATE OR REPLACE TRIGGER trigger_habitacion
INSTEAD OF INSERT ON vista_habitaciones
FOR EACH ROW 
DECLARE 
v_blob BLOB;
v_bfile BFILE;
BEGIN
    INSERT INTO habitacion (codigo,foto,tipo,descripcion, precio_por_dia,capacidad,fk_hotel,fk_status) 
    VALUES (:new.codigo,EMPTY_BLOB(),:new.tipo,:new.descripcion, :new.precio_por_dia, :new.capacidad,:new.fk_hotel,:new.fk_status)  
    RETURNING foto INTO v_blob;
    v_bfile:=BFILENAME('DIR_IMG','h'||:new.codigo||'.jpg');
    DBMS_LOB.OPEN(v_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(v_blob, v_bfile, DBMS_LOB.GETLENGTH(v_bfile));
    DBMS_LOB.CLOSE(v_bfile);
END;
/
CREATE OR REPLACE TRIGGER insertar_habitaciones
AFTER INSERT ON hotel
FOR EACH ROW 
DECLARE  
	type tipos is varray(3) of habitacion.tipo%type;
    tipo tipos:=tipos();
	i number;
	precio number;
	cantidad number;
    capacidad number;
BEGIN  
        tipo.extend(3);
		tipo(1):= 'queen';
		tipo(2):= 'king';
		tipo(3):= 'presidencial';
		
	   SELECT  ROUND(DBMS_RANDOM.VALUE(1,3))  INTO i FROM dual;
	   SELECT  ROUND(DBMS_RANDOM.VALUE(100,500))  INTO precio FROM dual;
	   SELECT  ROUND(DBMS_RANDOM.VALUE(3,6))  INTO capacidad FROM dual;
       INSERT INTO vista_habitaciones VALUES (sec_habitacion.nextval,tipo(i),'con balcon',precio,capacidad,:new.codigo,1);
	   
	   SELECT  ROUND(DBMS_RANDOM.VALUE(1,3))  INTO i FROM dual;
	   SELECT  ROUND(DBMS_RANDOM.VALUE(100,500))  INTO precio FROM dual;
	   SELECT  ROUND(DBMS_RANDOM.VALUE(3,6))  INTO capacidad FROM dual;
	   INSERT INTO vista_habitaciones VALUES (sec_habitacion.nextval,tipo(i),'con jacuzzi',precio,capacidad,:new.codigo,1);
END;
/
create or replace trigger trigger_status_asiento_vuelo 
after insert on vuelo
for each row
declare
   cursor asientos is
        select codigo from asiento where fk_modelo_clase_avion in
            (select codigo 
            from modelo_clase_avion 
            where fk_modelo_clase in (select fk_modelo_clase from modelo_clase_avion where fk_avion =:new.fk_avion)
            and fk_avion=:new.fk_avion);
            
            asi asiento.codigo%type;
		
begin
	insert into status_vuelo values (sec_status_vuelo.nextval, :new.fecha_estimada_salida-10, :new.codigo, 7);
    open asientos;
    fetch asientos into asi;
    while (asientos%found) loop
        insert into status_asiento values (sec_status_asiento.nextval,asi,1,:new.codigo);
    fetch asientos into asi;
    end loop;
    close asientos;
end;
/

create or replace procedure insertarEscalasDirectas is 
cursor rutas is
select codigo,directo from ruta;
r_codigo ruta.codigo%type;
r_directo ruta.directo%type;
begin
    open rutas;
    fetch rutas into r_codigo,r_directo;
    while (rutas%found) loop
        if (r_directo=1) then
            insert into escala values (sec_escala.nextval,r_codigo,r_codigo);
        end if;
        fetch rutas into r_codigo,r_directo;
    end loop;
    close rutas;
end;

/
create or replace procedure insertarEscala  is
cursor rutas is
select * from ruta;
r_codigo ruta.codigo%type;
r_millas ruta.millas%type;
r_fk_lugar_salida  ruta.fk_lugar_salida%type;
r_fk_lugar_llegada ruta.fk_lugar_llegada%type;
r_directo          ruta.directo%type;
ruta1              ruta.codigo%type;
ruta2              ruta.codigo%type;
m1                 ruta.millas%type;
cont1              number;
cont2              number;
  i number :=1;
begin
    open rutas;
    fetch rutas into r_codigo, r_millas,r_fk_lugar_salida,r_fk_lugar_llegada ,r_directo;
    while (rutas%found)
    loop
        if (r_directo =0) then
            select count (tabla1.s), count(tabla1.l)  into cont1, cont2
            from (select tabla.salida s, r.codigo l 
                 from ruta r, (select ru.codigo salida , ru.fk_lugar_llegada llegada
                               from ruta ru
                               where ru.fk_lugar_salida = r_fk_lugar_salida
                               and  ru.fk_lugar_llegada !=r_fk_lugar_llegada
                               and ru.directo = 1) tabla
                 where r.fk_lugar_salida = tabla.llegada
                 and   r.fk_lugar_llegada = r_fk_lugar_llegada
                 and   r.directo=1
                 and ROWNUM <= 1) tabla1;
        
        if ((cont1=0) or(cont2 =0)) then
             insert into ruta values (sec_ruta.nextval, r_millas, r_fk_lugar_salida, r_fk_lugar_llegada, 1);
        else
               select tabla.salida s, r.codigo l   into ruta1, ruta2
                 from ruta r, (select ru.codigo salida , ru.fk_lugar_llegada llegada
                               from ruta ru
                               where ru.fk_lugar_salida = r_fk_lugar_salida
                               and  ru.fk_lugar_llegada !=r_fk_lugar_llegada
                               and ru.directo = 1) tabla
                 where r.fk_lugar_salida = tabla.llegada
                 and   r.fk_lugar_llegada = r_fk_lugar_llegada
                 and   r.directo=1
                 and ROWNUM <= 1;
                 
               insert into escala values (sec_escala.nextval, r_codigo, ruta1);
               insert into escala values (sec_escala.nextval, r_codigo, ruta2); 
        end if;
        end if;
        fetch rutas into r_codigo, r_millas,r_fk_lugar_salida,r_fk_lugar_llegada ,r_directo;  
    end loop;
    close rutas;
    insertarEscalasDirectas;
end;
/
--TRIGGER PARA SUMAR COSTO DEL SEGURO DE VIAJE A LA RESERVA--
create or replace trigger trigger_sumar_seguro_reserva
after update on seguro_reserva
for each row
declare
  
begin
	update reserva set precio_total= precio_total + (:new.costo_seguro.precio) where codigo = :old.fk_reserva;
end;
/
create or replace trigger trigger_sumar_hotel_reserva
after update on reserva_hotel
for each row
declare
begin
	update reserva set precio_total= precio_total + (:new.costo_hotel.precio) where codigo = :old.fk_reserva;
end;
/
create or replace trigger trigger_sumar_automovil_reserva
after update on reserva_automovil
for each row
declare
begin
	update reserva set precio_total= precio_total + (:new.costo_automovil.precio) where codigo = :old.fk_reserva;
end;
/
create or replace trigger trigger_reserva_automovil
after insert on reserva_automovil
for each row
declare 
precio_auto number;
begin
   update automovil set fk_status=5 where codigo = :new.fk_automovil; 
end;
/
create or replace trigger trigger_status_habitacion
after insert on reserva_hotel
for each row
declare 
begin
   update habitacion set fk_status=5 where codigo = :new.fk_habitacion; 
end;

/

create or replace trigger cambiarStatusAsiento 
after insert on persona_reserva
for each row
declare
vuelo_cod vuelo.codigo%type;
begin
    select b.fk_vuelo into vuelo_cod from vuelo_reserva_boleto b
    where b.codigo=:new.fk_vuelo_reserva_boleto;
   update status_asiento set fk_status=5 where fk_asiento=:new.fk_asiento;
end;

/
create or replace trigger trigger_status_habitacion
after insert on reserva_hotel
for each row
declare 
begin
   update habitacion set fk_status=5 where codigo = :new.fk_habitacion; 
end;

/
create or replace trigger trigger_reintegro
after insert on reintegro
for each row
declare

cursor au is select ra.fk_automovil from reserva_automovil ra where ra.fk_reserva=:new.fk_reserva;
cod_auto automovil.codigo%type;

cursor ha is select h.fk_habitacion from reserva_hotel h where h.fk_reserva=:new.fk_reserva;
cod_hab habitacion.codigo%type;

cursor asi is select v.fk_vuelo,pr.fk_asiento from vuelo_reserva_boleto v, persona_reserva pr 
                where v.fk_reserva=:new.fk_reserva and pr.fk_vuelo_reserva_boleto = v.codigo;
                
cod_vuelo vuelo.codigo%type;
cod_asiento asiento.codigo%type;

begin
     open au;
     fetch au into cod_auto;
     while (au%found)loop
            update automovil a set a.fk_status=1 where a.codigo=cod_auto;
       fetch au into cod_auto;
     end loop;
     close au;
     
     
    open ha;
     fetch ha into cod_hab;
     while (ha%found)loop
            update habitacion h set h.fk_status=1 where h.codigo=cod_hab;
       fetch ha into cod_hab;
     end loop;
     close ha;

    open  asi;
     fetch asi into cod_vuelo,cod_asiento;
     while (asi%found)loop
            update status_asiento h set h.fk_status=1 where h.fk_vuelo=cod_vuelo and h.fk_asiento = cod_asiento;
       fetch asi into cod_vuelo,cod_asiento;
     end loop;
     close asi;
end;

/
create or replace function calcularMontoConReservacion (id_r reserva.codigo%type, costo number) return number is
costoConDescuento reserva.precio_total%TYPE;
existePromo reserva.fk_promocion%TYPE;
descuento promocion.porcentaje%TYPE;
begin
    select fk_promocion  into existePromo from reserva where codigo = id_r;
    if (existePromo is not null) then
        select p.porcentaje  into descuento from promocion p, reserva r where r.codigo = id_r and r.fk_promocion = p.codigo;   
        costocondescuento:= costo - (costo*descuento);
    

    else
        costocondescuento:= costo;
    end if;
   RETURN costocondescuento;
   
end;

/*Funciones para el reporte 9*/
create or replace function buscarHuesped (hab habitacion.codigo%type) return varchar2
is
cursor habitaciones is 
select hh.cantidad, hu.tipo
from habitacion_huesped hh, huesped hu
where hh.fk_habitacion =hab
and hh.fk_huesped = hu.codigo;

personas varchar2(200);
cantidad_personas habitacion_huesped.cantidad%type;
tipo_persona huesped.tipo%type;

begin
    open habitaciones;
    fetch habitaciones into cantidad_personas, tipo_persona;
    while (habitaciones%found)
    loop
        personas := personas||' '||cantidad_personas||' '|| tipo_persona;
        fetch habitaciones into cantidad_personas, tipo_persona;
    end loop;
    close habitaciones;
  
    return personas;
end;

create or replace function buscarDireccion (cod_lugar lugar.codigo%type) return varchar2
is
    p lugar.nombre%type;
    c lugar.nombre%type;
begin
    select l.nombre pais , l2.nombre ciudad 
    into p,c
    from lugar l, lugar l2
    where l2.codigo = 16
    and l2.fk_lugar = l.codigo;
    return p||', '||c;
end;

