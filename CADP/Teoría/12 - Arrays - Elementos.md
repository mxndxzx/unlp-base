Un array permite ciertas operaciones con sus elementos. Las 4 básicas son:
- Agregar elementos
- Insertar
- Eliminar
- Buscar
# Agregar elementos
Sirve para agregar un elemento detrás el último elemento cargado en el vector, es decir, al final del mismo. Para hacer esta operación hay que tener en cuenta lo siguiente:
- Verificar si hay espacio, es decir, comparar dimensión lógica y física
- Agregar el elemento al final de los que ya están cargados
- Incrementar la dimensión lógica para futuras operaciones

Por ejemplo, se pide realizar un programa que una vez cargado un vector de 10 elementos, invoque un módulo que cargue uno nuevo:

```pascal
program agregar_elem;
const
	dimF = 10;
type
	numeros = array [1..dimF] of integer;
{procedure cargar es como las teorias pasadas}
procedure agregar (var a: numeros; var dl: integer; var pude: boolean; num: integer)
	begin
		pude := false;
		if ((dl + 1) <= dimF) then begin
			pude := true
			dl := dl + 1;
			a[dl] := num;
		end;
	end;
var
	vec_num: numeros;
	dimL,valor: integer;
	ok: boolean;
begin
	cargar(vec_num,dimL);
	read(valor);
	agregar(vec_num,dimL,ok,valor);
end.
```
# Insertar elementos
Agrega un elemento en una posición específica. Para ello debo:
- Verificar si hay espacio, comparando dimensión lógica y física
- Verificar que la posición sea válida, o sea, que no se me vaya de índice
- Liberar el array en tal índice para poder insertar el elemento
- Actualizar la dimensión lógica

Por ejemplo:

```pascal
{Solo agrego un procedure en el ejemplo de arriba, al cual le paso una posición para insertar un elemento}
procedure insertar (var a: numeros; var dl: integer; var pude: boolean; num: integer; pos: integer);
	var
		i: integer;
	begin
		pude := false;
		{Verifico si hay espacio y si la posicion es válida}
		if( ((dl + 1) <= dimF) and (pos >= 1) and (pos <= dl) ) then begin
			for i:= dl downto pos do
				a[i+1] := a[i]; {Corro los elementos empezando desde atrás (por eso downto) hasta la posicion a insertar para hacer espacio}
			pude := true;
			a[pos] := num;
			dl := dl + 1;
		end;
	end;
```
# Eliminar elementos
Borra lógicamente un elemento (o sea, que esté cargado), en una posición determinada, o bien por valor determinado. Para ello:
- Verifico que la posición sea válida, entre dimensión lógica y física
- Una vez eliminado el elemento, corro los elementos posteriores para "tapar" ese elemento que quedó vacío
- Decremento la dimensión lógica

De esta manera, con los ejemplos anteriores, agregando un procedure `eliminar`:

```pascal
procedure eliminar (var a:numeros; var dl:integer; var pude:boolean; pos:integer);
	var
		i: integer;
	begin
		pude := false;
		{Verifico posición válida}
		if( (pos >= 1) and (pos <= dl) ) then begin
			for i := pos to (dl-1) do
				a[i] := a[i+1]; {Corro los elementos empezando desde pos hasta la dimension lógica - 1, para "tapar" el elemento eliminado}
				pude := true;
				dl := dl - 1;
			end;
		end;
	end;
```
# Buscar elementos
Podemos buscar un valor que puede o no estar dentro del vector. Existen dos grandes tipos de búsquedas a realizar:
## Vector desordenado
Donde los elementos no siguen un orden específico, o el mismo no se conoce. Para buscar en un vector de este estilo, debo recorrerlo completo y detener la búsqueda cuando encuentre el dato deseado.

Los pasos a seguir son los siguientes:
- Iniciar la búsqueda desde la posición `1`
- Mientras el valor del elemento buscado no coincida con el valor del vector en el índice actual, debo continuar la búsqueda, avanzando una posición a la vez. Esto se hace con un ciclo `while`
- Determino el corte de control de dicho ciclo `while` solo cuando encuentre el resultado deseado y lo retorno

Puedo utilizar funciones, ya que debo retornar un único valor. Si tengo que retornar más, uso procedures. Un ejemplo en código:

```pascal
function buscar (a: numeros; dl: integer; valor: integer):boolean;
	var
		pos:integer;
		esta:boolean;
	begin
		esta := false; {Inicio el resultado en false hasta que se encuentre}
		pos := 1; {Inicio pos en el primer indice del vector (1)}
		while ( (pos <= dl) and (not esta) ) do {"esta" es mi corte de control}
			begin
				if (a[pos] = valor) then
					esta := true
				else
					pos := pos + 1;
			end;
		buscar := esta; {retorno resultado}
	end;
```

## Vector ordenado
Donde los elementos siguen un orden predefinido. Puedo recorrer el vector con dos métodos:
### Busqueda mejorada
No tiene mucho misterio, es la búsqueda clásica recorriendo todo el vector solo que, como este está ordenado, puedo detener la búsqueda cuando el valor encontrado en dicho vector sea mayor al valor que quiero buscar, independientemente de si este se encuentre en el vector o no.

Un ejemplo:

```pascal
function busca_mejorada (a: numeros; valor: integer; dl: integer):boolean;
	var
		pos: integer;
	begin
		pos := 1;
		while ( (pos <= dl) and (a[pos] < valor) ) do
			pos := pos + 1;
		if ( (a[pos] = valor) and (pos <= dl) ) then {vuelvo a preguntar por la posición menor a la dimension lógica}
			busca_mejorada := true
		else
			busca_mejorada := false;
	end;
```
### Busqueda binaria o dicotómica
Es un poco más complejo. Se trata de una búsqueda mucho más efectiva que toma el total de array, calcula su índice medio (el que está a la mitad), pregunta si el valor buscado es mayor o menor al valor en el índice actual, y a partir de ahí decide si buscar en la mitad siguiente o en la mitad anterior. Repite este proceso hasta encontrar el valor deseado, o hasta no poder partir en dos el array.

Es decir, descarta de a mitades. De esta manera, no tenemos que recorrer todo el array de manera secuencial.

>Solo se puede hacer con vectores **ordenados**, en uno desordenado no sirve

Un ejemplo:

```pascal
function busca_binaria (a: numeros; valor: integer; dl: integer):boolean;
	var
		pri, ult, med: integer;
	begin
		pri := 1; ult := dl; med := (pri + ult) div 2;
		while ( (pri <= ult) and (valor <> a[med]) ) do begin
			if (valor < a[med]) then
				ult := med - 1;
			else
				pri := med + 1;
				med := (pri + ult) div 2;
			end;
			if ( (pri <= ult) and (valor = a[med]) ) then
				busco_binaria := true;
			else
				busco_binaria := false;
		end;
	end;
```