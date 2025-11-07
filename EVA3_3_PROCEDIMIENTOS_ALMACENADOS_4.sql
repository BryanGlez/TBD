delimiter $$
create function min_actor()
returns int reads sql data
begin
	declare mini int default 0;
    select min(actor_id) into mini from actor;
    return mini;
end$$
delimiter ;