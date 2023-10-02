program ej1;
const
    rango = 5;
type
    vector = array [1..rango] of integer;
procedure cargaRapida(var v: vector);
    var
        i: integer;
    begin
        for i := 1 to rango do
            read(v[i]);
    end;
function buscaDesordenado(v: vector; n: integer):boolean;
    var
        i: integer;
    begin
        buscaDesordenado := false;
        i := 1;
        while ((i <= rango) and (buscaDesordenado = false)) do begin
            if (v[i] = n) then
                buscaDesordenado := true
            else
                i := i + 1;
        end;
    end;
function buscaOrdenado(v: vector; n: integer):boolean;
    var
        i: integer;
    begin
        i := 1;
        while ((i <= rango) and (v[i] < n)) do
            i := i + 1;
        if (v[i] = n) then
            buscaOrdenado := true
        else
            buscaOrdenado := false;
    end;
var
    n: integer;
    v: vector;
    puntoA: boolean;
    puntoB: boolean;
begin
    cargaRapida(v);
    writeln('Ingrese un valor "N": '); read(n);
    puntoA := buscaDesordenado(v,n);
    writeln(puntoA);
    puntoB := buscaOrdenado(v,n);
    writeln(puntoB);
end.