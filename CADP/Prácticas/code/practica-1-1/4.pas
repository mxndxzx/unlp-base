program ej4;
var
    num,num_save:real;
begin
    write('Ingrese un numero real y presione enter:: ');
    readln(num_save);
    write('Continue ingresando numeros reales:: ');
    readln(num);
    while (not(num = num_save * 2)) do begin
        write('Ese no es! Proba otro:: ');
        readln(num);
    end;
    write('Ese era! ', num, ' es el doble de ', num_save);
end.