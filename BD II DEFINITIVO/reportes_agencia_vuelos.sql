
/*PROCEDIMIENTOS*/

--REPORTE 1--
 
create or replace PROCEDURE reporte1 (cursorAerolineas out SYS_REFCURSOR)
IS 
    aerolinea_foto aerolinea.datos_aerolinea.foto%type;
    aerolinea_tipo tipo_clase.nombre%type;
    aerolinea_flota varchar(400);
    

begin
    OPEN cursorAerolineas FOR
    SELECT (SELECT a.datos_aerolinea.foto FROM aerolinea  a WHERE a.codigo=tabla.c ) logo,(SELECT t.nombre FROM tipo_clase t WHERE t.codigo = tabla.t) tipo , tabla.flota flota
    INTO   aerolinea_foto,  aerolinea_tipo, aerolinea_flota
    FROM(  SELECT a.codigo c, a.fk_tipo_clase t , listagg( f.nombre, ' ' ) WITHIN GROUP (ORDER BY a.codigo) flota
            FROM aerolinea a, flota f
            WHERE a.codigo =f.fk_aerolinea
            GROUP BY a.codigo, a.fk_tipo_clase)tabla;
end;

/*
set autoprint on;
variable c_aerolinea refcursor;
execute reporte1(:c_aerolinea);
*/
/
--REPORTE 2--
 create or replace PROCEDURE reporte2 (cursorClases out SYS_REFCURSOR, nombre_aerolinea varchar2)
IS 
    aerolinea_foto    aerolinea.datos_aerolinea.foto%type;
    aerolinea_flota   flota.nombre%type;
    modelo_foto       modelo.datos_modelo.foto%type;
    modelo_nombre     modelo.datos_modelo.nombre%type;
    cantidad_de_aviones number;
    tipo_de_clase varchar2(200);
    
begin
    OPEN cursorClases FOR
    SELECT (SELECT aero.datos_aerolinea.foto FROM aerolinea  aero WHERE  aero.datos_aerolinea.nombre = nombre_aerolinea) aerolinea,
                    tablaY.avion, (SELECT molo.datos_modelo.foto FROM modelo molo WHERE molo.codigo =tablaY.m_cod) foto_de_avion,
                    tablaY.modelo_nombre modelo, (SELECT COUNT (DISTINCT mca.fk_avion) FROM modelo_clase_avion mca WHERE mca.fk_modelo_clase IN ( SELECT mc.codigo   FROM modelo m INNER JOIN  modelo_clase mc  ON mc.fk_modelo = m.codigo  WHERE m.datos_modelo.nombre =tablaY.modelo_nombre)) cantidad_de_aviones,
                    tablaY.cant_clases
                     INTO  aerolinea_foto, aerolinea_flota, modelo_foto, modelo_nombre, cantidad_de_aviones, tipo_de_clase
            FROM    (SELECT tablaX.avion avion,  tablaX.modelo_codigo m_cod, tablaX.modelo_nombre modelo_nombre, listagg( tablaX.clases, ' - '  ) WITHIN GROUP (ORDER BY tablaX.modelo_codigo)  cant_clases
                    FROM    (SELECT  f.nombre avion,m.codigo modelo_codigo,
                                    m.datos_modelo.nombre modelo_nombre,CONCAT(''||count (a.codigo) ||'   ', (SELECT tp.nombre FROM tipo_clase tp, modelo_clase m_c WHERE tp.codigo = m_c.fk_tipo_clase AND m_c.codigo= mca.fk_modelo_clase) ) as clases  --count (a.codigo) cantidad, (SELECT tp.nombre FROM tipo_clase tp, modelo_clase m_c WHERE tp.codigo = m_c.fk_tipo_clase AND m_c.codigo= mca.fk_modelo_clase)  clases
                            FROM modelo_clase_avion  mca, asiento a, aerolinea ae, flota f, modelo m, modelo_clase mc
                            WHERE ae.datos_aerolinea.nombre= nombre_aerolinea
                            AND ae.codigo = f.fk_aerolinea
                            AND f.codigo  = m.fk_flota
                            AND m.codigo  = mc.fk_modelo
                            AND mc.codigo = mca.fk_modelo_clase 
                            AND a.fk_modelo_clase_avion = mca.codigo
                            AND mca.fk_avion =(SELECT distinct a1.codigo
                                               FROM modelo_clase_avion mca1, avion a1
                                               WHERE a1.codigo = mca1.fk_avion
                                               AND mca1.fk_modelo_clase IN ( SELECT mc2.codigo
                                                                            FROM modelo m2
                                                                            INNER JOIN  modelo_clase mc2
                                                                            ON mc2.fk_modelo = m2.codigo
                                                                            WHERE m2.datos_modelo.nombre =m.datos_modelo.nombre)
                                                AND  rownum < 2)
                            GROUP BY f.nombre,m.codigo,   m.datos_modelo.nombre,  mca.fk_modelo_clase 
                            ORDER BY m.codigo ASC) tablaX
                    GROUP BY tablaX.avion,  tablaX.modelo_codigo, tablaX.modelo_nombre) tablaY
                    ORDER BY tablaY.m_cod ASC;
