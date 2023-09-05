program ej2;
var
    num:real;
begin
    write('Ingrese un numero y presione enter:: ');
    read(num);
    write('El numero ingresado fue ');
    writeln(num:6:2);
    write(' y su valor absoluto es ');
    writeln(num * -1:6:2);
end.