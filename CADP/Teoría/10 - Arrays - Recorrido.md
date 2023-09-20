**¿En qué consiste el recorrido?**
Consiste en pasar por cada uno de sus valores, ya sea de manera total o parcial, para luego realizar operaciones con dichos valores.

Un **recorrido total** se hace pasando por la totalidad del array, visto en el apunte anterior. Este es el esquema general para recorrer todo un array, donde se suele usar una constante `tam` que declara el tamaño del mismo y puede ser luego utilizada para realizar operaciones de recorrido sobre el mismo array:

```pascal
program arrays_total;
const
	tam = 10;
type
	vector = array [1..tam] of integer;
procedure cargar_vector (var v: vector);
	var
		i: integer;
	begin
		for i := 1 to tam do
			read(v[i]);
	end;
var
	v1: vector;
begin
	cargar(v1);
end.
```

Un **recorrido parcial** se hace pasando por el array hasta que se cumpla cierta condición. Por ejemplo, acá se quiere saber cual es la primer posición del array que contenga un `3`:

```pascal
program arrays_total;
const
	tam = 10;
type
	vector = array [1..tam] of integer;
function leer_vector (v: vector):integer;
	var
		pos,num: integer;
		seguir: boolean;
	begin
		seguir := true; pos := 1; num := 3;
		while ((pos <= tam) and (seguir = true)) do begin {Las dos condiciones para que no se me termine el largo del vector}
			if (num = v[pos]) then
				seguir := false;
			else
				pos := pos + 1;
		leer_vector := pos;
	end;
var
	v1: vector;
begin
	leer_vector(v1); {Me va a informar la posicion o nada si es que no encuentra}
end.
```