Se entiende por modularizar a la acción de dividir un problema en partes funcionalmente independientes, que encapsulen operaciones y datos. No es simplemente subdividir el código porque si, tiene que tener un propósito de funciones lógicas con datos propios y de comunicación bien especificado.

**Dicho en criollo**, significa dividir el problema para poder reutilizar código, que sea más legible y más fácil tanto de pensar como de codear.

Para modularizar se requiere un módulo (función o procedimiento en *Pascal*) el cual tiene que tener una tarea asignada y poder, de ser necesario, cooperar con los demás módulos para llegar a la solución esperada.

Acá suena mucho la palabra **Top-Down**, que no es otra cosa que modularizar pero dicho elegante.

> Todos estos conceptos quizá están mejor explicados en las presentaciones que da la cátedra, pero no tienen demasiado misterio, se resumen a esto dicho anteriormente.

## Ejemplos

Como en la presentación 10 da ejemplos de módulos y alternativas según el lenguaje elegido, pero usa lenguajes que ninguna persona mentalmente sana usaría, acá te dejo mis ejemplos (si querés ver ejemplos de codigo, buscalos):
- **JavaScript** --> Se usan funciones con parámetros dinámicos, clases, objetos, métodos, etc.
- **Java** --> Lo mismo que Javascript con algunas cosas más complejas que no vienen al caso
- **Python**  --> Las funciones se declaran con `def` y lo demás igual que los de arriba (en general)

# Procedures
En español **procedimientos**, son conjuntos de instrucciones que realizan una tarea específica y pueden retornar valores (por defecto `0`). Es una de las maneras que tiene Pascal de modularizar el código. La sintaxis es la siguiente:

```pascal
program procedimientos;
procedure nombre_procedure (parametros);
	var
		{ variables locales }
	begin
		{ codigo }
	end;

{ Para llamarlo, adentro de nuestro código }
nombre_procedure(parametros);
{ O si no tiene parámetros }
nombre_procedure;
```

`Variables locales` hace referencia a las variables que vamos a declarar dentro del procedure, a las cuales el programa principal no va a tener acceso. Es decir, pertenecen solo al procedure.

Al poder retornar varios valores, tanto simples como compuestos, los procedures **no** pueden ser utilizados para evaluar condiciones en un `if`, `while` o imprimirlos con `write`.
# Funciones
Es la misma idea que un `procedure` pero **retorna un solo valor** y de tipo simple. No puede retornar un `string`, un array, registro, nada de eso. Solo reales, integer y char. Su sintaxis es la siguiente:

```pascal
program funciones;
function nombre_function (parametros): tipo_de_dato;
	var
		{ Variables locales }
	begin
		{ codigo }
	end;
```

Para llamarla hay varias maneras, ya que retornan **un solo valor**, es necesario llamarlas dentro de una variable o estructura, por ejemplo:

```pascal
{ Dentro de una variable }
aux := nombre_funcion;
{ Dentro de un if o cualquier otra estructura de control o un Write }
if (nombre_funcion = 32) do {...};
```
# Funciones vs Procedures
Al contrario del sentido común, lo que más se usa en **Pascal** son los procedures, porque tienen la habilidad de poder retornar cualquier tipo y cantidad de valores,. En cambio las funciones solo retornan un dato y de tipo simple.

Ojo, igual las funciones se usan, pero son menos útiles. Hay que evaluar cada caso.
# Alcance de Variables
¿Qué es el alcance de una variable?
	Es la capacidad que tiene dicha variable para ser leía por distintas estructuras del ambiente y del programa.
Existen distintos tipos de alcance:
- **Globales** --> Suelen ser variables de ambiente, que pueden ser accedidas por cualquier programa o parte del programa en cualquier momento. **Estas no se ven en CADP**.
- **Locales** --> Son las variables comunes que tenemos adentro del programa. Pueden ser accedidas por cualquier parte del programa, pero no por el ambiente o por otros programas a menos que lo especifiquemos así.
- **Locales al proceso/funcion** --> Son las que se colocan dentro de las funciones o procedimientos y existen solo dentro de ellos. No pueden ser accedidas por el programa, a menos que las retornemos. Los parámetros de las funciones no son variables locales al proceso, son locales al programa.
- **Locales al programa** --> **ESTO ES IMPORTANTE!** En el apunte de la cátedra detalla 3 tipos de variables, y a las locales del programa las llama **globales del programa**. Este concepto se confunde con las variables globales *"en serio"*. Además nombra las variables locales al programa que se pueden utilizar sólo dentro del cuerpo del mismo, y no en módulos. Esto no es así para todos los lenguajes, solo para **Pascal** y alguno más que no debe conocer nadie.

El alcance de variables dentro de Pascal es como explica el apunte, pero no es así para todos los lenguajes.

