create or replace package paquete_reserva is
     type r_personas is record ( 
        persona_nombre persona.nombre%type, 
        persona_apellido persona.apellido%type,
        persona_cedula persona.cedula%type 
    ); 
    type personas_array is varray (10) of r_personas; 
    type detalles_viaje is record ( 
       origen lugar.codigo%type,
       destino lugar.codigo%type,
       fecha_ida date,
       fecha_regreso date,
       modalidad number
    ); 
    procedure reservar ;
    procedure generar_numero_reserva(numero in out number, cliente usuario.codigo%type, viaje detalles_viaje);
    function seleccionar_fecha_destino return detalles_viaje;
    function seleccionar_personas(comprador_cod usuario.fk_persona%type) return personas_array;
    procedure realizar_reintegro (n_reserva number) ;
end;
/
create or replace function generarFecha return date
as 
fecha date;
begin
   SELECT TO_DATE(
      TRUNC(DBMS_RANDOM.VALUE(TO_CHAR(DATE '2019-10-01','J'),TO_CHAR(DATE '2019-12-31','J') )),'J')
      into fecha FROM DUAL;  
    return fecha;
end ;
/
create or replace function generarCiudades return lugar.codigo%type
as
codigo_random lugar.codigo%type;
begin
loop
     SELECT codigo into codigo_random FROM
        ( SELECT * FROM lugar
         where tipo='Ciudad' ORDER BY dbms_random.value )
        WHERE rownum = 1;
exit when (codigo_random mod 2 =0); end loop;
return codigo_random;
end;
/
create or replace package body paquete_reserva is
--------------------------------------------------------------------------------------------------------------------------------
    procedure reservar is
    comprador usuario.correo%type;
    comprador_cod usuario.fk_persona%type;
    comprador_nombre persona.nombre%type;
    comprador_apellido persona.apellido%type;
    lista_personas personas_array;
    viaje detalles_viaje;
    reserva_n number; 
    cantidad_personas number:=0;
    numero_reserva number:=0;
    u_correo usuario.correo%type;
        begin
            SELECT codigo,fk_persona into comprador,comprador_cod  FROM --BUSCAMOS EL USUARIO QUE REALIZARA LA RESERVA EN LA BD 
            ( SELECT * FROM usuario
            ORDER BY dbms_random.value ) 
            WHERE rownum = 1; 
            select nombre,apellido into comprador_nombre,comprador_apellido from persona where comprador_cod = cedula;
            select correo  into u_correo from usuario where fk_persona = comprador_cod;
            dbms_output.put_line('________________________________________________________________________________________________________________________________'); 
            dbms_output.put_line('');
            dbms_output.put_line('Realizando Reserva...'); 
            dbms_output.put_line('--------------------------------------DETALLES DEL CLIENTE--------------------------------------'); 
            dbms_output.put_line(''); 
            dbms_output.put_line('Nombre: '|| comprador_nombre||' '||comprador_apellido||'     Usuario: '|| u_correo ||'     Cedula: '|| comprador_cod); 
            dbms_output.put_line(''); 
            
            lista_personas:= seleccionar_personas(comprador_cod);         --SE LE PASA POR PARAMETRO EL MISMO USUARIO QUE SE SELECCIONO PARA QUE LO INCLUYA EN EL LA LISTA DE PERSONAS EN LA RESERVA
            
            for i in lista_personas.first..lista_personas.last loop               --SE CUENTAN LAS PERSONAS A LAS QUE SE NECESITAN ASIGNARLES HABITACIONES
                if lista_personas(i).persona_cedula > -1 then
                cantidad_personas:= cantidad_personas+1;
                end if;
           end loop;
            
            viaje:=seleccionar_fecha_destino;                --SE SELECCIONAN LAS FECHAS Y LOS LUGARES DE DESTINO Y ORIGEN
            
            generar_numero_reserva(numero_reserva,comprador,viaje);
            
            DBMS_OUTPUT.PUT_LINE('Numero de reservacion: '||numero_reserva);

            paquete_vuelo.buscar(viaje,cantidad_personas, lista_personas, numero_reserva);
                     dbms_output.put_line('');
          dbms_output.put_line('--------------------------------------RESERVACION DE HOTEL--------------------------------------'); 
          dbms_output.put_line('');
            DBMS_OUTPUT.PUT_LINE('Desea reservar un hotel? ');
            SELECT (0+ABS(MOD(dbms_random.random,2))) INTO reserva_n FROM dual;
            if(reserva_n = 1) then
                   DBMS_OUTPUT.PUT_LINE('SI');
            paquete_hotel.reservar_hotel(lista_personas,numero_reserva,viaje);     --SE LLAMA AL PAQUETE DE HOTEL PARA RESERVAR UN HOTEL CON EL DESTINO DADO
            else   DBMS_OUTPUT.PUT_LINE('NO');
            end if;
                     dbms_output.put_line('');
         dbms_output.put_line('------------------------------------RESERVACION DE AUTOMOVIL------------------------------------'); 
         dbms_output.put_line('');
             DBMS_OUTPUT.PUT_LINE('Desea reservar un automovil? ');
            SELECT (0+ABS(MOD(dbms_random.random,2))) INTO reserva_n FROM dual;
            if(reserva_n = 1) then
                   DBMS_OUTPUT.PUT_LINE('SI');
            paquete_automovil.listar_proveedores_destino(viaje,cantidad_personas,numero_reserva);     --SE LLAMA AL PAQUETE DE automovil PARA RESERVAR UN auto CON EL DESTINO DADO
            else   DBMS_OUTPUT.PUT_LINE('NO');
            end if;
                            dbms_output.put_line('');  
            dbms_output.put_line('--------------------------------------RESERVACION DE SEGURO-------------------------------------'); 
            dbms_output.put_line('');
             DBMS_OUTPUT.PUT_LINE('Desea contratar  un seguro de viaje? ');
            SELECT (0+ABS(MOD(dbms_random.random,2))) INTO reserva_n FROM dual;
            if(reserva_n = 1) then
                   DBMS_OUTPUT.PUT_LINE('SI');
            paquete_seguro.reservarSeguro(viaje,cantidad_personas,numero_reserva);     --SE LLAMA AL PAQUETE DE seguro PARA CONTRATAR UN SEGURO
            else   DBMS_OUTPUT.PUT_LINE('NO');
            end if;
                     dbms_output.put_line('');
           
            
            paquete_pago.realizarPago(comprador,numero_reserva);     --SE LLAMA AL PAQUETE DE seguro PARA CONTRATAR UN SEGURO
            commit;
        end;
