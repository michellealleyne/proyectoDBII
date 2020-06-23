create or replace procedure comenzarSimulacion (numero number) is
i number := 0;
begin 
     loop
        paquete_reserva.reservar;
        i:=i+1;
     exit when (i=numero); 
     end loop;
     vuelosTiempoReal('07/02/19');
end;
/
create or replace procedure vuelosTiempoReal(fecha date) is
cursor vuelos is select v.codigo, v.fk_escala from vuelo v where trunc(v.fecha_estimada_salida)=fecha;
codigos vuelo.codigo%type;
status_v number;
nombre_s status.nombre%type;
l_origen lugar.nombre%type;
l_destino lugar.nombre%type;
n_escala vuelo.fk_escala%type;
begin
    open vuelos;
    fetch vuelos into codigos, n_escala;
            DBMS_OUTPUT.PUT_LINE(''); DBMS_OUTPUT.PUT_LINE(''); DBMS_OUTPUT.PUT_LINE(''); DBMS_OUTPUT.PUT_LINE('');
            DBMS_OUTPUT.PUT_LINE('_____________ VUELOS DEL DIA _____________');
    while (vuelos%found) loop
        SELECT (8+ABS(MOD(dbms_random.random,2))) into status_v FROM dual;
        commit;
        update status_vuelo set fk_status=status_v where fk_vuelo=codigos;
        commit;
        
        select nombre into nombre_s from status  where codigo=status_v;
    
        DBMS_OUTPUT.PUT_LINE('VUELO: '||codigos ||' ----------'||nombre_s);
        fetch vuelos into codigos, n_escala;
    end loop;
    close vuelos;
end;
/


