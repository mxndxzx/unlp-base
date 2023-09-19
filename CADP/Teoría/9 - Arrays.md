También conocidos como **arreglos** o **vectores**, son estructuras de datos compuestas y definidas por el programador que tienen la capacidad de almacenar varios datos a la vez en forma de "lista" (entre comillas pq más adelante se ven las listas) o **colección**.

Permite acceder a cada componente o dato por una variable **índice**, que da la posición de dicho componente dentro de la estructura.

Es **homogénea**, o sea que solo puede tener un tipo de dato (al contrario del registro), es **estática**, por lo que no cambia su tamaño durante la ejecución y está **indexada** (explicado arriba) por lo que es **ordinal**.

Su sintaxis es la siguiente:

```pascal
program arrays1;
const
	{...}
type
	nombre_array = array [rango] of tipo_de_dato;
var
	variable: nombre_array;
```

- **Rango** debe ser un tipo de dato ordinal (char, integer, boolean, subrango)
- **Tipo de dato** tiene que ser un tipo estático (char, integer, boolean, subrango, real, record, array)

Un ejemplo más práctico:

```pascal
type
	numeros = array [1..10] of real; {Subrango}
	frecuencia = array [char] of real; {Char}
	otros = array ['h'..'m'] of integer; {Integer}
var
	num: numeros; {Reserva espacio para 10 numeros reales}
	nuevo: frecuencia; {Para 256 numeros reales}
	otro: otros; {Para 6 numeros enteros}
```
## Operaciones Permitidas
Con la variable `vector` solo se la puede asignar entre dos variables del mismo tipo (tipo array).
Con los **elementos** se pueden hacer todas las operaciones permitidas por el tipo de dato que se declaró. Además, para acceder a los valores del array se usa notación de corchetes, por ejemplo: `nombre_array[posicion]` -> `num[6]`

```pascal
{ Con el ejemplo de arriba }
begin
	num[1] := 21.2;
	num[7] := 56.7;
	nuevo[207] := 3.14;
	read(num[7]);
end.
```

### Cargar todo el Array
La manera más fácil es con módulos:

```pascal
program arrays2;
const
	tam = 10;
type
	vector1 = array [1..tam] of integer;
procedure carga (var v: vector);
	var
		i: integer;
	begin
		for i:= 1 to tam do
			read(v[i]);
	end;
var
	num: vector1;
```