end;

/*
set autoprint on;
variable c_clases refcursor;
execute reporte2(:c_clases, 'Copa Airlines');
*/            
                    
 /                  
--REPORTE 3--
create or replace PROCEDURE reporte_3 (cursorModelo out SYS_REFCURSOR, nombre_flota VARCHAR2, nombre_modelo VARCHAR2)
IS 
       aerolinea_foto      aerolinea.datos_aerolinea.foto%type;
       flota_nombre        flota.nombre%type;
       modelo_foto         modelo.datos_modelo.foto%type;
       modelo_nombre       modelo.datos_modelo.nombre%type;
       modelo_velocidad    modelo.velocidad_maxima%type;
       modelo_alcance      modelo.alcance%type;
       modelo_altitud      modelo.altitud_maxima%type;
       modelo_envergadura  modelo.envergadura%type;
       modelo_ancho        modelo.ancho_interior_cabina%type;
       modelo_altura       modelo.altura_interior_cabina%type;
begin
       -- Abro el cursor para colocar los datos devueltos de la consulta--
       OPEN cursorModelo FOR
       SELECT a.datos_aerolinea.foto logo, f.nombre avion, m.datos_modelo.foto foto_avion, m.datos_modelo.nombre modelo, 
       m.velocidad_maxima velocidad_maxima, m.alcance alcance, 
       m.altitud_maxima altitud_maxima, m.envergadura envergadura, 
       m.ancho_interior_cabina ancho_interior_cabina, m.altura_interior_cabina altura_interior_cabina
       INTO aerolinea_foto, flota_nombre, modelo_foto, modelo_nombre, modelo_velocidad, modelo_alcance,
       modelo_altitud, modelo_envergadura, modelo_ancho, modelo_altura
       FROM aerolinea a
       INNER JOIN flota f
       ON f.fk_aerolinea = a.codigo
       INNER JOIN modelo m
       ON m.fk_flota = f.codigo
       WHERE f.nombre=nombre_flota
       AND m.datos_modelo.nombre = nombre_modelo;
end;

/*
set autoprint on;
variable c_modelo3 refcursor;
execute reporte_3(:c_modelo3, 'Boeing 737 MAX 9', 'Unico-737');
*/
/
-- REPORTE 4--
create or replace PROCEDURE reporte4 (cursorUsuarios out SYS_REFCURSOR)
IS 
    usuario_correo usuario.correo%type;
    usuario_foto usuario.foto%type;
    usuario_nombre persona.nombre%type;
    usuario_apellido persona.apellido%type;
    usuario_telefono  usuario.numero_telefono%type;
begin
    OPEN cursorUsuarios FOR
    SELECT u.correo, u.foto,p.nombre, p.apellido, u.numero_telefono 
    INTO usuario_correo,  usuario_foto, usuario_nombre,  usuario_apellido, usuario_telefono
    FROM usuario u
    INNER JOIN persona p
    ON u.fk_persona = p.cedula;
end;

/*
set autoprint on;
variable c_usuarios refcursor;
execute reporte1(:c_usuarios);
*/
/
--REPORTE 5--
create or replace PROCEDURE reporte5 (cursorReservaciones out SYS_REFCURSOR, u_correo varchar2, fe_salida date, fe_llegada date)
IS 
    aerolinea_foto aerolinea.datos_aerolinea.foto%type;
    usuario_correo usuario.correo%type;
    nombre_vuelo varchar(200);
    fecha_salida reserva.fecha_salida%type;
    fecha_llegada reserva.fecha_regreso%type;
    sale varchar(200);
    llega varchar(200);
    duracion varchar(200);
    precio vuelo.costo%type;
    