La regla general es que las variables de menos alcance (por ejemplo las de proceso/funciones) pueden acceder a las de más alcance (locales del programa), pero no viceversa. Es como si la variables de menos alcance estuviesen *"encerradas"* en su mundo, por ende las de mayor alcance no las ven.
# Comunicación entre módulos
La eficiencia de la comunicación entre módulos es clave en la programación. La regla general nos dice que no es nada conveniente usar variables locales del programa dentro de varios módulos para realizar operaciones, porque de esta manera no se tiene seguridad ni mucha legibilidad sobre qué variable se usa en qué momento. Por ejemplo:

```pascal
{ Esto no se hace }
program comm1;
var
	x: integer;
procedure uno;
	begin
		x := x + 1;
		write(x);
	end;
procedure dos;
	begin
		x := x mod 10;
		write(x);
	end;
begin
	{...}
end;
```

Lo de arriba es mala práctica, ya que `x` es variable local del programa y es usada bajo el mismo nombre dentro de dos procesos distintos, por ende nunca voy a estar seguro de qué valor va a tener en cada moneto, y tampoco es muy legible el código que digamos. En otras palabras, es un kilombo.

Esto es una mejor práctica:

```pascal
program comm2;
procedure uno (param1;param2);
	begin
		{...}
	end;
procedure dos (param3;param4);
	begin
		{...}
	end;
{ Declaro variables con alcance de programa, pero siempre abajo de los procedures }
var
	x,y,z: integer;
begin
	{ Llamo a los procesos, pasandoles los valores por parámetros }
	x := 1; y := 7; z := 9;
	uno(x,y);
	dos(y,z);
end. 
```

De esta manera, no utilizo variables locales al programa que se *"pisen"*.
# Tipos de parámetros
Existen dos grandes tipos de parámetros:
## Por valor
Los parámetros por valor son aquellos que el módulo recibe, copia dentro de su estructura y realiza todas las operaciones que necesite sin modificar el dato original. La sintaxis en Pascal es la siguiente:

```pascal
procedure uno (param1: tipo_de_dato, param2: tipo_de_dato);
	var
		{...}
	begin
		{ Usa parámetros 1 y 2 }
	end;
```

Un ejemplo de uso:

```pascal
program porValor;
procedure uno (num: integer);
	begin
		if (num = 7) then
			num := num + 1;
		write(num)
	end;
var
	x: integer;
begin
	x := 7;
	uno(x);
end.
```

El procedimiento `uno` tiene un parámetro llamado `num` que solo existe dentro de él; y que cuando llamemos a dicho procedimiento le pasamos una variable `x` que es del mismo tipo que espera el parámetro, para que tome un valor. Es decir, si no queremos que se modifique el valor original, le ponemos el nombre que se nos cante, declaramos el tipo de dato en el parámetro y a partir de ahí operamos tranquilos.

Si quiero imprimir `num` después de llamar al proceso `uno`, no voy a poder porque `num` existe **solo dentro del proceso** y no como variable local de programa. El programa no la conoce.

A este tipo de parámetros le puedo pasar números o valores sueltos, ya que no comparten espacio en memoria con nadie, se lo crean en el momento que toman valor.

Medio rebuscada la explicación, pero funciona así para todos los lenguajes de programación, solo que dentro de un mismo tipo de parámetro.

Si venís del curso de ingreso, este tipo de parámetros es comparable con los de **entrada** que se usaban en R-Info.
## Por referencia
Se dice que son por referencia porque el valor del parámetro hace referencia al mismo espacio en memoria del programa, es decir, hace referencia a la misma variable con su nombre y todo. Acá si se modifica el contenido de la variable original (siempre del mismo tipo de dato).

Son comparables a los parámetros de `entrada-salida` de R-Info.

La sintaxis es la siguiente:

```pascal
procedure dos (var param1: tipo_de_dato; var param2: tipo_de_dato);
	var
		{...}
	begin
		{ Usa parámetros 1 y 2 }
	end;
```

Un ejemplo práctico:

```pascal
program porReferencia;
procedure dos (var num: integer);
	begin
		if (num = 4) then
			num := num + 1;
		writeln('4 + 1 es: ', num);
	end;
var
	x: integer
begin
	x := 4;
	dos(x);
	write(x);
end.
```

`X` en los dos write va a ser 5, ya que, a pesar que se inició en 4, ahora su valor, gracias al parámetro por referencia, cambió a 5.

A un parámetro por referencia **siempre** le tengo que mandar una variable, no un número suelto como a los que son por valor. Esto es porque, al ser por referencia, comparten lugar en memoria con la variable que le estoy pasando. Puedo pasarle una variable vacía también, por ejemplo:

```pascal
var
	x,pos: integer;
begin
	proceso(8,pos);
	proceso2(x,pos);
end.
```

> Los parámetros dentro de una función o procedimiento pueden ser de cualquier tipo, se pueden combinar