DELIMITER $$
CREATE DEFINER=`root`@`localhost` TRIGGER `personas_AFTER_INSERT` AFTER INSERT ON `personas` FOR EACH ROW 
BEGIN
    set @mensaje = "Persona agregada con exito";
END$$
DELIMITER ;