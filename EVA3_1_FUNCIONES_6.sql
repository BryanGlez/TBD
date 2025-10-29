delimiter $$
create function comparar(val1 int, val2 int)
returns varchar(50) deterministic
begin
	declare resu varchar(50);
    if val1 < val2 then
		set resu = "Valor 2 MAYOR que Valor 1";
    elseif val1 > val2 then
    set resu = "Valor 1 MAYOR que valor 2";
    else
		set resu = "Ambos valores son IGUALES";
    end if;
    return resu;
end$$
delimiter ;