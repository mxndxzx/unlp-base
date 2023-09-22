program ej4;
const
    rango = 10;
type
    vector = array [1..rango] of integer;

procedure cargarVector (var v: vector);
    var
        i,valor: integer;
    begin
        writeln('Ingrese valores para el array: ');
        for i := 1 to rango do begin
            read(valor);
            v[i] := valor;
        end;
    end;

function posicion (v: vector; n: integer): integer;
    var
        pos,i: integer;
    begin
        pos := 0;
        for i := 1 to rango do begin
            if (v[i] = n) then
                pos := i;
        end;
        if (pos <> 0) then
            posicion := pos
        else
            posicion := -1;
    end;

procedure intercambio (var v: vector; pos1: integer; pos2: integer);
    var
        aux1,aux2: integer;
    begin
        if (((1 < pos1) and (pos1 < rango)) and ((1 < pos2) and (pos2 < rango))) then begin
            aux1 := v[pos1]; aux2 := v[pos2];
            v[pos1] := aux2; v[pos2] := aux1;
        end
        else
            writeln('Debe ingresar valores entre 1 y ', rango);
    end;

function sumaVector (v: vector): integer;
    var
        i,suma: integer;
    begin
        for i := 1 to rango do
            suma := suma + v[i];
        sumaVector := suma;
    end;

function promedio (v: vector):integer;
    var
        suma: integer;
    begin
        suma := sumaVector(v);
        promedio := suma div rango;
    end;

function maximo (v: vector): integer;
    var
        i,max: integer;
    begin
        max := 0;
        for i := 1 to rango do begin
            if (v[i] > max) then
                max := v[i];
        end;
        maximo := max;
    end;

function minimo (v: vector): integer;
    var
        i,min: integer;
    begin
        min := 0;
        for i := 1 to rango do begin
            if (v[i] < min) then
                min := v[i];
        end;
        minimo := min;
    end; 

var
    datos: vector;
    num_busca,ret_busca,pos1,pos2,suma,prom,max,min: integer;
begin
    cargarVector(datos);
    writeln('Ingrese valor a buscar: ');
    read(num_busca);
    ret_busca := posicion(datos,num_busca);
    writeln('El valor se encontraba en la posicion ', ret_busca);
    writeln('Ingrese dos valores de posicion: ');
    read(pos1,pos2);
    intercambio(datos,pos1,pos2);
    suma := sumaVector(datos);
    writeln('La suma de todos los valores del vector es ', suma);
    prom := promedio(datos);
    writeln('El promedio de valores es ', prom);
    max := maximo(datos);
    writeln('El valor maximo es: ', max);
    min := minimo(datos);
    writeln('El valor minimo es: ', min);
end.