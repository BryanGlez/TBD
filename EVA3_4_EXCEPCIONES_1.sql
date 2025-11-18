DELIMITER $$
create procedure calcular_cuadrado(in nume int, out resu int)
begin
    set resu = nume + nume;
end$$
DELIMITER ;