begin
    OPEN cursorReservaciones FOR        
    SELECT (SELECT ae.datos_aerolinea.foto FROM aerolinea ae WHERE ae.codigo = tabla1.aero) logo,
           (SELECT u.correo FROM usuario u, reserva r WHERE r.fk_usuario = u.codigo AND r.codigo =tabla1.reser) correo,
           tabla1.nombre_vuelo vuelo,tabla1.fs fecha_s, tabla1.fl fecha_l, tabla1.sale sale, tabla1.llega llega,
           tabla1.duracion duracion, tabla1.precio precio
     INTO   aerolinea_foto,usuario_correo,nombre_vuelo,fecha_salida, fecha_llegada,sale,llega,duracion,precio
     FROM   (SELECT DISTINCT  a.codigo aero,tabla.reser reser, tabla.sale||'-'|| tabla.llega nombre_vuelo ,tabla.fecha_salida fs, tabla.fecha_llegada fl, EXTRACT( HOUR   FROM CAST( tabla.v_salida AS TIMESTAMP ) )||':'||EXTRACT( MINUTE   FROM CAST( tabla.v_salida AS TIMESTAMP ) ) ||' '||tabla.sale sale,EXTRACT( HOUR   FROM CAST( tabla.v_llegada AS TIMESTAMP ) )||':'||EXTRACT( MINUTE   FROM CAST( tabla.v_llegada AS TIMESTAMP ) )||' ' ||tabla.llega llega ,
                         tabla.horas||' ' ||tabla.minutos duracion , tabla.precio precio
           FROM vuelo_reserva_boleto vrb, vuelo v,avion av, modelo_clase_avion mca, modelo_clase mc,modelo m,flota f, aerolinea a, 
              (SELECT vrb.codigo vrb_cod, r.codigo reser,r.fecha_salida fecha_salida, r.fecha_regreso  fecha_llegada,  v.fecha_estimada_salida v_salida,  v.fecha_estimada_llegada  v_llegada,
                        (select l.nombre from lugar l INNER JOIN ruta r ON l.codigo = r.fk_lugar_salida INNER JOIN escala e ON r.codigo = e.fk_ruta_propia where e.codigo = v.fk_escala) sale,
                        (select l.nombre from lugar l INNER JOIN ruta r ON l.codigo = r.fk_lugar_llegada INNER JOIN escala e ON r.codigo = e.fk_ruta_propia where e.codigo = v.fk_escala) llega,
                        (24 * extract(day from (v.fecha_estimada_llegada - v.fecha_estimada_salida) day(9) to second))
                         + extract(hour from (v.fecha_estimada_llegada - v.fecha_estimada_salida) day(9) to second) || 'h' horas,
                         ( extract(minute from (v.fecha_estimada_llegada - v.fecha_estimada_salida) day(9) to second)) || 'm' minutos,
                        vrb.costo precio
                        FROM reserva r
                        INNER JOIN vuelo_reserva_boleto vrb
                        ON r.codigo = vrb.fk_reserva
                        INNER JOIN vuelo v
                        ON v.codigo = vrb.fk_vuelo
                        WHERE r.fecha_salida= fe_salida
                        AND ((r.fecha_regreso =fe_llegada) or ( r.fecha_regreso is null))
                        AND r.codigo in (SELECT res.codigo from reserva res, usuario usu where res.fk_usuario = usu.codigo and usu.correo= u_correo) )tabla
    WHERE vrb.fk_reserva = tabla.reser
    AND vrb.codigo =tabla.vrb_cod
    AND   vrb.fk_vuelo = v.codigo
    AND   v.fk_avion = av.codigo
    AND   mca.fk_avion = av.codigo
    AND   mca.fk_modelo_clase = mc.codigo
    AND   mc.fk_modelo = m.codigo
    AND   m.fk_flota = f.codigo
    AND   f.fk_aerolinea = a.codigo) tabla1;
end;

/*
set autoprint on;
variable c_reservaciones refcursor;
execute reporte5(:c_reservaciones, 'ava123@hotmail.com', '09/12/19', null);

*/

/
-- REPORTE 6--
create or replace PROCEDURE reporte6 (cursorPago out SYS_REFCURSOR, id_r number)
IS 
    aerolinea_foto aerolinea.datos_aerolinea.foto%type;
    usuario_correo usuario.correo%type;
    nombre_vuelo varchar(200);
    fecha_salida_r reserva.fecha_salida%type;
    fecha_llegada_r  reserva.fecha_regreso%type;
    precio_total_r   reserva.precio_total%type;
    forma_pago       varchar2(40);
    monto_pagado_r    pago.monto_pagado%type;
    monto_con_descuento number;
