delimiter $$
create function sumatoria_loop(valor int)
returns int deterministic 
begin 
    declare sumatoria int default 0;
    declare cont int default 1;
    
    myloop : loop
         set sumatoria  = sumatoria + cont;
         set cont = cont + 1;
         if cont > valor then 
             leave myloop;
	     end if;
    end loop myloop;
    return sumatoria;
end$$
delimiter ;