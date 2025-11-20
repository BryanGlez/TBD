delimiter $$
create function calificacion(nume int)
returns varchar(2) deterministic 
begin
    declare resu varchar(2);
    case
       when nume >= 90 then set resu = "A";
       when nume >= 80 then set resu = "B";
       when nume >= 70 then set resu = "C";
       when nume >= 60 then set resu = "D";
       else set resu ="F";
    end case;
    return resu;
end$$
delimiter ;