begin
    OPEN cursorPago FOR
    SELECT    (SELECT ae.datos_aerolinea.foto FROM aerolinea ae WHERE ae.codigo = (SELECT DISTINCT f.fk_aerolinea
                                                                               FROM vuelo_reserva_boleto vrb, vuelo v,avion av, modelo_clase_avion mca, modelo_clase mc,modelo m,flota f
                                                                               WHERE  vrb.fk_reserva = id_r
                                                                                AND   vrb.fk_vuelo = v.codigo
                                                                                AND   v.fk_avion = av.codigo
                                                                                AND   mca.fk_avion = av.codigo
                                                                                AND   mca.fk_modelo_clase = mc.codigo
                                                                                AND   mc.fk_modelo = m.codigo
                                                                                AND   m.fk_flota = f.codigo
                                                                                AND rownum = 1) ) logo,
          (SELECT u.correo FROM usuario u, reserva r WHERE r.fk_usuario = u.codigo AND r.codigo =re.codigo) correo,
          (SELECT DISTINCT(SELECT nombre FROM lugar WHERE codigo =r.fk_lugar_salida) ||' - '||(SELECT nombre FROM lugar WHERE codigo = r.fk_lugar_llegada )
           FROM vuelo_reserva_boleto vrb, ruta r
           WHERE vrb.fk_reserva = id_r
           AND   r.codigo = vrb.fk_ruta AND rownum = 1 ) ||'-'||re.fecha_salida  nombre_vuelo , re.fecha_salida fecha_de_salida, re.fecha_regreso fecha_de_regreso, '$ '|| calcularMontoConReservacion (re.codigo, re.precio_total) precio_total,
           tp.nombre||' - '||p.descripcion forma_de_pago,'$ '|| p.monto_pagado monto_pagado
INTO aerolinea_foto,usuario_correo, nombre_vuelo, fecha_salida_r,  
     fecha_llegada_r,precio_total_r,forma_pago, monto_pagado_r        
FROM reserva re, pago p, tipo_pago tp
WHERE re.codigo = id_r
AND   p.fk_reserva =re.codigo
AND   p.fk_tipo_pago = tp.codigo;

end;

/*
set autoprint on;
variable c_pago refcursor;
execute reporte6(:c_pago, 19);

*/
/*SEGUNDA ENTREGA*/
-- REPORTE 7--

/*
SELECT  tabla2.fs fecha_salida, tabla2.fr fecha_regreso, 
        (SELECT nombre FROM lugar WHERE codigo = tabla2.ls) lugar_origen, 
        (SELECT nombre FROM lugar WHERE codigo =tabla2.ll) lugar_destino,
        tabla2.cantidad cantidad_de_reservaciones
FROM (SELECT COUNT (tabla.l_llegada) cantidad, tabla.f_salida fs,tabla.f_regreso fr,tabla.l_salida ls, tabla.l_llegada ll
      FROM (SELECT DISTINCT r.codigo,r.fecha_salida f_salida, r.fecha_regreso f_regreso,ru.fk_lugar_salida l_salida, ru.fk_lugar_llegada l_llegada
                FROM reserva r, vuelo_reserva_boleto vrb, ruta ru
                WHERE r.codigo = vrb.fk_reserva
                AND vrb.fk_ruta = ru.codigo
                AND r.fecha_salida BETWEEN '09/12/2019' AND '20/12/19' ) tabla
      GROUP BY tabla.l_llegada, tabla.f_salida,tabla.f_regreso,tabla.l_salida, tabla.l_llegada) tabla2
WHERE rownum <=10
ORDER BY tabla2.cantidad desc;
*/




create or replace PROCEDURE reporte7 (cursorVuelos out SYS_REFCURSOR,fecha_i date,fecha_f date)
IS 
     r_fecha varchar2(60);
     r_origen lugar.nombre%TYPE;
     r_llegada lugar.nombre%TYPE;
     r_cantidad_reservaciones number;
    
begin
    OPEN cursorVuelos FOR
    select distinct   fecha_i||' - '||fecha_f fecha, 
           (select l.nombre from lugar l where l.codigo = tabla.l_salida) origen,
           (select l.nombre from lugar l where  l.codigo= tabla.l_llegada) llegada,
           tabla.cantidad cantidad_reservaciones
    into r_fecha, r_origen, r_llegada, r_cantidad_reservaciones
    from (SELECT  count (ru.fk_lugar_llegada) cantidad , ru.fk_lugar_llegada l_llegada, ru.fk_lugar_salida l_salida
         FROM reserva r, vuelo_reserva_boleto vrb, ruta ru
         WHERE r.codigo = vrb.fk_reserva
         AND vrb.fk_ruta = ru.codigo
         AND( (fecha_i IS  NOT NULL AND  fecha_f IS NOT  NULL AND  r.fecha_salida BETWEEN fecha_i AND fecha_f AND ((r.fecha_regreso BETWEEN fecha_i AND fecha_f) OR (r.fecha_regreso IS NULL) ) )
              OR (fecha_i IS NOT NULL AND fecha_f IS NULL AND  r.fecha_salida >=  fecha_i AND ( (r.fecha_regreso <= fecha_i) OR r.fecha_regreso IS NULL ))
              OR (fecha_i IS NULL AND  fecha_f IS NOT NULL AND  r.fecha_regreso <= fecha_f)
              OR  (fecha_i IS NULL AND fecha_f IS NULL)  )
        -- AND r.fecha_salida BETWEEN fecha_i AND fecha_f
       --  AND ((r.fecha_regreso BETWEEN fecha_i AND fecha_f) OR (r.fecha_regreso IS NULL) )
         GROUP BY  ru.fk_lugar_llegada, ru.fk_lugar_salida) tabla
    WHERE rownum <=10
    ORDER BY tabla.cantidad desc;