--------------------------------------------------------------------------------------------------------------------------------   
   procedure generar_numero_reserva(numero in out number, cliente usuario.codigo%type, viaje detalles_viaje) is 
   
   fecha_reserva date;
   begin
   
        
        fecha_reserva:= viaje.fecha_ida-30;
   
        insert into reserva 
        values(sec_reserva.nextval,0,fecha_reserva,null,cliente,viaje.fecha_ida,viaje.fecha_regreso)
        returning codigo into numero;

   end;

--------------------------------------------------------------------------------------------------------------------------------   
    function seleccionar_personas(comprador_cod usuario.fk_persona%type) return personas_array is 
    t_personas paquete_reserva.personas_array := paquete_reserva.personas_array(); 
    
    aux_cedula persona.cedula%type; 
    aux_nombre persona.nombre%type; 
    aux_apellido persona.apellido%type;
    entro boolean; 
    x integer:=2; 
    cantidad_personas number;
begin 
        t_personas.extend(10); 
        select nombre,apellido into aux_nombre,aux_apellido from persona where cedula = comprador_cod;  --SE INCLUYE EN LA RESERVA EL USUARIO QUE RESERVO 
        t_personas(1).persona_cedula := comprador_cod; 
        t_personas(1).persona_nombre := aux_nombre;
        t_personas(1).persona_apellido := aux_apellido;
    
        -- Develve números aleatorios entre 1 y 9 que seran la cantidad de personas a incluir en la reserva
        SELECT dbms_random.value(1,9) into cantidad_personas FROM dual;

    SELECT TRUNC(cantidad_personas)into cantidad_personas FROM DUAL; 
        dbms_output.put_line('Personas incluidas en la reserva: '); 

  while (x<=cantidad_personas) loop 
        entro:=false;
        SELECT nombre,cedula,apellido into aux_nombre,aux_cedula,aux_apellido  FROM --BUSCAMOS PERSONAS EN LA BD CON N(cantidad_personas)
            ( SELECT * FROM persona 
            ORDER BY dbms_random.value ) 
            WHERE rownum = 1; 
        --revisamos que la cedula no se encuentre en el varray  
        for ind in 1 .. (cantidad_personas) loop 
            if (t_personas(ind).persona_cedula = aux_cedula) then 
                entro:= true; 
            end if; 
        end loop; 
            if (entro=false) then 
                t_personas(x).persona_cedula := aux_cedula; 
                t_personas(x).persona_nombre := aux_nombre; 
                t_personas(x).persona_apellido := aux_apellido;
                x:=x+1;
            end if;
        
   end loop; 
   for i in 1..(cantidad_personas) loop           -- SE MUESTRA LAS PERSONAS INCLUIDAS EN LA RESERVA
    dbms_output.put_line(i||') Cedula: '||t_personas(i).persona_cedula || '  | Nombre: ' || t_personas(i).persona_nombre||' '|| t_personas(i).persona_apellido); 
   end loop; 
    dbms_output.put_line(''); 
   return t_personas;
