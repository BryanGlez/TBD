delimiter $$
create procedure agregar_actor2(in firstname varchar(50), in lastname varchar(50))
begin
	declare id_actor int;
    select max_actor() into id_actor;
    set id_actor = id_actor + 1;
    insert into actor(actor_id, first_name, last_name)
    value(id_actor, firstname, lastname);
end$$
delimiter ;