end;


set autoprint on;
variable c_vuelos refcursor;
execute reporte7(:c_vuelos,'07/02/2019','');
execute reporte7(:c_vuelos,'07-02-2019','30-12-2019');
execute reporte7(:c_vuelos,'','');
execute reporte7(:c_vuelos,'','30-12-2019');  /*NO MUESTRA NADA PORQUE TODAS LAS RESERVACIONES SON DE IDA*/

/*REPORTE 8*/


create or replace PROCEDURE reporte8 (cursorAerolineas5 out SYS_REFCURSOR,fecha_i date,fecha_f date, l_origen lugar.nombre%type, l_destino lugar.nombre%type)
IS 
    aerolinea_foto aerolinea.datos_aerolinea.foto%type;
    cantidad_de_servicios number;
    rango_fechas varchar2(100);
    lugar_o lugar.nombre%type;
    lugar_d lugar.nombre%type;
    
begin
    OPEN cursorAerolineas5 FOR
          Select (select aer.datos_aerolinea.foto from aerolinea aer where aer.codigo = tabla.cod) foto,  
           fecha_i||' - '||fecha_f rango_fecha,(select nombre from lugar where lower(nombre) like  lower(l_origen||'%' )) origen,(select nombre from lugar where lower(nombre) like lower( l_destino||'%') ) destino, tabla.cantidad_servicios servicios
           into aerolinea_foto,   rango_fechas, lugar_o,  lugar_d, cantidad_de_servicios 
           from   (SELECT ae.codigo cod, COUNT (ae.datos_aerolinea.nombre) cantidad_servicios
                   FROM vuelo v,avion a, modelo_clase_avion mca, modelo_clase mc,modelo m,flota f, aerolinea ae
                   WHERE v.fk_avion=a.codigo 
                   and mca.fk_avion=a.codigo 
                   and mca.fk_modelo_clase=mc.codigo 
                   and mc.fk_modelo=m.codigo 
                   and m.fk_flota=f.codigo 
                   and f.fk_aerolinea=ae.codigo 
                   
                   AND ( (fecha_i IS NOT NULL AND fecha_f IS NOT NULL AND  to_char(v.fecha_estimada_salida,'DD/MM/YYYY' ) between fecha_i  and fecha_f )
                        OR (fecha_i IS NOT NULL AND fecha_f IS NULL AND to_char(v.fecha_estimada_salida,'DD/MM/YYYY' ) >= fecha_i)
                        OR (fecha_i IS  NULL AND fecha_f IS NOT NULL AND to_char(v.fecha_estimada_salida,'DD/MM/YYYY' ) <= fecha_f)
                        OR (fecha_i IS  NULL AND fecha_f IS NULL))
        --       and to_char(v.fecha_estimada_salida,'DD/MM/YYYY' ) between fecha_i  and fecha_f
                  AND lower((SELECT l.nombre from lugar l,ruta r,escala e WHERE v.fk_escala=e.codigo and e.fk_ruta_propia=r.codigo and r.fk_lugar_salida=l.codigo) ) like lower (l_origen||'%')
                  AND lower((SELECT l.nombre from lugar l,ruta r,escala e WHERE v.fk_escala=e.codigo and e.fk_ruta_propia=r.codigo and r.fk_lugar_llegada=l.codigo)) like lower (l_destino||'%')
                   --
                  GROUP BY ae.codigo
                  order by COUNT(ae.codigo) DESC fetch first 5 rows only) tabla;
end;


set autoprint on;
variable c_aerolineas refcursor;
execute reporte8(:c_aerolineas,'07/02/2019','23/02/2019','sevill','shAngha');
execute reporte8(:c_aerolineas,'07/02/2019','','sevill','shAngha');
execute reporte8(:c_aerolineas,'','23/02/2019','sevill','shAngha');


/*REPORTE 9: LAS FUNCIONES ESTAN EN EL ARCHIVO CREATE*/
create or replace PROCEDURE reporte9 (cursorHotel out SYS_REFCURSOR, u_correo usuario.correo%type, fecha_i reserva_hotel.reserva_hotel.fecha_inicio%type, fecha_f reserva_hotel.reserva_hotel.fecha_fin%type)
IS 
     h_foto hotel.datos_hotel.foto%type;
     h_nombre hotel.datos_hotel.nombre%type;
     h_correo usuario.correo%type;
     h_fecha_i reserva_hotel.reserva_hotel.fecha_inicio%type;
     h_fecha_f reserva_hotel.reserva_hotel.fecha_fin%type;
     h_huesped varchar2(200);
     h_descripcion habitacion.descripcion%type;
     h_direccion varchar2(200);
     h_puntuacion varchar2(200);
     h_precio varchar2(50);

    

