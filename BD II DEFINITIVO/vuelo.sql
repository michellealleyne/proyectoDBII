create or replace package paquete_vuelo is
    type escalas_array is varray(3) of number;
   
    procedure buscarVuelos(salida number,llegada number,fecha_salida timestamp,cantidad_personas number,personas paquete_reserva.personas_array,codigo_re reserva.codigo%type,costo in out  number);
    procedure buscar(vuelo paquete_reserva.detalles_viaje,cantidad_personas number, personas paquete_reserva.personas_array,codigo_re reserva.codigo%type);
    function contarVuelos(salida number,llegada number,ruta number,cantidad_personas number,fecha date) return number;
    function buscarCodigoVuelo(salida number,llegada number,ruta number,cantidad_personas number,fecha date) return number;
    procedure imprimir_datos_vuelo(codigo_v number);
    procedure seleccionar_asientos_vuelo(codigo_v number,personas paquete_reserva.personas_array,cantidad_personas number,codigo_re reserva.codigo%type,codigo_r ruta.codigo%type,costo in out number);
    function crearVuelo(salida lugar.codigo%type,llegada lugar.codigo%type, codigo_r ruta.codigo%type,fecha vuelo.fecha_estimada_salida%type) return vuelo.codigo%type;
    function buscarEscalas(codigo_r ruta.codigo%type) return paquete_vuelo.escalas_array;
    procedure buscarVuelosEscalas(esc_array escalas_array,cantidad_personas number,fecha_salida timestamp,personas paquete_reserva.personas_array,codigo_re reserva.codigo%type,escala number,costo in out number);
end;
 /
 

create or replace package body paquete_vuelo is

    procedure buscar(vuelo paquete_reserva.detalles_viaje,cantidad_personas number, personas paquete_reserva.personas_array,codigo_re reserva.codigo%type) as
    i number;
    costo number:=0;
    begin
             DBMS_OUTPUT.PUT_LINE('');
             
          dbms_output.put_line('--------------------------------------RESERVACION DE VUELO--------------------------------------'); 

            if(vuelo.modalidad=1) then
          DBMS_OUTPUT.PUT_LINE('');
          DBMS_OUTPUT.PUT_LINE('                      ~~~~~~~~~~~~~~~~~~~BOLETOS DE IDA~~~~~~~~~~~~~~~~~~~');
                buscarVuelos(vuelo.origen,vuelo.destino,vuelo.fecha_ida,cantidad_personas,personas,codigo_re,costo);
          DBMS_OUTPUT.PUT_LINE('');
          DBMS_OUTPUT.PUT_LINE('                      ~~~~~~~~~~~~~~~~~BOLETOS DE REGRESO~~~~~~~~~~~~~~~~~');
                                          DBMS_OUTPUT.PUT_LINE('');
                buscarVuelos(vuelo.destino,vuelo.origen,vuelo.fecha_regreso,cantidad_personas,personas,codigo_re,costo);

            else
          DBMS_OUTPUT.PUT_LINE('');  
          DBMS_OUTPUT.PUT_LINE('                     ~~~~~~~~~~~~~~~~~~~~~~~BOLETOS~~~~~~~~~~~~~~~~~~~~~~~');
                  buscarVuelos(vuelo.origen,vuelo.destino,vuelo.fecha_ida,cantidad_personas,personas,codigo_re,costo);
            end if;
            DBMS_OUTPUT.PUT_LINE('         Monto total a pagar :  '||costo*0.862||'$') ;  
            DBMS_output.put_line('         Impuesto agregado:      16%          ');
            DBMS_OUTPUT.PUT_LINE('         Monto total de boletos :    '||costo||'$') ;   
            DBMS_output.put_line(' '); 
            DBMS_output.put_line('         Aceptar reserva  '); 
            DBMS_output.put_line('         Excelente! Su reserva de vuelo ha sido procesada exitosamente. Gracias por preferirnos!');
            DBMS_output.put_line(' '); 
            
            update reserva set precio_total=costo where codigo=codigo_re;
    end;
