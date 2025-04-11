ALTER TABLE bustickets.asiento ADD colectivo_id int(11) DEFAULT NULL;
ALTER TABLE bustickets.asiento ADD CONSTRAINT asiento_colectivo_FK FOREIGN KEY (colectivo_id) REFERENCES bustickets.colectivo(id) ON DELETE CASCADE ON UPDATE CASCADE;
