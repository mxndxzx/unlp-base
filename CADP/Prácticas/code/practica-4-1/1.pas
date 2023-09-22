program sumador;
type
    vnums = array [1..10] of integer;
var
    numeros: vnums;
    i: integer;
begin
    for i := 1 to 10 do begin
        numeros[i] := i;
        write(numeros[i], ' ');
    end;
    for i := 1 to 9 do begin
        numeros[i+1] := numeros[i] + numeros[i+1];
        write(numeros[i], ' ');
    end;
end.