--------------------------------------------------------------------------------------------------------------------------------    
    procedure buscarVuelos(salida number,llegada number,fecha_salida timestamp,cantidad_personas number,personas paquete_reserva.personas_array,codigo_re reserva.codigo%type,costo in out number) is

        directo ruta.directo%type;
        codigo_r ruta.codigo%type;
        codigo_v vuelo.codigo%type;
        llegada_n lugar.nombre%type;
        salida_n lugar.nombre%type;
        i number;
        esc_array escalas_array:=escalas_array();
        cont number;
        begin
        esc_array.extend(3);
        SELECT tabla.codigo,tabla.directo into codigo_r,directo from (select codigo,directo from ruta where fk_lugar_salida=salida and fk_lugar_llegada=llegada order by directo desc) tabla where rownum=1;
            select nombre into salida_n from lugar where codigo=salida;
            select nombre into llegada_n from lugar where codigo=llegada;
        if (directo=1)then -- HAY VUELOS DIRECTOS
         DBMS_OUTPUT.PUT_LINE('');
          dbms_output.put_line('                          VUELO DIRECTO DESDE '||salida_n|| ' hasta '||llegada_n);
               cont:= contarVuelos(salida,llegada,codigo_r,cantidad_personas,fecha_salida);
          if (cont>0) then 
                codigo_v := buscarCodigoVuelo(salida,llegada,codigo_r,cantidad_personas,fecha_salida);
          else 
                codigo_v:= crearVuelo(salida,llegada,codigo_r,fecha_salida);
         end if;   
               imprimir_datos_vuelo(codigo_v);
               seleccionar_asientos_vuelo(codigo_v,personas,cantidad_personas,codigo_re,codigo_r,costo);
         else

           dbms_output.put_line('');
           dbms_output.put_line('                      NO HAY VUELOS DIRECTOS DESDE '||salida_n|| ' hasta '||llegada_n);
           dbms_output.put_line('');
           dbms_output.put_line('                      ESCALAS NECESARIAS:');
           dbms_output.put_line('');
                -- guardo en un varray todas las escalas que pertenecen a esa ruta
                esc_array:= buscarEscalas(codigo_r);
                   buscarVuelosEscalas(esc_array,cantidad_personas,fecha_salida,personas,codigo_re,1,costo);
                   buscarVuelosEscalas(esc_array,cantidad_personas,fecha_salida,personas,codigo_re,2,costo);
                    -- me recorro vuelo y por cada escala veo si hay vuelos, si hay lo guardo, si no lo inserto y lo guardo
        
        end if;
        end;
-------------------------------------------------------------------------------------------------------------------------------- 
    procedure buscarVuelosEscalas(esc_array escalas_array,cantidad_personas number,fecha_salida timestamp,personas paquete_reserva.personas_array,codigo_re reserva.codigo%type,escala number,costo in out number) is
        i number;
        --cod_r ruta.codigo%type;
        cod_v vuelo.codigo%type;
        salida lugar.codigo%type;
        llegada lugar.codigo%type;
        nombre_s lugar.nombre%type;
        nombre_ll lugar.nombre%type;
        fecha2 timestamp;
        cod number;
        cont number;
        begin
                select fk_lugar_salida,fk_lugar_llegada into salida,llegada from ruta where codigo=esc_array(escala);
              /*  select r.fk_lugar_salida,e.fk_ruta_propia,r.fk_lugar_llegada into salida,cod_r,llegada from escala e, ruta r 
                where e.fk_ruta_propia=r.codigo and e.codigo=esc_array(escala);*/
                select nombre into nombre_s from lugar where codigo=salida;
                select nombre into nombre_ll from lugar where codigo=llegada;
                cont:= contarVuelos(salida,llegada,esc_array(escala),cantidad_personas,fecha_salida);
                DBMS_OUTPUT.PUT_LINE('                           VUELO DESDE:  '||nombre_s||' a '||nombre_ll);
                if (escala=2) then
                     select trunc(dbms_random.value(4,15)) into cod from dual;
                     select fecha_salida +(cod)/24 into fecha2 from dual;
                end if;
                if (cont=0) then
                    if (escala=2) then
                    cod_v:=   crearVuelo(salida,llegada,esc_array(escala),fecha2);
                    else
                    cod_v:=   crearVuelo(salida,llegada,esc_array(escala),fecha_salida);
                    end if;
                else 
                    if (escala=2) then
                     cod_v:=  buscarCodigoVuelo(salida,llegada,esc_array(escala),cantidad_personas,fecha2);
                     else
                     cod_v:=  buscarCodigoVuelo(salida,llegada,esc_array(escala),cantidad_personas,fecha_salida);
                     end if;
                end if;
                imprimir_datos_vuelo(cod_v);
                seleccionar_asientos_vuelo(cod_v,personas,cantidad_personas,codigo_re,esc_array(escala),costo);
            
        end;
