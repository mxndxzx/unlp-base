program ej4;
var
    num,num_save:real; i:integer;
begin
    write('Ingrese un numero real y presione enter:: ');
    readln(num_save);
    write('Continue ingresando numeros reales:: ');
    for i := 0 to 9 do begin
        if ((num = num_save * 2)) then begin
            write ('Ese era! ', num, ' es el doble de ', num_save);
            break;
        end;
        write('Ese no es! Proba otro:: ');
        readln(num);
    end;
    if ((i = 9) and not(num = num_save * 2)) then
        write('No se ingreso el doble de ', num_save);
end.