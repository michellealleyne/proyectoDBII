
create or replace package paquete_hotel is
 -- ARRAY PARA GUARDAR LOS HOTELES QUE SE ENCUENTRAN EN EL DESTINO DE LA RESERVACION
    type r_hoteles is record (   
        hotel_codigo hotel.codigo%type,
        hotel_nombre hotel.datos_hotel.nombre%type, 
        hotel_descripcion hotel.datos_hotel.descripcion%type
    );  
   
     type hoteles_array is varray(100) of r_hoteles; 
 -- ARRAY PARA GUARDAR LAS HABITACIONES DE LOS HOTELES QUE SE ENCUENTRAN EN EL DESTINO DE LA RESERVACION
       type r_habitaciones is record (   
        habitacion_codigo habitacion.codigo%type,
        habitacion_tipo habitacion.tipo%type,
        habitacion_descripcion habitacion.descripcion%type,
        habitacion_precio habitacion.precio_por_dia%type,
        habitacion_capacidad habitacion.capacidad%type,
        habitacion_status habitacion.fk_status%type
    );  
   
     type habitaciones_array is varray(100) of r_habitaciones; 
-- ARRAY PARA GUARDAR LAS PERSONAS JUNTO A LA HABITACION QUE SE LE ASIGNO

     type r_habitaciones_personas is record (   
        habitacion_codigo habitacion.codigo%type,
        persona_cedula persona.cedula%type
    );  
   
     type habitaciones_personas_array is varray(100) of r_habitaciones_personas; 
 
     procedure reservar_hotel(personas paquete_reserva.personas_array, n_reserva number,viaje paquete_reserva.detalles_viaje);   
     procedure listar_hoteles_destino(personas paquete_reserva.personas_array,n_reserva number,viaje paquete_reserva.detalles_viaje); 
     procedure seleccionar_habitaciones_hotel (hotel hotel.codigo%type,personas paquete_reserva.personas_array,cantidad_personas number,n_reserva number,viaje paquete_reserva.detalles_viaje);
     procedure personas_habitaciones_distintas (habitaciones habitaciones_array, personas paquete_reserva.personas_array, cantidad_personas number,habitaciones_insertar in out habitaciones_array);
     procedure insertar_habitaciones(habitaciones_insertar habitaciones_array, n_reserva number,viaje paquete_reserva.detalles_viaje);
   
end ;
/
create or replace package body paquete_hotel is 
--------------------------------------------------------------------------------------------------------------------------------    
    procedure reservar_hotel(personas paquete_reserva.personas_array, n_reserva number,viaje paquete_reserva.detalles_viaje) as
    begin
        listar_hoteles_destino(personas,n_reserva,viaje);
    end;
