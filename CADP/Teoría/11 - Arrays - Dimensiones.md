Se conoce como **dimensión física** a la dimensión del array especificada en la declaración de tipo y determina su ocupación máxima de memoria. Esta cantidad de memoria no varía durante la ejecución del programa. La dimensión física suele ser una constante.

Por otro lado, la **dimensión lógica** hace referencia a los elementos cargados de dicho array, es decir, las posiciones en las cuales hay contenido real (números, strings, etc.). Puede modificarse durante la ejecución del programa (cargando más o menos elementos), y por una cuestión obvia, **no puede superar nunca a la dimensión física**.

Por ejemplo, se pide un programa que cargue un array con números enteros hasta leer el número `50`, o hasta que se carguen 10 números. Una vez terminada la carga, hay que informar cuál es el número más grande leído:

```pascal
program arrays_dim;
const
	df = 10; {Dimensión física, constante}
type
	valores = array [1..df] of integer;
procedure cargoArray (var a: numeros; var dimL: integer);
	var
		num: integer;
	begin
		dimL := 0;
		read(num);
		while((dimL < df) and (num <> 50)) do begin
			dimL := dimL + 1;
			a[dimL] := num;
			read(num);
		end;
	end;
function maximo (a: numeros; dimL: integer):integer;
	var
		max,i: integer;
	begin
		max := 9999;
		for i := 1 to dimL do begin
			if (a[i] >= max) then
				max := a[i];
		end;
		maximo := max;
	end;
var
	v: valores;
	max,dl: integer; {Dimensión lógica}
begin
	cargoArray(v,dl);
	max := maximo(v,dl);
	writeln(max);
end.
```

En este ejemplo se utiliza la dimensión lógica para conocer la cantidad de valores cargados y poder así iterar sobre ellos evitando que se lean y retornen campos del array que están vacíos. Sería algo así como un **contador**.