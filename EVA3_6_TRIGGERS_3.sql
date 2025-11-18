DELIMITER $$
CREATE DEFINER=`root`@`localhost` TRIGGER `personas_AFTER_DELETE` AFTER DELETE ON `personas` FOR EACH ROW 
BEGIN
	insert into bitacora(descripcion) value (concat("Borrado", OLD.rfc));
END$$
DELIMITER ;