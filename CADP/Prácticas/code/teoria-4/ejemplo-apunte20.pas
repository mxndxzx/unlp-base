Program arrays(output);
const
    tam = 10;
type
    vector = array [1..tam] of integer;
procedure carga (var v: vector);
    var
        i: integer;
    begin
        for i := 1 to tam do begin
            read(v[i]);
        end;
    end;
function maximo (v: vector):integer;
    var
        i,max: integer;
    begin
        max := -9999;
        for i := 1 to tam do begin
            if (v[i] > max) then
                max := v[i];
        end;
        maximo := max;
    end;
function verificar (v: vector; valor_max: integer):integer;
    var
        i,cant: integer;
    begin
        cant := 0;
        for i := 1 to tam do begin
            if (valor_max = v[i]) then
                cant := cant + 1;
        end;
        verificar := cant;
    end;
var
    v1: vector;
    max,cant: integer;
begin
    writeln('Ingrese un numero y presione Enter: ');
    carga(v1);
    max := maximo(v1);
    cant := verificar(v1,max);
    writeln('El numero mas alto fue el ', max, ' que fue ingresado ', cant, ' veces');
end.