end;
--------------------------------------------------------------------------------------------------------------------------------
function seleccionar_fecha_destino return detalles_viaje as
valor number;
fecha_ida date;
fecha_regreso date;
origen lugar.codigo%type;
destino lugar.codigo%type;
origen_nombre lugar.nombre%type;
destino_nombre lugar.nombre%type;  
viaje detalles_viaje;
begin
    SELECT (0+ABS(MOD(dbms_random.random,2))) INTO viaje.modalidad FROM dual; 
   -- Si valor =1 la reserva sera ida y vuelta--
    if (viaje.modalidad = 1) then
     LOOP
       fecha_ida:= generarFecha;
       fecha_regreso:= generarFecha;
       origen := generarCiudades;
       destino := generarCiudades;
     EXIT WHEN ((fecha_regreso>fecha_ida) and  (origen <>destino));
     END LOOP;
    -- Si valor =0 la reserva sera solo de ida--
    else if (viaje.modalidad = 0)then 
    LOOP
        fecha_ida:= generarFecha;
        origen := generarCiudades;
        destino := generarCiudades;
        EXIT WHEN(origen<>destino);
    END LOOP;
    end if;
    end if;
    select nombre into origen_nombre from lugar where codigo = origen;
    select nombre into destino_nombre from lugar where codigo = destino;
    
    viaje.destino:=destino;
    viaje.origen:=origen;
    viaje.fecha_ida:=fecha_ida;
    viaje.fecha_regreso:=fecha_regreso;
    
    
    dbms_output.put_line('---------------------------------------DETALLES DEL VIAJE---------------------------------------'); 
    dbms_output.put_line(''); 
    if (viaje.modalidad =1)then
        DBMS_OUTPUT.PUT_LINE('Modalidad de viaje: Ida y vuelta');
        DBMS_OUTPUT.PUT_LINE('Fecha ida: ' ||fecha_ida);
        DBMS_OUTPUT.PUT_LINE('Fecha vuelta: ' ||fecha_regreso);
    else 
        DBMS_OUTPUT.PUT_LINE('Modalidad de viaje: Solo Ida');
        DBMS_OUTPUT.PUT_LINE('Fecha ida: ' ||fecha_ida);
    end if;
    DBMS_OUTPUT.PUT_LINE('Lugar origen: ' ||origen_nombre);
    DBMS_OUTPUT.PUT_LINE('Lugar destino: ' ||destino_nombre);
    return viaje;
end;
--------------------------------------------------------------------------------------------------------------------------------
procedure realizar_reintegro (n_reserva number) is
fecha_reintegro date;
n_dias number;
res reserva%rowtype;
total number ;
i number :=1;
begin       
         select * into res from reserva where codigo =n_reserva;  
         if (res.fk_promocion is not null) then
            select (r.precio_total-(r.precio_total*p.porcentaje)) into total
            from reserva r, promocion p
            where p.codigo = r.fk_promocion
            and r.codigo =n_reserva;
         else
            total:= res.precio_total;
         end if;
         
         while (i=1) loop
         SELECT trunc(dbms_random.value(1,14)) into n_dias FROM dual;
         fecha_reintegro:= res.fecha_salida-n_dias;
         if(res.fecha<fecha_reintegro)then
            i:=0;
         end if;
         end loop;
        
         insert into reintegro values(sec_reintegro.nextval,total*0.4,fecha_reintegro,n_reserva);
        DBMS_OUTPUT.PUT_LINE('                                Monto total de la reserva: ' ||total||'$');
        DBMS_OUTPUT.PUT_LINE('                                Monto a reintegrar: ' ||total*0.4||'$'||' (40%)');

end;

end;
/
set SERVEROUTPUT on;

--select * from reserva
