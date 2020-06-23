/*Usuario tete, rol cliente*/

-- Puede:
SELECT precio_total, FECHA, FK_PROMOCION, FECHA_SALIDA FROM SYSTEM.reserva WHERE fk_usuario =4;

SELECT p.monto_pagado, p.fecha_pago, s.nombre, tp.nombre 
FROM SYSTEM.pago p, SYSTEM.status s, SYSTEM.tipo_pago tp, SYSTEM.usuario u, SYSTEM.reserva r
WHERE p.fk_reserva = r.codigo
AND   r.fk_usuario = u.codigo
AND   u.correo = 'ava123@hotmail.com'
AND   p.fk_tipo_pago = tp.codigo
AND   p.fk_status = s.codigo;

-- Puede:

UPDATE SYSTEM.vuelo SET costo=100 WHERE codigo =1;


/*Usuario dieguchoale, rol supervidor de vuelo  */

--Puede:
SELECT a.fecha, a.fk_vuelo, s.nombre 
FROM SYSTEM.status_vuelo  a , SYSTEM.status s 
WHERE a.fk_vuelo=3 
AND   a.fk_status =s.codigo;

INSERT INTO SYSTEM.vuelo VALUES (40,null,null,300,TO_TIMESTAMP('07-02-2019 07:15:00', 'DD-MM-YYYY HH24:MI:SS'),TO_TIMESTAMP('07-02-2019 12:14:00', 'DD-MM-YYYY HH24:MI:SS'),1,1);

-- No puede:
UPDATE SYSTEM.status_vuelo SET fk_status = 8;


/*Usuario mich, rol intermediario de vuelos*/

--Puede:
INSERT INTO SYSTEM.proveedor_lugar (codigo, fk_proveedor, fk_lugar) VALUES (67,1,19);
DELETE SYSTEM.automovil WHERE codigo = 3;

-- No puede:
DELETE SYSTEM.hotel WHERE fk_lugar =18;

