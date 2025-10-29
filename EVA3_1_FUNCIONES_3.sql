create function mostrarMensaje(mensaje varchar(50))
returns varchar(100) deterministic
return concat("Aloha!", mensaje);