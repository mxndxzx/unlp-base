program ej7;
const
    rango = 24;
type
    materias = array [1..rango] of integer;
    alumno = record
        id: integer;
        nombre: string[20];
        apellido: string[20];
        mail: string[30];
        ingreso: integer;
        egreso: integer;
        notas: materias;
    end;
    lista = ^nodo;
    nodo = record
        dato: alumno;
        sig: lista;
    end;

procedure cargarAlumnos();

var
    
begin
    cargarAlumnos();
end.