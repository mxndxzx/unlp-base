program ej3;
var
    num1,num2,num3:integer;
begin
    write('Ingrese 3 numeros enteros separados por un enter:: ');
    readln(num1,num2,num3);
    if ((num1 > num2) and (num2 > num3)) then
        write('', num1, ' - ', num2, ' - ', num3)
    else if ((num2 > num1) and (num1 > num3)) then
        write('', num2, ' - ', num1, ' - ', num3)
    else if ((num3 > num1) and (num1 > num2)) then
        write('', num3, ' - ', num1, ' - ', num2)
    else if ((num3 > num2) and (num2 > num1)) then
        write('', num3, ' - ', num2, ' - ', num1)
    else if ((num1 > num3) and (num3 > num2)) then
        write('', num1, ' - ', num3, ' - ', num2)
    else if ((num2 > num3) and (num3 > num1)) then
        write('', num2, ' - ', num3, ' - ', num1)
    else if (num2 = num1) then
        write('Todos los numeros son iguales!');
end.