-------------------------------------------------------------------------------------------------------------------------------- 
   function buscarEscalas(codigo_r ruta.codigo%type) return paquete_vuelo.escalas_array is
            escalas paquete_vuelo.escalas_array:=paquete_vuelo.escalas_array();
            cursor es is select e.fk_ruta_propia from escala e where e.fk_ruta_final=codigo_r;

            cod_esc escala.codigo%type;
            i number:=1;
        begin
            open es;
            fetch es into cod_esc;
            escalas.extend(3);
            while (es%found) loop
                escalas(i):=cod_esc;
                i:=i+1;
                fetch es into cod_esc;
            end loop;
            return escalas;
        end;
        

--------------------------------------------------------------------------------------------------------------------------------

  function  crearVuelo(salida lugar.codigo%type,llegada lugar.codigo%type, codigo_r ruta.codigo%type,fecha vuelo.fecha_estimada_salida%type) return vuelo.codigo% type is
        cod_avion avion.codigo%type;
        cod_vue vuelo.codigo%type;
        costo vuelo.costo%type;
        cod_esc escala.codigo%type;
        cod number;
        fecha2 timestamp;
    begin
    -- buscamos los aviones que tengan estatus disponibles en esa fecha.
   select x into cod_avion from ( select tabla.cod x from( select a.codigo  cod   from avion a where a.fk_status = 1 
              minus
      select fk_avion cod from vuelo where  to_char(fecha_estimada_salida,'DD-MM-YYYY' ) = fecha) tabla order by dbms_random.value)  where rownum=1;
                          --costo random
                           select trunc(dbms_random.value(300,500)) into costo from dual;
                          --convierto la fecha en timestamp
                           SELECT CAST(fecha AS DATE) into fecha2 FROM dual;
                          -- numero aleatorio del 1 al 15
                           select trunc(dbms_random.value(1,15)) into cod from dual;
                           -- a la fecha2 le sumo x cantidad de horas 
                           select fecha +(cod)/24 into fecha2 from dual;
      select e.codigo into cod_esc from escala e where e.fk_ruta_propia=codigo_r and e.fk_ruta_final=codigo_r;                    
      insert into vuelo values (sec_vuelo.nextval,null,null,costo,fecha,fecha2,cod_esc,cod_avion) returning codigo into cod_vue;
      commit;
      return cod_vue;      
    end;

--------------------------------------------------------------------------------------------------------------------------------    
   procedure imprimir_datos_vuelo(codigo_v number) is 
        nombre_aero aerolinea.datos_aerolinea.nombre%type;      
            
        nombre_avion avion.nombre%type;
        nombre_flota flota.nombre%type;
        nombre_modelo modelo.datos_modelo.nombre%type;
        fecha vuelo.fecha_estimada_salida%type;
        
    begin 
              
        select  a.datos_aerolinea.nombre,av.nombre, f.nombre , m.datos_modelo.nombre,v.fecha_estimada_salida
        into nombre_aero,nombre_avion,nombre_flota,nombre_modelo,fecha
        from vuelo v, aerolinea a, avion av , flota f , modelo m, modelo_clase mc, modelo_clase_avion mca
        where v.fk_avion=av.codigo and v.codigo=codigo_v and av.codigo=mca.fk_avion and mca.fk_modelo_clase=mc.codigo 
        and mc.fk_modelo=m.codigo and m.fk_flota=f.codigo and a.codigo=f.fk_aerolinea and rownum=1;
               

        DBMS_OUTPUT.put_line('');
        DBMS_OUTPUT.put_line('                      ..................Datos del vuelo..................');
        DBMS_OUTPUT.put_line('                             Numero de vuelo: '||codigo_v);
        DBMS_OUTPUT.put_line('                             Salida el : '|| fecha);
        DBMS_OUTPUT.put_line('                             Nombre de aerolinea: '|| nombre_aero);
        DBMS_OUTPUT.put_line('                             Nombre de avion : '|| nombre_avion);
        DBMS_OUTPUT.put_line('                             Modelo: '|| nombre_flota||' '||nombre_modelo);
         DBMS_OUTPUT.put_line(''); 
    
    end;        
    
