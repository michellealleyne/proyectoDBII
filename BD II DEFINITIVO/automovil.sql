create or replace package paquete_automovil is
 -- ARRAY PARA GUARDAR LOS PROVEEDORES QUE SE ENCUENTRAN EN EL DESTINO DE LA RESERVACION
    type r_proveedor is record (   
        proveedor_codigo proveedor.codigo%type,
        proveedor_nombre proveedor.datos_proveedor.nombre%type, 
        proveedor_descripcion proveedor.datos_proveedor.descripcion%type
    );  
   
     type proveedores_array is varray(100) of r_proveedor; 
     
 -- ARRAY PARA GUARDAR LOS VEHICULOS DE LOS PROVEEDORES QUE SE ENCUENTRAN EN EL DESTINO DE LA RESERVACION
       type r_automovil is record (   
        automovil_codigo automovil.codigo%type,
        automovil_marca automovil.marca%type,
        automovil_modelo automovil.modelo%type,
        automovil_precio automovil.precio_por_dia%type,
        automovil_status automovil.fk_status%type
    );  
   
     type automoviles_array is varray(100) of r_automovil; 
   
     procedure listar_proveedores_destino(viaje paquete_reserva.detalles_viaje,cantidad_personas number, n_reserva number); 
     procedure seleccionar_automoviles_proveedor (viaje paquete_reserva.detalles_viaje,proveedor proveedor.codigo%type,cantidad_personas number,n_reserva number);
    
end ;
/
create or replace package body paquete_automovil is 
--------------------------------------------------------------------------------------------------------------------------------   
--------------------------------------------------------------------------------------------------------------------------------
    procedure listar_proveedores_destino(viaje paquete_reserva.detalles_viaje ,cantidad_personas number, n_reserva number) as

         proveedores_destino proveedores_array := proveedores_array(); 
         --SE DECLARA UN CURSOR PARA SELECCIONAR LOS HOTELES DEL DESTINO Y PONERLOS EN EL ARRAY
         
        cursor pro is select pl.codigo, p.datos_proveedor.nombre, p.datos_proveedor.descripcion from proveedor p, proveedor_lugar pl 
        where pl.fk_lugar=viaje.destino and pl.fk_proveedor=p.codigo;
        
        p_codigo proveedor.codigo%type;
        p_nombre proveedor.datos_proveedor.nombre%type;
        p_descripcion proveedor.datos_proveedor.descripcion%type;
        
        nombre_destino lugar.nombre%type;
        capacidad_disponible number;
        cont number;
    
        i number:=1;
        begin
               
        select nombre into nombre_destino from lugar where codigo = viaje.destino;  --BUSCA EL NOMBRE DEL DESTINO
        select count(*) into cont from proveedor_lugar where fk_lugar = viaje.destino;        --CUENTA LA CANTIDAD DE proveedores QUE HAY EN EL DESTINO
        
        if (cont=0) then                                                       --SE VALIDA QUE EXISTAN PROVEEDORES EN EL DESTINO
                DBMS_output.put_line('No hay proveedores de automoviles disponibles en '||nombre_destino );
        else                                                                   -- ENTRA SI HAY PROVEEDORES EN EL DESTINO
                open pro;
                fetch pro into p_codigo,p_nombre,p_descripcion;
                proveedores_destino.extend(cont);
                while (pro%found)
                loop 
                        proveedores_destino(i).proveedor_codigo := p_codigo;   --SE GUARDAN LOS REGISTROS DEL CURSOR EN EL ARRAY DE PROVEEDORES_DESTINO
                        proveedores_destino(i).proveedor_nombre := p_nombre;
                        proveedores_destino(i).proveedor_descripcion := p_descripcion;
                        i:=i+1;
                        fetch pro into p_codigo,p_nombre,p_descripcion;
            end loop;
            close pro;
                    DBMS_output.put_line('');
                    DBMS_output.put_line('                           Proveedores disponibles en: '||nombre_destino);
                    DBMS_output.put_line('                       ----------------------------------------------');
             for i in 1..(cont) loop                                   --IMPRIME LOS proveedores QUE SE ENCUETRAN EN EL DESTINO
                    DBMS_output.put_line('                         Codigo: '||proveedores_destino(i).proveedor_codigo);
                    DBMS_output.put_line('                         Nombre: '|| proveedores_destino(i).proveedor_nombre);
                    DBMS_output.put_line('                         Descripcion: '||  proveedores_destino(i).proveedor_descripcion);       
                    DBMS_output.put_line('                       ----------------------------------------------');
             end loop;
        i:=1;
        
      while (i<=cont) loop -- ACA SE BUSCARA DISPONIBLIDIAD
                    DBMS_output.put_line('');
                    DBMS_output.put_line('                         Proveedor seleccionado: '|| proveedores_destino(i).proveedor_nombre);
                    DBMS_output.put_line('                         Buscando automoviles disponibles en el proveedor...');
            
            select count(codigo) into capacidad_disponible from automovil 
            where fk_proveedor_lugar = proveedores_destino(i).proveedor_codigo and fk_status =1; --SELECCIONA LA CANTIDAD DE CARROS DISPONIBLES
           
            if((capacidad_disponible*5)>=cantidad_personas)then        --VERIFICA QUE HAYA CAPACIDAD PARA TODAS LAS PERSONAS
            seleccionar_automoviles_proveedor(viaje,proveedores_destino(i).proveedor_codigo,cantidad_personas,n_reserva);
            i:=cont+1;                                          
            else    DBMS_output.put_line('                         No hay automoviles disponibles en el proveedor actualmente.');
            i:=i+1;                                             --SI NO HAY AUTOS DISPONIBLES SE AVANZA A BUSCAR EN EL SIGUIENTE PROVEEDOR
            end if;
      end loop;
     end if;
