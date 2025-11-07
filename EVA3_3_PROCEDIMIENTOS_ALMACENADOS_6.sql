delimiter $$
create procedure agregar_actor(in actorid int, in firstname varchar(50), in lastname varchar(50))
begin
	insert into actor(actor_id, first_name, last_name)
    value(actorid, firstname, lastname);
end$$
delimiter ;