begin
    OPEN cursorHotel FOR
    select h.datos_hotel.foto foto_del_lugar, h.datos_hotel.nombre nombre_del_lugar, u.correo correo_de_usuario,
    rh.reserva_hotel.fecha_inicio fecha_de_entrada,  rh.reserva_hotel.fecha_fin fecha_de_salida,buscarHuesped(ha.codigo) huespedes,
    ha.descripcion descripcion, buscarDireccion(h.fk_lugar) direccion_exacta, h.puntuacion || '/10' puntuacion, rh.reserva_hotel.precio||'$' precio_total_pagado
    into h_foto, h_nombre, h_correo, h_fecha_i, h_fecha_f, h_huesped, h_descripcion,h_direccion, h_puntuacion, h_precio
    from hotel h, usuario u, reserva r, reserva_hotel rh, habitacion ha
    where ( (u_correo IS NOT NULL AND lower (u.correo) like lower(u_correo||'%' ))
           OR (u_correo IS NULL))
    --lower (u.correo) like lower(u_correo||'%' )
    and r.fk_usuario= u.codigo
    and rh.fk_reserva = r.codigo
    and rh.fk_habitacion = ha.codigo
    and ha.fk_hotel = h.codigo
    and ( (fecha_i IS NOT NULL AND fecha_f IS NOT NULL AND rh.reserva_hotel.fecha_inicio=fecha_i  AND rh.reserva_hotel.fecha_fin=fecha_f)
                        OR (fecha_i IS NOT NULL AND fecha_f IS NULL AND  rh.reserva_hotel.fecha_inicio >=fecha_i)
                        OR (fecha_i IS  NULL AND fecha_f IS NOT NULL AND rh.reserva_hotel.fecha_fin<=fecha_f)
                        OR (fecha_i IS  NULL AND fecha_f IS NULL));
   -- and rh.reserva_hotel.fecha_inicio=fecha_i
   --  and rh.reserva_hotel.fecha_fin=fecha_f;

end;

set autoprint on;
variable c_hotel refcursor;
execute reporte9(:c_hotel,'ava123', '09/09/2019', '20/09/2019');
execute reporte9(:c_hotel,'ava123', '', '20/09/2019');
execute reporte9(:c_hotel,'ava123', '09/09/2019', '');
execute reporte9(:c_hotel,'', '09/09/2019', '20/09/2019');
execute reporte9(:c_hotel,'', '01/11/2019', '');


/*REPORTE 10.OJO: revisar lo de las fechas. COLOCAR MAS INSERTS*/

create or replace PROCEDURE reporte10 (cursorHotel out SYS_REFCURSOR,n_lugar lugar.nombre%type, fecha_i reserva_hotel.reserva_hotel.fecha_inicio%type, fecha_f reserva_hotel.reserva_hotel.fecha_fin%type)
IS 
     h_foto hotel.datos_hotel.foto%type;
     h_nombre hotel.datos_hotel.nombre%type;
     h_fecha_i reserva_hotel.reserva_hotel.fecha_inicio%type;
     h_fecha_f reserva_hotel.reserva_hotel.fecha_fin%type;
     h_cantidad number;
     h_puntuacion varchar2(200);
   
    

begin
    OPEN cursorHotel FOR
    select h.datos_hotel.foto foto_del_lugar, h.datos_hotel.nombre nombre_del_lugar, 
    fecha_i fecha_de_inicio, fecha_f fecha_de_fin,
    tabla2.t_canti cantidad_de_reservas, h.puntuacion puntuacion_promedio
    into  h_foto, h_nombre,  h_fecha_i, h_fecha_f, h_cantidad, h_puntuacion
    from hotel h, (select tabla.cantidad t_canti, tabla.cod_hotel tab_h, tabla.cod_rh tab_rh
                                        from (SELECT count (rh.codigo) cantidad, h.codigo cod_hotel, ha.fk_hotel, rh.codigo cod_rh
                                            FROM reserva_hotel rh, LUGAR l, hotel h, habitacion ha
                                            WHERE ( (n_lugar IS NOT NULL AND (lower(l.nombre) like lower( n_lugar||'%')))
                                                    OR (n_lugar IS NULL))
                                            --lower(l.nombre) like lower( n_lugar||'%')
                                            and h.fk_lugar = l.codigo
                                            and rh.fk_habitacion = ha.codigo
                                            and ha.fk_hotel= h.codigo
                                            AND ( (fecha_i IS NOT NULL AND fecha_f IS NOT NULL AND   (rh.reserva_hotel.fecha_inicio between fecha_i  and fecha_f ) AND (rh.reserva_hotel.fecha_fin between fecha_i and fecha_f))
                                                 OR (fecha_i IS NOT NULL AND fecha_f IS NULL AND (rh.reserva_hotel.fecha_inicio >= fecha_i ))
                                                  OR (fecha_i IS  NULL AND fecha_f IS NOT NULL AND (rh.reserva_hotel.fecha_fin<= fecha_f))
                                                 OR (fecha_i IS  NULL AND fecha_f IS NULL))
                                      --      and rh.reserva_hotel.fecha_inicio between fecha_i and fecha_f
                                      --     and rh.reserva_hotel.fecha_fin between fecha_i and fecha_f
                                            group by ha.fk_hotel, h.codigo, rh.codigo
                                            order by count(rh.codigo)) tabla
                                        where rownum <11) tabla2
    where h.codigo = tabla2.tab_h;