end;
--------------------------------------------------------------------------------------------------------------------------------
    procedure seleccionar_automoviles_proveedor (viaje paquete_reserva.detalles_viaje, proveedor proveedor.codigo%type,cantidad_personas number,  n_reserva number) as 
    
    autos automoviles_array := automoviles_array();     
    cursor au is select * from automovil where fk_proveedor_lugar=proveedor and fk_status=1;
    au_registro automovil%rowtype;
    
    i number:=1;
    aux number:=0;
    n number := cantidad_personas;
    n_dias number;
    cambio number :=0;
    fecha_regreso date :=viaje.fecha_regreso;
    precio_auto number;
    total_autos number:=0;
    codigo_auto_r number;
    precio_iva number;
    begin 
    autos.extend(100);
  
         open au;
         fetch au into au_registro;
         DBMS_OUTPUT.PUT_LINE('');
         while (au%found) loop
                autos(i).automovil_codigo := au_registro.codigo;
                autos(i).automovil_marca := au_registro.marca;
                autos(i).automovil_modelo := au_registro.modelo;
                autos(i).automovil_precio := au_registro.precio_por_dia;
                DBMS_output.put_line('                       ..............................................');
                DBMS_OUTPUT.PUT_LINE('                       '||i||')'||'Marca y modelo: '||au_registro.marca||' '||au_registro.modelo);        
                DBMS_OUTPUT.PUT_LINE('                         Precio por dia: '||au_registro.precio_por_dia);        
                DBMS_OUTPUT.PUT_LINE('                         Codigo de automovil: '||au_registro.codigo);                     
             fetch au into au_registro;
             i:=i+1;
         end loop;
         close au;
                DBMS_output.put_line('                       ..............................................');
                DBMS_OUTPUT.PUT_LINE('') ;     
                DBMS_OUTPUT.PUT_LINE('                         Autos seleccionados... ') ;       

          i :=1;
          
           DBMS_OUTPUT.PUT_LINE('') ;    
           DBMS_OUTPUT.PUT_LINE('       _______________________________________________________________________________');
          while (n>0) loop
           DBMS_OUTPUT.PUT_LINE('               '||i||')'||autos(i).automovil_marca||' '|| autos(i).automovil_modelo||'                     Precio/dia: '||autos(i).automovil_precio||'$');     
                        if (viaje.modalidad=0 and cambio=0)then  --SI ES SOLO IDA NECESITO PONER UNA FECHA TOPE PARA LA RESERVA DEL AUTO
                            SELECT trunc(dbms_random.value(1, 12)) into n_dias FROM dual;
                            fecha_regreso := viaje.fecha_ida + n_dias;
                            cambio:=1;
                        end if;
                        
            insert into reserva_automovil ra values (sec_reserva_automovil.nextval, 
            datos_reservacion(viaje.fecha_ida,fecha_regreso,
            datos_reservacion.calcular_costo(autos(i).automovil_precio,viaje.fecha_ida,fecha_regreso)),
            datos_costo(0),n_reserva,autos(i).automovil_codigo) returning ra.codigo,ra.reserva_auto.precio into codigo_auto_r,precio_auto ; 
            
            update reserva_automovil ra 
            set ra.costo_automovil.precio = datos_costo.calcular_costo(precio_auto)
            where ra.codigo = codigo_auto_r returning ra.costo_automovil.precio into precio_iva;
                   
                     n:=n-5;
                    
                    total_autos:=total_autos+precio_auto;
            DBMS_OUTPUT.PUT_LINE('              Precio total del '||autos(i).automovil_marca||' '|| autos(i).automovil_modelo|| '                    '||precio_auto||'$') ;     
                    i:=i+1;
          DBMS_OUTPUT.PUT_LINE('       _______________________________________________________________________________');
          end loop;
          DBMS_OUTPUT.PUT_LINE(' ') ;  
          DBMS_OUTPUT.PUT_LINE('        Monto total a pagar :    '||total_autos) ;  
          DBMS_output.put_line('        Impuesto agregado:        16%          ');
          DBMS_OUTPUT.PUT_LINE('        Monto total de automoviles :    '||total_autos*1.16||'$') ;   
          DBMS_OUTPUT.PUT_LINE(' ') ;  
          DBMS_output.put_line('        Aceptar reserva  '); 
          DBMS_output.put_line('        Excelente! Su reserva de automovil ha sido procesada exitosamente. Gracias por preferirnos!');
            
    end;
--------------------------------------------------------------------------------------------------------------------------------
end;

--select a.codigo,a.reserva_auto.precio,a.fk_reserva,a.fk_automovil from reserva_automovil a;

--select * from automovil  --hola

--select * from reserva;