--------------------------------------------------------------------------------------------------------------------------------
    procedure listar_hoteles_destino(personas paquete_reserva.personas_array, n_reserva number,viaje paquete_reserva.detalles_viaje) as

         hoteles_destino hoteles_array := hoteles_array(); 
         --SE DECLARA UN CURSOR PARA SELECCIONAR LOS HOTELES DEL DESTINO Y PONERLOS EN EL ARRAY
        cursor hoteles is select hotel.codigo, hotel.datos_hotel.nombre, hotel.datos_hotel.descripcion from hotel hotel where fk_lugar=viaje.destino;
        h_codigo hotel.codigo%type;
        h_nombre hotel.datos_hotel.nombre%type;
        h_descripcion hotel.datos_hotel.descripcion%type;
        
        nombre_destino lugar.nombre%type;
        cont number;
    
        i number:=1;
        capacidad_disponible number:=0;
        cantidad_personas number:=0;
        
        begin
        
           for i in personas.first..personas.last loop               --SE CUENTAN LAS PERSONAS A LAS QUE SE NECESITAN ASIGNARLES HABITACIONES
            if personas(i).persona_cedula > -1 then
                cantidad_personas:= cantidad_personas+1;
                end if;
           end loop;
               
        select nombre into nombre_destino from lugar where codigo = viaje.destino;  --BUSCA EL NOMBRE DEL DESTINO
        select count(*) into cont from hotel where fk_lugar = viaje.destino;        --CUENTA LA CANTIDAD DE HOTELES QUE HAY EN EL DESTINO
        
        if (cont=0) then                                                       --SE VALIDA QUE EXISTAN HOTELES EN EL DESTINO
                DBMS_output.put_line('No hay hoteles disponibles en '||nombre_destino );
        else                                                                   -- ENTRA SI HAY HOTELES EN EL DESTINO
                open hoteles;
                fetch hoteles into h_codigo,h_nombre,h_descripcion;
                hoteles_destino.extend(cont);
                while (hoteles%found)
                loop 
                        hoteles_destino(i).hotel_codigo := h_codigo;   --SE GUARDAN LOS REGISTROS DEL CURSOR EN EL ARRAY DE HOTELES_DESTINO
                        hoteles_destino(i).hotel_nombre := h_nombre;
                        hoteles_destino(i).hotel_descripcion := h_descripcion;
                        i:=i+1;
                        fetch hoteles into h_codigo,h_nombre,h_descripcion;
            end loop;
            close hoteles;
             DBMS_output.put_line('');
             DBMS_output.put_line('                          Hoteles disponibles en: '||nombre_destino);
             DBMS_output.put_line('                       ----------------------------------------------');
             for i in 1..(cont) loop                                   --IMPRIME LOS HOTELES QUE SE ENCUETRAN EN EL DESTINO
                        DBMS_output.put_line('                         Codigo: '||hoteles_destino(i).hotel_codigo);
                        DBMS_output.put_line('                         Nombre: '|| hoteles_destino(i).hotel_nombre);
                        DBMS_output.put_line('                         Descripcion: '||  hoteles_destino(i).hotel_descripcion);
                        DBMS_output.put_line('                       ----------------------------------------------');
             end loop;
        i:=1;
        
      while (i<=cont) loop -- ACA SE BUSCARA DISPONIBLIDIAD HOTEL POR HOTEL Y SE VERIFICARA QUE TODOS LOS HUESPEDES SE LES ASIGNE HABITACION.

                        DBMS_output.put_line('                         Hotel seleccionado: '|| hoteles_destino(i).hotel_nombre);
                        DBMS_output.put_line('                         Buscando habitaciones disponibles en el hotel...');
            
            select sum(capacidad) into capacidad_disponible from habitacion 
            where fk_hotel = hoteles_destino(i).hotel_codigo and fk_status =1; --SELECCIONA LA CAPACIDAD DE PERSONAS QUE CABEN EN EL HOTEL BASANDOSE EN LAS HABITACIONES DISPONIBLES
           
            if(capacidad_disponible>=cantidad_personas)then        --VERIFICA QUE HAYA CAPACIDAD EN EL HOTEL PARA ALOJAR A LAS PERSONAS
            seleccionar_habitaciones_hotel(hoteles_destino(i).hotel_codigo,personas,cantidad_personas,n_reserva,viaje);
            i:=cont+1;                                            --SI HAY HABITACIONES DISPONIBLES ENTONCES I=CONT+1 PARA SALIR DEL CICLO 
            else        DBMS_output.put_line('                        No hay habitaciones disponibles en el hotel actualmente');
            i:=i+1;                                             --SI NO HAY HABITACIONES DISPONIBLES SE AVANZA A BUSCAR EN EL SIGUIENTE HOTEL
            end if;
      end loop;
     end if;
