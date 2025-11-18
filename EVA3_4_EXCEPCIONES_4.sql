delimiter $$
create procedure agregar_persona(
    in nombre varchar(50),
    in ap_paterno varchar(50),
    in ap_materno varchar(50),
    in fecha_nac date
)
begin
    declare rfc_generado varchar(10);

    set rfc_generado = generar_rfc(nombre, ap_paterno, ap_materno, fecha_nac);

    insert into personas (rfc, nombre, ap_paterno, ap_materno, fecha_nac)
    values (rfc_generado, nombre, ap_paterno, ap_materno, fecha_nac);
end $$

delimiter ;