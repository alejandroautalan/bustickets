ALTER TABLE bustickets.pasaje 
    ADD CONSTRAINT pasaje_pasajero_FK FOREIGN KEY (pasajero_id) 
    REFERENCES bustickets.pasajero(id) 
    ON DELETE RESTRICT 
    ON UPDATE CASCADE;