end;
--------------------------------------------------------------------------------------------------------------------------------
    procedure seleccionar_habitaciones_hotel (hotel hotel.codigo%type,personas paquete_reserva.personas_array,cantidad_personas number, n_reserva number,viaje paquete_reserva.detalles_viaje) as 
    habitaciones habitaciones_array := habitaciones_array();     
    cursor hab is select * from habitacion where fk_hotel=hotel and fk_status=1;
    h_registro habitacion%rowtype;
    i number:=1;
    aux number:=0;
     habitaciones_insertar habitaciones_array:= habitaciones_array();
    begin 
    habitaciones.extend(100);
    habitaciones_insertar.extend(100);
         open hab;
         fetch hab into h_registro;
         DBMS_OUTPUT.PUT_LINE('');
         while (hab%found) loop
                habitaciones(i).habitacion_codigo := h_registro.codigo;
                habitaciones(i).habitacion_capacidad := h_registro.capacidad;
                habitaciones(i).habitacion_precio := h_registro.precio_por_dia;
                DBMS_output.put_line('                       ..............................................');
                DBMS_OUTPUT.PUT_LINE('                        '||i||')Tipo: '|| h_registro.tipo);        
                DBMS_OUTPUT.PUT_LINE('                         Precio/dia: '||h_registro.precio_por_dia ||'$');        
                DBMS_OUTPUT.PUT_LINE('                         Capacidad: '||h_registro.capacidad);        
                DBMS_OUTPUT.PUT_LINE('                         Codigo de habitacion: '||h_registro.codigo);        

             
             
             fetch hab into h_registro;
             i:=i+1;
         end loop;
         close hab;
                DBMS_output.put_line('                       ..............................................');
                DBMS_OUTPUT.PUT_LINE('') ;       
          select count(codigo) into aux from habitacion where capacidad >=cantidad_personas and fk_hotel= hotel; --SE CUENTA LAS HABITACIONES DISPONIBLES EN LA QUE QUEPAN TODAS LAS PERSONAS
          
        if (aux>0) then     --ENTRA SI HAY ALGUNA HABITACION DONDE PUEDAN ALOJARSE LA TOTALIDAD DE LAS PERSONAS DE LA RESERVA
        
        
              select codigo,precio_por_dia into habitaciones_insertar(1).habitacion_codigo,
              habitaciones_insertar(1).habitacion_precio
              from habitacion where capacidad >=cantidad_personas and fk_hotel= hotel
              order by capacidad  fetch FIRST 1 row only;  
            DBMS_output.put_line('                       ..............................................');
            DBMS_OUTPUT.PUT_LINE('                SI hay habitacion disponible (Codigo: '||habitaciones_insertar(1).habitacion_codigo||' ) para '||cantidad_personas||' personas.');
            DBMS_OUTPUT.PUT_LINE('                Precio/dia ----- '||habitaciones_insertar(1).habitacion_precio||' $');
            DBMS_OUTPUT.PUT_LINE('');
            DBMS_OUTPUT.PUT_LINE('                Se selecciono dicha habitacion...');
            
    
        else              --ENTRA CUANDO SE DEBEN ASIGNAR DISTINTAS HABITACIONES A LAS PERSONAS DE LA RESERVA, DEBIDO A QUE NO CABEN EN UNA SOLA
        
            DBMS_OUTPUT.PUT_LINE('                NO hay habitacion disponible para '||cantidad_personas||' personas, se procedera a ubicarlos en distintas habitaciones');
            personas_habitaciones_distintas(habitaciones, personas, cantidad_personas,habitaciones_insertar);
        end if;
        
        insertar_habitaciones(habitaciones_insertar,n_reserva,viaje);
    
    end;
--------------------------------------------------------------------------------------------------------------------------------
    procedure personas_habitaciones_distintas (habitaciones habitaciones_array, personas paquete_reserva.personas_array, cantidad_personas number, habitaciones_insertar in out habitaciones_array) is
            
    hab_per habitaciones_personas_array := habitaciones_personas_array();
    cont number:=1;
    habitacion_seleccionada habitacion.codigo%type;
    capacidad_seleccionada habitacion.capacidad%type:= 0;
  
    begin
    hab_per.extend(cantidad_personas);
    
                for i in 1..cantidad_personas loop
                        if (capacidad_seleccionada = 0) then    --SI LA CAPACIDAD DE LA HABITACION YA SE ENCUENTRA FULL (O IGUAL A CERO) AGARRO LA SIGUIENTE HABITACION
                             habitacion_seleccionada:= habitaciones(cont).habitacion_codigo;
                             capacidad_seleccionada := habitaciones(cont).habitacion_capacidad;
                             habitaciones_insertar(cont).habitacion_codigo := habitaciones(cont).habitacion_codigo;
                             habitaciones_insertar(cont).habitacion_precio := habitaciones(cont).habitacion_precio;
                             cont:=cont+1;
                        end if;
                    hab_per(i).habitacion_codigo:=habitacion_seleccionada;
                    hab_per(i).persona_cedula:=personas(i).persona_cedula;
                    capacidad_seleccionada :=capacidad_seleccionada-1;  
                end loop;
                
        DBMS_OUTPUT.PUT_LINE('') ;       
        DBMS_OUTPUT.PUT_LINE('          Habitaciones asignadas por personas: ');
        DBMS_OUTPUT.PUT_LINE('       _______________________________________________________________________________');
        DBMS_OUTPUT.PUT_LINE('') ;                                          --SE MUESTRA LAS HABITACIONES ASIGNADAS CON SUS PERSONAS
    for i in hab_per.first..hab_per.last loop
        DBMS_OUTPUT.PUT_LINE('         '||i||')    '||'Habitacion numero: '||hab_per(i).habitacion_codigo|| '       Asignada a la persona: '||hab_per(i).persona_cedula) ;  
        DBMS_OUTPUT.PUT_LINE('       _______________________________________________________________________________');
    end loop;
    
    end;
    
