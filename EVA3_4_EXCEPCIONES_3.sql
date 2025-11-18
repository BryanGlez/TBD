delimiter $$

create function generar_rfc(
    nombre varchar(50),
    ap_paterno varchar(50),
    ap_materno varchar(50),
    fecha_nac date
)
returns varchar(10)
deterministic
begin
    declare c_ap_pat varchar(2);
    declare c_ap_mat varchar(1);
    declare c_nombre varchar(1);
    declare fec_rfc varchar(6);
    declare rfc_generado varchar(10);
    declare i int default 2;
    declare vocal char(1) default 'x';
    declare letra char(1);

    while i <= char_length(ap_paterno) do
        set letra = substring(ap_paterno, i, 1);
        if letra in ('a','e','i','o','u','A','E','I','O','U') then
            set vocal = letra;
            set i = char_length(ap_paterno) + 1;
        end if;
        set i = i + 1;
    end while;

    set c_ap_pat = concat(substring(ap_paterno, 1, 1), vocal);

    if ap_materno is null or ap_materno = '' then
        set c_ap_mat = 'x';
    else
        set c_ap_mat = substring(ap_materno, 1, 1);
    end if;

    set c_nombre = substring(nombre, 1, 1);
    set fec_rfc = date_format(fecha_nac, '%y%m%d');

    set rfc_generado = upper(concat(c_ap_pat, c_ap_mat, c_nombre, fec_rfc));

    return rfc_generado;
end $$

delimiter ;