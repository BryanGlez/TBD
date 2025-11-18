delimiter $$
create procedure division2(in val1 int, in val2 int)
begin
	declare resu decimal (10,2);
    declare continue handler for SQLSTATE "22012"
    begin
        select "Error : division entre cero no permitida " as mensaje;
        set resu = null;
    end;
    set resu = val1 / val2;
    select resu as resu_fin;
end$$
delimiter ;