delimiter $$
create function sumar2(val1 int, val2 int)
returns int deterministic
begin
	declare suma int;
    set suma = val1 + val2;
    return suma;
end$$
delimiter ;