-- pendiente con modalidad------------------REVISAAAAAAAAAAAAAAAAAAAARRR--------------------------------------------------------    
  procedure seleccionar_asientos_vuelo(codigo_v number,personas paquete_reserva.personas_array,cantidad_personas number,codigo_re reserva.codigo%type,codigo_r ruta.codigo%type,costo in out number) is
  -- todos los asientos de ese vuelo que estan disponibles
  cursor asi is 
    select a.codigo from status_asiento s, asiento a where s.fk_vuelo=codigo_v and s.fk_status=1 and s.fk_asiento=a.codigo;
  puesto asiento.codigo%type;
  cod vuelo_reserva_boleto.codigo%type;
  clase tipo_clase.nombre%type;
  porcentaje modelo_clase.porcentaje%type;
  costo_vuelo number;
  costo_aux number:=0;
  pruebaMich number;
   begin
        open asi;
        fetch asi into puesto;
        --insertar en reserva_vuelo_boleto
        
        insert into vuelo_reserva_boleto values (sec_vuelo_reserva_boleto.nextval,codigo_v,codigo_re,codigo_r,costo) returning codigo into cod;
            DBMS_OUTPUT.PUT_LINE('       _________________________________________________________________________________________');
        for ind in 1..cantidad_personas loop
            select t.nombre,mc.porcentaje into clase,porcentaje from asiento a ,modelo_clase_avion m,modelo_clase mc,tipo_clase t
                    where a.codigo=puesto and a.fk_modelo_clase_Avion=m.codigo and m.fk_modelo_clase=mc.codigo and mc.fk_tipo_clase=t.codigo;
            select costo into costo_vuelo from vuelo where codigo=codigo_v;
            costo_vuelo:= costo_vuelo + costo_vuelo*porcentaje;
            insert into persona_reserva values (sec_persona_reserva.nextval,personas(ind).persona_cedula,puesto,cod);
          --  update  status_asiento set fk_status=5 where fk_asiento=puesto and fk_vuelo=codigo_v;
            DBMS_OUTPUT.PUT_LINE('         Asiento: ' || puesto ||'    Asignado a: '||personas(ind).persona_nombre||'     Clase: '|| clase||'     Costo: '||costo_vuelo||' $');
            DBMS_OUTPUT.PUT_LINE('       _________________________________________________________________________________________');

            costo_aux:=costo_aux+costo_vuelo;
            fetch asi into puesto;
        end loop;
        costo:=costo+costo_aux;
            DBMS_OUTPUT.PUT_LINE('                                                              Costo total boletos: '||costo_aux||' $');
            DBMS_OUTPUT.PUT_LINE('       -----------------------------------------------------------------------------------------');
            dbms_output.put_line('');
        close asi;
       
        update vuelo_reserva_boleto vrb set vrb.costo=costo_aux where vrb.codigo=cod;           
   end;   
--------------------------------------------------------------------------------------------------------------------------------    

 function contarVuelos(salida number,llegada number,ruta number,cantidad_personas number,fecha date) return number is
    cont number;
    begin
        select count(v.codigo) into cont from vuelo v,escala e
            where v.fk_escala=e.codigo and e.fk_ruta_propia=ruta and e.fk_ruta_final=ruta
            and to_char(v.fecha_estimada_salida,'DD-MM-YYYY')=to_char(fecha,'DD-MM-YYYY')
            and cantidad_personas<=(select count(a.codigo) from asiento a,status_asiento sa where fk_modelo_clase_avion in
                                            (select codigo 
                                                from modelo_clase_avion 
                                                where fk_modelo_clase in 
                                                (select fk_modelo_clase from modelo_clase_avion where fk_avion =v.fk_avion)
                                                and fk_avion=v.fk_avion)
                                         and sa.codigo=a.codigo and sa.fk_status=1);
                  return cont;
     
    end;

--------------------------------------------------------------------------------------------------------------------------------   
   function buscarCodigoVuelo(salida number,llegada number,ruta number,cantidad_personas number,fecha date) return number is
    cod number;
    begin
            select v.codigo into cod from vuelo v,escala e
            where v.fk_escala=e.codigo and e.fk_ruta_propia=ruta and e.fk_ruta_final=ruta
            and to_char(v.fecha_estimada_salida,'DD-MM-YYYY')=to_char(fecha,'DD-MM-YYYY')
            and cantidad_personas<=(select count(a.codigo) from asiento a,status_asiento sa where fk_modelo_clase_avion in
                                                (select codigo 
                                                from modelo_clase_avion 
                                                where fk_modelo_clase in 
                                                (select fk_modelo_clase from modelo_clase_avion where fk_avion =v.fk_avion)
                                                and fk_avion=v.fk_avion)
                                         and sa.codigo=a.codigo and sa.fk_status=1) and rownum=1;
                    return cod;
    end;

end;


