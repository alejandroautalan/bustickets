Truncate table viaje;
Truncate table asiento;
ALTER TABLE bustickets.asiento ADD colectivo_id int(11) DEFAULT NULL;
ALTER TABLE bustickets.asiento ADD CONSTRAINT asiento_colectivo_FK FOREIGN KEY (colectivo_id) REFERENCES bustickets.colectivo(id) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE bustickets.pasaje DROP FOREIGN KEY FK_8CE74A00C35D1EF7;
ALTER TABLE bustickets.pasaje DROP COLUMN asiento_colectivo_id;

ALTER TABLE bustickets.pasaje ADD asiento_id INT(11) DEFAULT NULL NULL;
ALTER TABLE bustickets.pasaje ADD CONSTRAINT pasaje_asiento_FK FOREIGN KEY (asiento_id) REFERENCES bustickets.asiento(id) ON DELETE RESTRICT ON UPDATE CASCADE;

commit;
