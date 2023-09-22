program vectores;
const
    cant_datos = 15;
type
    vdatos = array [1..cant_datos] of real;
procedure cargarVector (var v: vdatos; var dimL: integer);
    var
        valor: real;
    begin
        read(valor);
        while ((dimL <= cant_datos) and (valor <> 0)) do begin
            v[dimL] := valor;
            dimL := dimL + 1;
            read(valor);
        end;
    end;
procedure modificarVectorYSumar (var v: vdatos; dimL: integer; n: real; var suma: real);
    var
        i: integer;
    begin
        for i := 1 to dimL do begin
            v[i] := v[i] + n;
            suma := suma + v[i];
        end;
    end;
var
    datos: vdatos;
    dim: integer;
    num,suma: real;
begin
    dim := 1; suma := 0;
    writeln('Ingrese valores hasta q se pudra: ');
    cargarVector(datos,dim);
    writeln('Ingrese un valor a sumar: ');
    read(num);
    modificarVectorYSumar(datos,dim,num,suma);
    writeln('La suma de los valores es: ', suma);
    writeln('Se procesaron ', dim, ' numeros');
end.