end;

set autoprint on;
variable c_hotel refcursor;
execute reporte10(:c_hotel,'La Gua', '09/09/2019', '09/12/2020');
execute reporte10(:c_hotel,'La Guaira', '', '09/12/2020');
execute reporte10(:c_hotel,'La Guaira', '09/09/2019', '');
execute reporte10(:c_hotel,'', '09/09/2019', '09/12/2020');
execute reporte10(:c_hotel,'', '', '');






/*REPORTE 11*/

create or replace PROCEDURE reporte11 (cursorReservaAuto out SYS_REFCURSOR, u_correo usuario.correo%type, fecha_i date, fecha_f date)
IS 
begin
    OPEN cursorReservaAuto FOR
select a.foto foto_auto, concat (a.marca,concat(' ',a.modelo)) nombre_auto, p.datos_proveedor.foto foto_prov, u.correo,
    (select l.nombre from lugar l,proveedor_lugar c where c.codigo= pl.codigo and c.fk_lugar=l.codigo) lugar_recogida, 
    (select l.nombre from lugar l,proveedor_lugar c where c.codigo= pl.codigo and c.fk_lugar=l.codigo) lugar_devolucion,
    ra.reserva_auto.fecha_inicio fecha_inicio, ra.reserva_auto.fecha_fin fecha_fin,  a.precio_por_dia||' USD/dia',
    ra.reserva_auto.precio||' USD' precio_total
from automovil a, proveedor p, proveedor_lugar pl, usuario u, reserva r, reserva_automovil ra
where p.codigo=pl.fk_proveedor 
and pl.codigo=a.fk_proveedor_lugar
and ra.fk_automovil=a.codigo
and r.fk_usuario = u.codigo 
and ra.fk_reserva=r.codigo 
and ( (u_correo IS NOT NULL AND (lower(u.correo) like lower(u_correo||'%')))
                                                    OR (u_correo IS NULL))
                                                    --lower(u.correo) like lower(u_correo||'%')
                                                    
AND ( (fecha_i IS NOT NULL AND fecha_f IS NOT NULL AND   ( ra.reserva_auto.fecha_inicio between fecha_i and fecha_f) AND (ra.reserva_auto.fecha_fin between fecha_i and fecha_f))
                                                 OR (fecha_i IS NOT NULL AND fecha_f IS NULL AND (ra.reserva_auto.fecha_inicio >= fecha_i ))
                                                 OR (fecha_i IS  NULL AND fecha_f IS NOT NULL AND (ra.reserva_auto.fecha_fin <= fecha_f))
                                                 OR (fecha_i IS  NULL AND fecha_f IS NULL))  ;                                                  
--and ra.reserva_auto.fecha_inicio between fecha_i and fecha_f
--and ra.reserva_auto.fecha_fin between fecha_i and fecha_f;
end;

set autoprint on;
variable c_autos refcursor;
execute reporte11(:c_autos,'Ava123','07/09/2019','27/10/2019');
execute reporte11(:c_autos,'','07/09/2019','27/10/2019');
execute reporte11(:c_autos,'Ava123','','27/10/2019');
execute reporte11(:c_autos,'Ava123','07/09/2019','');
execute reporte11(:c_autos,'','','');





/*REPORTE 12*/


