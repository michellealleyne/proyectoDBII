create or replace package paquete_seguro is
    procedure reservarSeguro (viaje paquete_reserva.detalles_viaje, cantidad_personas number, reserva_cod reserva.codigo%type );
    procedure elegirSeguro (cant_personas number, seguro_elegido in out seguro%rowtype, reserva_cod reserva.codigo%type, viaje paquete_reserva.detalles_viaje);
    function mostrarNombreSeguro (reserva_cod reserva.codigo%type) return varchar2;
end;
/
create or replace package body paquete_seguro is
--------------------------------------------------------------------------------------------------------------------------------
        procedure reservarSeguro (viaje paquete_reserva.detalles_viaje, cantidad_personas number, reserva_cod reserva.codigo%type ) is
        cursor seguros is
        select distinct a.datos_aseguradora.nombre, s.nombre
        from aseguradora a, seguro s
        where s.fk_aseguradora= a.codigo
        order by a.datos_aseguradora.nombre;
            
        nombre_aseguradora   aseguradora.datos_aseguradora.nombre%type;
        nombre_seguro        seguro.nombre%type;
        nombre_aseguradora_actual aseguradora.datos_aseguradora.nombre%type;
        seguro_elegido seguro%rowtype;
        i number:=1;
        
        begin
            nombre_aseguradora_actual:= 'inicio';
            DBMS_output.put_line(' ');
            DBMS_output.put_line('Seguros disponibles:');
            open seguros;
            fetch seguros into nombre_aseguradora, nombre_seguro;
            while (seguros%found)
            loop
                         
                if ((nombre_aseguradora_actual='inicio')or ( nombre_aseguradora <> nombre_aseguradora_actual)) then
                     i:=1;
                     DBMS_output.put_line('                       ----------------------------------------------');
                     DBMS_output.put_line('                          Aseguradora:   '|| nombre_aseguradora);
                     DBMS_output.put_line(' ');
                     DBMS_output.put_line('                         '||i||') '|| nombre_seguro);
                     i:=i+1;
                     nombre_aseguradora_actual:= nombre_aseguradora;
                else 
                     DBMS_output.put_line('                         '||i||') '|| nombre_seguro);
                    i:=i+1;
                end if;
            fetch seguros into nombre_aseguradora, nombre_seguro;   
            end loop;
            close seguros;
            DBMS_output.put_line('                       ----------------------------------------------');
            DBMS_output.put_line('                                Eligiendo seguro de viaje...');
            DBMS_output.put_line('  ');
            elegirSeguro(cantidad_personas, seguro_elegido, reserva_cod, viaje);
        end; 
--------------------------------------------------------------------------------------------------------------------------------
       procedure elegirSeguro (cant_personas number, seguro_elegido in out seguro%rowtype, reserva_cod reserva.codigo%type, viaje paquete_reserva.detalles_viaje) is
       nombre_aseguradora aseguradora.datos_aseguradora.nombre%TYPE;
       fecha_regreso_reserva     reserva.fecha_regreso%type:=viaje.fecha_regreso;
       dias number;
       seguro_reserva_cod     seguro_reserva.codigo%type;
       precio_final           number;
       random                 number;
       precio_con_impuesto    number;
       begin 
    
       if (viaje.modalidad = 0 )   then
             SELECT TRUNC (DBMS_RANDOM.VALUE(1,30)) INTO dias  FROM DUAL ;
             fecha_regreso_reserva:= viaje.fecha_ida +dias;
       end if;
      
          
            SELECT * INTO seguro_elegido FROM  ( SELECT * FROM seguro ORDER BY dbms_random.value ) WHERE rownum = 1 AND cantidad_personas=cant_personas; 
            
            SELECT a.datos_aseguradora.nombre INTO nombre_aseguradora FROM aseguradora a WHERE a.codigo = seguro_elegido.fk_aseguradora;
            
            DBMS_output.put_line('                       ..............................................');
            DBMS_output.put_line('                                      DETALLES SEGURO');
            DBMS_output.put_line('                           Agencia de seguros: '|| nombre_aseguradora);
            DBMS_output.put_line('                           Tipo de Seguro: '|| seguro_elegido.nombre);
            DBMS_output.put_line(' ');
            DBMS_output.put_line('                           Precio por dia:' || seguro_elegido.precio ||'$');
            DBMS_output.put_line('                           Cantidad de personas:' || seguro_elegido.cantidad_personas);
            DBMS_output.put_line('                           Rango de dias:' || viaje.fecha_ida||' - '|| fecha_regreso_reserva);
            DBMS_output.put_line(' ');
            DBMS_output.put_line('                       ..............................................');
            DBMS_output.put_line('                         Desea confirmar la reservación del seguro ?');
            DBMS_output.put_line(' ');

           SELECT (0+ABS(MOD(dbms_random.random,2))) INTO random FROM dual; 
           if (random =0) then
            DBMS_output.put_line('                         No');
            DBMS_output.put_line('                         Muchas Gracias,  de igual forma estamos a su orden!');
           else
            DBMS_output.put_line('                         Si');
            DBMS_OUTPUT.PUT_LINE('       -----------------------------------------------------------------------------------------');
                 INSERT INTO seguro_reserva sr VALUES (sec_seguro_reserva.nextval, 
                                              datos_reservacion(viaje.fecha_ida,
                                                                fecha_regreso_reserva, 
                                                                datos_reservacion.calcular_costo(seguro_elegido.precio,viaje.fecha_ida,fecha_regreso_reserva  )),
                                                                datos_costo(0), seguro_elegido.codigo, reserva_cod) returning sr.codigo, sr.reserva_seguro.precio into seguro_reserva_cod, precio_final; 
           
            DBMS_output.put_line('          Monto total a pagar:     ' || precio_final ||'$');
            DBMS_output.put_line('          Impuesto agregado:        16%          ');
            UPDATE seguro_reserva sr SET sr.costo_seguro.precio = datos_costo.calcular_costo(precio_final) WHERE sr.codigo =seguro_reserva_cod returning sr.costo_seguro.precio into precio_con_impuesto;
            DBMS_output.put_line('          Monto total de seguro:   '||  precio_con_impuesto || '$'); 
            DBMS_OUTPUT.PUT_LINE('');
            DBMS_output.put_line('          Aceptar reserva  '); 
            DBMS_output.put_line('          Excelente! Su reserva de seguro de viaje ha sido procesada exitosamente. Gracias por preferirnos!');
            end if;
          
       end;
--------------------------------------------------------------------------------------------------------------------------------
  function mostrarNombreSeguro (reserva_cod reserva.codigo%type) return varchar2 
  is
  nombre_seguro varchar2(50);
  begin 
        select a.datos_aseguradora.nombre 
        into nombre_seguro
        from seguro_reserva sr, seguro s, aseguradora a 
        where sr.fk_reserva =reserva_cod
        and a.codigo = s.fk_aseguradora
        and s.codigo = sr.fk_seguro;
        return nombre_seguro;
  end;

end;


