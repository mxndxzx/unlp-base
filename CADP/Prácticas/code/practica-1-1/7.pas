program ej7;
var
    codigo,porcentaje: real;
    precio_act,precio_nue: integer;
begin
    read(codigo);
    repeat begin
      write('repitiendo');
      read(codigo);
    end;
    until (codigo = -1);
end.