create or replace PROCEDURE reporte12 (cursorVuelos out SYS_REFCURSOR,fecha date) is
begin
    OPEN cursorVuelos FOR
    SELECT  (SELECT fecha_estimada_salida FROM vuelo WHERE codigo = tabla.cod ) f_salida,
        (SELECT l.nombre  FROM lugar l, ruta r, escala e, vuelo v WHERE v.codigo = tabla.cod AND e.codigo =v.fk_escala AND e.fk_ruta_propia= r.codigo AND r.fk_lugar_salida = l.codigo ) origen,
        (SELECT l.nombre  FROM lugar l, ruta r, escala e, vuelo v WHERE v.codigo = tabla.cod AND e.codigo =v.fk_escala AND e.fk_ruta_propia= r.codigo AND r.fk_lugar_llegada= l.codigo ) destino,
        (SELECT  (SELECT a.datos_aerolinea.foto FROM aerolinea a WHERE a.codigo = tabL.codi) FROM (SELECT distinct ae.codigo codi    FROM   vuelo v, avion a, modelo_clase_avion mca, modelo_clase mc, modelo m, flota f, aerolinea ae  WHERE v.codigo = tabla.cod AND  v.fk_avion = a.codigo AND  mca.fk_avion = a.codigo AND  mca.fk_modelo_clase = mc.codigo  AND  mc.fk_modelo = m.codigo AND  m.fk_flota = f.codigo   AND  f.fk_aerolinea = ae. codigo) tabl) logo,
        (SELECT s.nombre FROM status s, status_vuelo sv  WHERE sv.fk_vuelo = tabla.cod AND s.codigo =sv.fk_status) status,
         buscarFecha(tabla.cod) fecha_l
    FROM   
       (SELECT   v.codigo cod
        FROM  vuelo v
        WHERE to_char(v.fecha_estimada_salida,'DD/MM/YYYY') =to_char(fecha,'DD/MM/YYYY')) tabla;


end;


set autoprint on;
variable c_vuelos refcursor;
execute reporte12(:c_vuelos,'07/02/2019');




create or replace PROCEDURE reporte13 (cursorReservaSeguro out SYS_REFCURSOR,fecha_i date, fecha_f date)
IS 
begin
    OPEN cursorReservaSeguro FOR
select tabla.c, (select a.datos_aseguradora.foto from aseguradora a where a.codigo=tabla.c) logo, tabla.fecha ,
(select l.nombre nom from lugar l, vuelo_reserva_boleto vr, ruta rut where tabla.reser=vr.fk_reserva and vr.fk_ruta=rut.codigo  
                                                                                                and rut.fk_lugar_salida=l.codigo and rownum=1) org,
      (select l.nombre nom from lugar l, vuelo_reserva_boleto vr, ruta rut where tabla.reser=vr.fk_reserva and vr.fk_ruta=rut.codigo
                                                                                                and rut.fk_lugar_llegada=l.codigo and rownum=1) des
, tabla.cuenta 
from (select a.codigo c, count(r.codigo) cuenta, r.reserva_seguro.fecha_inicio||'-'||r.reserva_seguro.fecha_fin fecha, r.fk_reserva reser
      from aseguradora a, seguro_reserva r, seguro s
      where a.codigo=s.fk_aseguradora    
      AND ( (fecha_i IS NOT NULL AND fecha_f IS NOT NULL AND   (r.reserva_seguro.fecha_inicio between fecha_i  and fecha_f ) AND (r.reserva_seguro.fecha_fin  between fecha_i and fecha_f))
                                                 OR (fecha_i IS NOT NULL AND fecha_f IS NULL AND (r.reserva_seguro.fecha_inicio >= fecha_i ))
                                                  OR (fecha_i IS  NULL AND fecha_f IS NOT NULL AND (r.reserva_seguro.fecha_fin  <= fecha_f))
                                                 OR (fecha_i IS  NULL AND fecha_f IS NULL))
     -- and r.reserva_seguro.fecha_inicio between fecha_i and fecha_f
    --  and r.reserva_seguro.fecha_fin between fecha_i and fecha_f
      and s.codigo= r.fk_seguro and s.fk_aseguradora=a.codigo
      group by a.codigo, r.reserva_seguro.fecha_inicio||'-'||r.reserva_seguro.fecha_fin, r.fk_reserva) tabla 
where rownum <=5;
end;


set autoprint on;
variable c_seguros refcursor;
execute reporte13(:c_seguros,'01/01/2019', '30/12/2019');
execute reporte13(:c_seguros,'', '30/12/2019');
execute reporte13(:c_seguros,'01/01/2019', '');
execute reporte13(:c_seguros,'', '');


create or replace function colocarFecha (fecha1 varchar2, fecha2 varchar2 ) return varchar2 
is 
fechas varchar2(50);
begin
        
        if ((fecha1 is null) and (fecha2 is not null)) then
            fechas := fecha2;
        else if ((fecha2 is null) and (fecha1 is not null))  then
            fechas := fecha1;
        else if ((fecha1 is not  null) and (fecha2 is not null)) then 
            fechas:= fecha1 || '-' || fecha2;
        else   fechas:= '-' ;
        end if;
        end if;
        end if;
        
        
end;