--------------------------------------------------------------------------------------------------------------------------------    
         procedure insertar_habitaciones(habitaciones_insertar habitaciones_array,n_reserva number,viaje paquete_reserva.detalles_viaje)is
            n_dias number;
            fecha_regreso date:=viaje.fecha_regreso;
            cod_hotel hotel.codigo%type;
            total_habitaciones number:=0;
            precio_habitacion number;
            precio_iva number;
         begin
         
             if (viaje.modalidad=0)then  --SI ES SOLO IDA NECESITO PONER UNA FECHA TOPE PARA LA RESERVA 
             SELECT trunc(dbms_random.value(1, 12)) into n_dias FROM dual;
             fecha_regreso := viaje.fecha_ida + n_dias;
             end if;         
                                
           DBMS_OUTPUT.PUT_LINE('') ;   
           DBMS_OUTPUT.PUT_LINE('       _______________________________________________________________________________');
           for i in habitaciones_insertar.first..habitaciones_insertar.last loop
                if(habitaciones_insertar(i).habitacion_codigo>=0)then
                
                    insert into reserva_hotel rh values (sec_reserva_hotel.nextval, 
                    datos_reservacion(viaje.fecha_ida,fecha_regreso,
                    datos_reservacion.calcular_costo(habitaciones_insertar(i).habitacion_precio,viaje.fecha_ida,fecha_regreso)),
                    datos_costo(0),n_reserva,habitaciones_insertar(i).habitacion_codigo)returning rh.codigo, rh.reserva_hotel.precio into cod_hotel,precio_habitacion ; 
                     
                     update reserva_hotel ra
                     set ra.costo_hotel.precio = datos_costo.calcular_costo(precio_habitacion) 
                     where ra.codigo = cod_hotel returning ra.costo_hotel.precio into precio_iva;
 
                   
                    total_habitaciones:=total_habitaciones+precio_habitacion;
                    DBMS_OUTPUT.PUT_LINE('          Precio total (precio*dias) de la habitacion '||habitaciones_insertar(i).habitacion_codigo||'           '||precio_habitacion||'$') ;     
                    DBMS_OUTPUT.PUT_LINE('       _______________________________________________________________________________'); 
                end if;
           end loop;
                    DBMS_OUTPUT.PUT_LINE('') ;     
                    DBMS_OUTPUT.PUT_LINE('          Monto total a pagar :  '||total_habitaciones||'$') ;  
                    DBMS_output.put_line('          Impuesto agregado:        16%          ');
                    DBMS_OUTPUT.PUT_LINE('          Monto total de habitaciones :    '||total_habitaciones*1.16||'$') ;   
                    DBMS_OUTPUT.PUT_LINE(' ');
                    DBMS_output.put_line('          Aceptar reserva  '); 
                    DBMS_output.put_line('          Excelente! Su reserva de hotel ha sido procesada exitosamente. Gracias por preferirnos!');
            
         end;
--------------------------------------------------------------------------------------------------------------------------------
  

end;

--select a.codigo,a.reserva_hotel.precio,a.fk_reserva,a.fk_habitacion from reserva_hotel a;
--select * from habitacion;


