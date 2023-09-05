program ej1;
var
    num1, num2: integer;
begin
    write('Ingrese los numeros separados por espacio::  ');
    read(num1,num2);
    if (num1 > num2) then
        write(num1, ' es mas grande que ', num2)
    else if (num1 < num2) then
        write(num2, ' es mas grande que ', num1)
    else if (num1 = num2) then
        write('Los numeros son iguales');
end.