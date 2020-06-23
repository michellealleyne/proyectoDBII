create or replace package paquete_pago is
     type r_pagos is record ( 
        tipo_cod tipo_pago.codigo%type, 
        monto_a_pagar pago.monto_pagado%type 
    ); 
    type tipos_pagos is varray (2) of r_pagos; 
    type descripcion_pago is varray (2) of varchar2(50);
    procedure realizarPago(comprador_cod usuario.codigo%type, reserva_cod  reserva.codigo%type);
    function  elegirTipoPago(comprador_cod usuario.codigo%type,precio number, modo_elegido in out number, club_de_millas number, n_millas in out number, modo in out varchar2, reserva_cod number) return tipos_pagos; 
    procedure realizarPromocion (reserva_cod number, precio_con_promocion in out number);
    procedure insertarPago(reserva_cod number, precio_con_promocion number, tipos tipos_pagos, descripcion descripcion_pago);
    procedure listarFactura (reserva_cod number, precio_total in out number) ;
    procedure cancelar_reserva(n_reserva reserva.codigo%type);
end;
/

create or replace package body paquete_pago is
 -------------------------------------------------------------------------------------------------------------------------------
    procedure realizarPago(comprador_cod usuario.codigo%type, reserva_cod  reserva.codigo%type) is
        club_de_millas usuario.socio_club_de_millas%type;
        info_reserva  reserva%rowtype;
        i number :=1;
        modo_elegido number;
        modo varchar2(80);
        porcentaje number:=0;
        n_millas number;
        random number;
        numero_tarjeta number;
        millas_res number;
        precio_con_promocion number;
        tipos tipos_pagos:= tipos_pagos();
        descripcion descripcion_pago := descripcion_pago();
        monto_total number:=0;
        si_pago number :=0;
    begin
           dbms_output.put_line('--------------------------------------PAGO DE LA RESERVACIÓN--------------------------------------'); 
           select socio_club_de_millas into club_de_millas from usuario where codigo=comprador_cod;    --SE VERIFICA QUE EL USUARI PERTENEZCA AL CLUB DE MILLAS
            
           select * into info_reserva from reserva where codigo =reserva_cod;                          --SE BUSCA LA INFO DE LA RESERVA
           select sum (costo) into monto_total from vuelo_reserva_boleto where fk_reserva = reserva_cod;
           tipos.extend(2);
           descripcion.extend(2);
           tipos:= elegirTipoPago(comprador_cod,info_reserva.precio_total, modo_elegido, club_de_millas, n_millas, modo, reserva_cod); --SE ELIGE EL TIPO DE PAGO
           listarFactura(reserva_cod, monto_total); 
           precio_con_promocion:= monto_total;
                 -- Se REALIZA LA ELECCION DE LA PROMOCION--
                SELECT (0+ABS(MOD(dbms_random.random,2))) INTO random FROM dual;
                if (random =1) then
                      DBMS_output.put_line (' ');
                    
                      DBMS_output.put_line ('---------------------------------------------------------------------------------------------------');
                      DBMS_output.put_line ('                               FELCITACIONES!! SE HA GANADO UN DESCUENTO!'); 
                      realizarPromocion( reserva_cod, precio_con_promocion);
                    
                end if ;
               DBMS_output.put_line('  ');
               DBMS_output.put_line('----------------------------- CONFIRMACION DE DATOS DE LA RESERVA --------------------------------');
               DBMS_output.put_line('                                FECHA DE LA RESERVA:  '||info_reserva.fecha ||'                   ');
               DBMS_output.put_line('                                FECHA DE VUELO:  '     ||info_reserva.fecha_salida||'           ');
                if (info_reserva.fecha_regreso is not null) then   
               DBMS_output.put_line('                                FECHA DE REGRESO:  '     ||info_reserva.fecha_regreso||'           ');
               end if;
               DBMS_output.put_line('                                FORMA DE PAGO:  '        ||modo||'                                 ');
               
               
        --SE ESPECIFICAN LOS MONTOS A PAGAR POR CADA TARJETA Y SE GUARDAN EN EL ARRAY TIPOS--                   
               if ((modo_elegido =1) or (modo_elegido =2)) then
                   DBMS_output.put_line ('                                MONTO A PAGAR:  '        ||precio_con_promocion||'               ');
                   tipos(1).monto_a_pagar:=precio_con_promocion;
                else if (modo_elegido=3) then
                   while (porcentaje<10)
                   loop
                         SELECT (1+ABS(MOD(dbms_random.random,89))) INTO porcentaje FROM dual;
                   end loop;

                   DBMS_output.put_line('                                MONTO A PAGAR:  '        ||precio_con_promocion||'                ');
                   DBMS_output.put_line('                                                                              ');
                   DBMS_output.put_line('                                1. TARJETA DEBITO : ' ||precio_con_promocion*PORCENTAJE/100 ||'  ');
                   DBMS_output.put_line('                                2. TARJETA CREDITO: ' ||precio_con_promocion*(100-PORCENTAJE)/100||'  ');
                   tipos(1).monto_a_pagar:=precio_con_promocion*(100-PORCENTAJE)/100;
                   tipos(2).monto_a_pagar:=precio_con_promocion*PORCENTAJE/100 ;
              else if (modo_elegido =4)  then
                
                    DBMS_output.put_line ('                                PAGO EN $:  '           ||precio_con_promocion||'                    ');
                    DBMS_output.put_line ('                                PAGO EN MILLAS:  '      ||precio_con_promocion/10||'                 ');
                    DBMS_output.put_line ('                                MILLAS DISPONIBLES:  '  ||n_millas||'                                ');
                    tipos(1).monto_a_pagar:=precio_con_promocion;
              end if;
              end if;
              end if;
             
               
               -- SE MUESTRAN LOS DATOS DE LA RESERVA--
               DBMS_output.put_line ('');
               DBMS_output.put_line ('------------------------------ DESEA CONTINUAR CON EL PAGO? -------------------------------------');
               
               SELECT (0+ABS(MOD(dbms_random.random,2))) INTO random FROM dual;
               if (random=0) then 
                     DBMS_OUTPUT.PUT_LINE('                                            NO');
                   
                     cancelar_reserva(reserva_cod);
               else 
                    si_pago:=1;
                     DBMS_OUTPUT.PUT_LINE('                                            SI');
                     SELECT (1000+ABS(MOD(dbms_random.random,4000))) INTO numero_tarjeta FROM dual;
                     if ((modo_elegido =1) or (modo_elegido=2))then
                            DBMS_output.put_line ('                               COLOQUE EL NUMERO DE SU TARJETA');
                            DBMS_output.put_line ('                               NRO TARJETA: ****-****-****-'|| numero_tarjeta );

                            if (modo_elegido =1)then
                                SELECT (1+ABS(MOD(dbms_random.random,3))) INTO random FROM dual;
                                case (random)
                                when 1 then  descripcion(1):= 'VISA-'||numero_tarjeta;
                                when 2 then  descripcion(1):= 'MASTER-'||numero_tarjeta;
                                when 3 then  descripcion(1):= 'AMERICAN EXPRESS-'||numero_tarjeta;
                                end case;
                            else
                                descripcion(1):= numero_tarjeta;
                            end if;
                     else if(modo_elegido=3) then
                            DBMS_output.put_line ('                               COLOQUE EL NUMERO DE LA TARJETA DE DEBITO');
                            DBMS_output.put_line ('                               NRO TARJETA: ****-****-****-'|| numero_tarjeta );

                            descripcion(2):= numero_tarjeta;
                            SELECT (1000+ABS(MOD(dbms_random.random,4000))) INTO numero_tarjeta FROM dual;
                            DBMS_output.put_line ('                                            ');
                            DBMS_output.put_line ('                               COLOQUE EL NUMERO DE LA TARJETA DE CREDITO');
                            DBMS_output.put_line ('                               NRO TARJETA: ****-****-****-'|| numero_tarjeta );

                            SELECT (1+ABS(MOD(dbms_random.random,3))) INTO random FROM dual;
                                case (random)
                                when 1 then  descripcion(1):= 'VISA-'||numero_tarjeta;
                                when 2 then  descripcion(1):= 'MASTER-'||numero_tarjeta;
                                when 3 then  descripcion(1):= 'AMERICAN EXPRESS-'||numero_tarjeta;
                                end case;
                     else    millas_res:=n_millas-(precio_con_promocion/10);
                             DBMS_output.put_line ('                               MILLAS RESTANTES AL COMPLETAR EL PAGO:' ||millas_res);
                             descripcion(1):= 'Club Premium Millas -'|| millas_res||' Millas restantes';
                     end if;
                     end if;
                            DBMS_output.put_line ('  ');
                            DBMS_output.put_line ('                                       --------------------  ');
                            DBMS_output.put_line ('                                      |    ACEPTAR PAGO    |');
                            DBMS_output.put_line ('                                       --------------------  ');
                            DBMS_output.put_line ('                        PAGO DE RESERVA COMPLETADO EXITOSAMENTE. DISFRUTE DE SU VIAJE! :)');
                            insertarPago(reserva_cod, precio_con_promocion, tipos, descripcion );
               end if;
               
            if (si_pago=1) then
            SELECT (0+ABS(MOD(dbms_random.random,3))) into random  FROM dual;
            if(random =2) then
            DBMS_output.put_line ('                                       --------------------  ');
            DBMS_OUTPUT.PUT_LINE('                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
            DBMS_OUTPUT.PUT_LINE('                                        Al paso de unos dias... ');
            DBMS_OUTPUT.PUT_LINE('                                Vaya me he arrepentido, deseo un reintegro! ');
            paquete_reserva.realizar_reintegro(reserva_cod);    
            end if;
            end if;
            commit;
    end;
--------------------------------------------------------------------------------------------------------------------------------
   function elegirTipoPago (comprador_cod usuario.codigo%type,precio number, modo_elegido in out number, club_de_millas number, n_millas in out number, modo in out varchar2, reserva_cod number) return tipos_pagos
   is
         aux number :=1;
         numero number;
         tipos tipos_pagos:= tipos_pagos();
         millas_gastadas number;
         millas_actuales number;
    begin
           tipos.extend(2);
                        select sum(millas) into millas_actuales
                        from ruta 
                        where codigo  in (select distinct ru.codigo
                                        from vuelo_reserva_boleto vrb 
                                        inner join ruta ru
                                        on  vrb.fk_ruta =ru.codigo
                                        where vrb.fk_reserva=reserva_cod);
           while (aux <>0)
           loop
                    DBMS_output.put_line('                                                 ');
                    DBMS_output.put_line('                                      ELIJA UN  METODO DE PAGO    ');
                if (club_de_millas=0) then
                    DBMS_output.put_line('                                      1.  TARJETA DE CREDITO          ');
                    DBMS_output.put_line('                                      2.  TARJETA DE DEBITO           ');
                    DBMS_output.put_line('                                      3.  TARJETA DE CREDITO Y DEBITO ');
                    aux:=0;
                    SELECT (1+ABS(MOD(dbms_random.random,3))) INTO modo_elegido FROM dual;  --SE ELIGE EL MODO DE PAGO--
               else
                    DBMS_output.put_line('                                      1.  TARJETA DE CREDITO          ');
                    DBMS_output.put_line('                                      2.  TARJETA DE DEBITO           ');
                    DBMS_output.put_line('                                      3.  TARJETA DE CREDITO Y DEBITO ');
                    DBMS_output.put_line('                                      4.  MILLAS DEL CLUB PREMIUM     ');
                 
                    SELECT (1+ABS(MOD(dbms_random.random,4))) INTO modo_elegido FROM dual;  --SE ELIGE EL MODO DE PAGO--
                    
                    --SI EL MODO ELEGIDO ES EL 4, HAY QUE BUSCAR LAS MILLAS QUE TIENE EL USUARIO--
                    if (modo_elegido =4) then
                        select sum(millas) into numero
                        from ruta 
                        where codigo in (select distinct ru.codigo
                                        from vuelo_reserva_boleto vrb 
                                        inner join ruta ru
                                        on  vrb.fk_ruta =ru.codigo
                                        where vrb.fk_reserva in ( select re.codigo
                                                                from reserva re
                                                                where re.fk_usuario = 1));  
                        numero:= numero-millas_actuales;
                        --... Y RESTARLE LAS QUE YA RECORRIO--                                         
                       select sum (p.monto_pagado/10)
                       into  millas_gastadas 
                       from pago p, reserva r 
                       where r.fk_usuario = comprador_cod
                       and p.fk_tipo_pago = 3 
                       and p.fk_reserva = r.codigo;
                   
                       if (millas_gastadas is not null) then
                             n_millas:=numero-millas_gastadas;
                       else
                            n_millas:=numero;
                       end if;
                       -- SE VERIFICA QUE TENGA SUFICIENTES MILLAS PARA PAGAR LA RESERVA--
                       if (n_millas*10>=precio) then
                                 aux:=0;
                       else
                            DBMS_output.put_line('');
                            DBMS_output.put_line('                     NO SE POSEEN LAS MILLAS SUFICIENTES PARA PAGAR LA RESERVA');
                       end if;
                   else aux:=0;
                   end if;   
           end if;
           end loop;
           
            CASE (modo_elegido)
             WHEN 1 THEN 
                 modo:= 'TARJETA DE CREDITO';
                 tipos(1).tipo_cod:=1;
             WHEN 2 THEN 
                 tipos(1).tipo_cod:=2;
                 modo:= 'TARJETA DE DEBITO';
             WHEN 3 THEN 
                 tipos(1).tipo_cod:=1;
                 tipos(2).tipo_cod:=2;
                 modo:= 'TARJETA DE CREDITO Y TARJETA DE DEBITO';
             WHEN 4 THEN 
                 tipos(1).tipo_cod:=3;
                 modo:= 'MILLAS DEL CLUB PREMIUM';
            END CASE;
            DBMS_output.put_line(' ' );
            DBMS_output.put_line('                                    TIPO DE PAGO ELEGIDO: ' ||modo);
    return tipos;
    end;
--------------------------------------------------------------------------------------------------------------------------------
   procedure realizarPromocion (reserva_cod number, precio_con_promocion in out number) is
    p_codigo number;
    p_porcentaje number;
    p_descripcion varchar2(400);
    p_nombre varchar2(90);
    begin 
            -- SE BUSCA UN PROMOCION RANDOM--
            SELECT codigo,porcentaje, descripcion, nombre
            INTO p_codigo, p_porcentaje , p_descripcion,p_nombre
            FROM
            ( SELECT * FROM promocion
            ORDER BY dbms_random.value ) 
            WHERE rownum = 1; 
            --SE LE ASIGNA LA PROMO A LA RESERVA--
            update  reserva set fk_promocion = p_codigo where  codigo=reserva_cod;
        
            DBMS_output.put_line('                                PROMOCION:     ' ||p_nombre ||'-->' || p_descripcion);
            DBMS_output.put_line('                                DESCUENTO DEL: ' ||p_porcentaje*100||'%');
            DBMS_output.put_line('                                ANTES:         ' ||precio_con_promocion||'$');
            precio_con_promocion:= precio_con_promocion-(precio_con_promocion * p_porcentaje);
            DBMS_output.put_line('                                AHORA:         ' ||precio_con_promocion||'$');  
    end;
--------------------------------------------------------------------------------------------------------------------------------
   procedure insertarPago(reserva_cod number, precio_con_promocion number, tipos tipos_pagos, descripcion descripcion_pago) is
     i number :=0;
     begin
            for i in tipos.first..tipos.last loop              
            if tipos(i).tipo_cod > -1 then 
              INSERT INTO pago VALUES (sec_pago.nextval, tipos(i).monto_a_pagar, (select fecha from reserva where codigo = reserva_cod),reserva_cod, 6,tipos(i).tipo_cod, descripcion(i)) ;  
            end if;
           end loop;           
     end;
--------------------------------------------------------------------------------------------------------------------------------     
    procedure listarFactura(reserva_cod number, precio_total in out number) is 
    t1 number;
    t2 number;
    t3 number;
    costo1 number;
    costo2 number;
    costo3 number;
    costo1_imp number;
    costo2_imp number;
    costo3_imp number;
    sub_total number(10,2);
    total number:= precio_total;
    begin 
        sub_total:=precio_total -(precio_total*0.16)/1.16;
        DBMS_output.put_line('          ');
        DBMS_output.put_line('                                              FACTURA      ');
        DBMS_output.put_line('                                -------------------------------------');
        
        select tabla1.total, tabla2.total, tabla3.total into t1, t2, t3
        from (select count(sr.codigo) total from  seguro_reserva sr where sr.fk_reserva = reserva_cod) tabla1,
             (select count(h.codigo) total from  reserva_hotel h where h.fk_reserva = reserva_cod) tabla2,
             (select count(a.codigo) total from  reserva_automovil a where a.fk_reserva = reserva_cod) tabla3;
            DBMS_output.put_line('                                Boletos  :                  '||sub_total );     
        if (t1 >0) then
            select s.costo_seguro.precio into  costo1 from seguro_reserva s where s.fk_reserva =reserva_cod;
            costo1_imp:=costo1-(costo1*0.16)/1.16;
            sub_total:=sub_total + costo1_imp;
             total:=total+ costo1 ;
            DBMS_output.put_line('                                Seguro  :                   '||costo1_imp);
        end if;
         if (t2 >0) then
            select sum (h.costo_hotel.precio) into  costo2 from reserva_hotel h where h.fk_reserva =reserva_cod;
            costo2_imp:=costo2-(costo2*0.16)/1.16;
            sub_total:=sub_total + costo2_imp;
             total:=total + costo2 ;
            DBMS_output.put_line('                                Hotel  :                    '||costo2_imp );
        end if;
         if (t3 >0) then
            select sum ( a.costo_automovil.precio) into  costo3 from reserva_automovil a where a.fk_reserva =reserva_cod;
            costo3_imp:=costo3-(costo3*0.16)/1.16;
            sub_total:=sub_total + costo3_imp;
             total:=total+costo3 ;
             DBMS_output.put_line('                                Automovil:                  ' ||costo3_imp);
        end if; 
            
             DBMS_output.put_line('                                Sub-total:                  ' ||sub_total );
             DBMS_output.put_line('                                Monto total(+16%):          ' ||total );
             DBMS_output.put_line('                                -------------------------------------');
             
             precio_total:=total;
            
    end;
--------------------------------------------------------------------------------------------------------------------------------
procedure cancelar_reserva(n_reserva reserva.codigo%type) is

cursor au is select ra.fk_automovil from reserva_automovil ra where ra.fk_reserva=n_reserva;
cod_auto automovil.codigo%type;

cursor ha is select h.fk_habitacion from reserva_hotel h where h.fk_reserva=n_reserva;
cod_hab habitacion.codigo%type;

cursor asi is select v.fk_vuelo,pr.fk_asiento from vuelo_reserva_boleto v, persona_reserva pr 
                where v.fk_reserva=n_reserva and pr.fk_vuelo_reserva_boleto = v.codigo;
                
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
     delete from reserva where codigo = n_reserva;
     DBMS_OUTPUT.PUT_LINE('                       Se ha cancelado la reservación exitosamente');
end;
end;
  