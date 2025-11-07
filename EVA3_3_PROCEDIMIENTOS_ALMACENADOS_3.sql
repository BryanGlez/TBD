delimiter $$
create function max_actor()
returns int reads sql data
begin
	declare maxi int default 0;
    select max(actor_id) into maxi from actor;
    return maxi;
end$$
delimiter ;
