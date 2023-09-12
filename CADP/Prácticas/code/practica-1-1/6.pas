program ej6;
var
    cant_alu,cant_alu_bueno,cant_alu_destacado,legajo:integer;
    promedio,porcentaje:real;
begin
    cant_alu := 0; cant_alu_bueno := 0; cant_alu_destacado := 0;
    write('Ingrese legajo:: ');
    readln(legajo);
    while (legajo <> -1) do begin
        write('Ingrese promedio:: ');
        readln(promedio);
        cant_alu := cant_alu + 1;
        if ((promedio > 6.5) and not(promedio > 8.50)) then
            cant_alu_bueno := cant_alu_bueno + 1
        else if ((promedio > 8.50) and (legajo < 2500)) then
            cant_alu_destacado := cant_alu_destacado + 1;
        write('Ingrese legajo:: ');
        readln(legajo);
    end;
    porcentaje := ((cant_alu_destacado * 100) div cant_alu);
    writeln('La cantidad de alumnos leída fué de ', cant_alu, ' alumnos.');
    writeln('La cantidad de alumnos con promedio mayor a 6.50 es de ', cant_alu_bueno, ' alumnos');
    writeln('El porcentaje de alumnos con promedio mayor a 8.50 es del ');
    write(porcentaje:4:2);
    write('%')
end.