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
La manera más fácil es con módulos, tomando como base un ciclo `for` que recorra el array con la variable de control `i`.

**No puede ser una función**, solo un `procedure`, ya que las funciones solo retornan un dato simple, y el array que necesito retornar es de tipo compuesto.

También se suele usar una constante `tam` (de tamaño) para poder declarar una sola vez el tamaño del array. Es decir, esto simplifica el código, su utilización y su implementación.

```pascal
program arrays2;
const
	tam = 10;
type
	vector1 = array [1..tam] of integer;
procedure carga (var v: vector1);
	var
		i: integer;
	begin
		for i:= 1 to tam do
			read(v[i]);
	end;
var
	num: vector1;
```

>Para mostrar los valores del array, puedo hacer lo mismo de arriba pero con un `write`
# Ejemplo práctico
Este ejemplo reúne varias condiciones útiles para su posterior utilizacion en programas.

El ejercicio pide escribir un programa que lea 10 números enteros y al finalizar informe cuántas veces apareción el número máximo.

```pascal
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
```

Para hacer esto debo:
- Declarar un tipo `array` y cargarlo con el procedure `cargar`
- Buscar su máximo con `maximo`
- Recorrer el array con el valor obtenido de máximo para contar cuántas veces aparece, con `verificar`.

>**OJO** con las variables locales, declaraciones y variables de modulos. Hay que mirarlas bien.