>Si bien en esta práctica se presentan soluciones utilizando variables globales, el objetivo de las mismas es comprender su funcionamiento y mostrar algunos de los problemas asociados con su uso. A la hora de resolver ejercicios en las siguientes prácticas, **NO** se deberán utilizar variables globales.

### 1
Dado el siguiente programa, indicar qué imprime:

```pascal
program alcance1;
var
	a,b: integer;
procedure uno;
	var
		b: integer;
	begin
		b := 3;
		writeln(b);
	end;
begin
	a:= 1; b:= 2;
	uno;
	writeln(b, a);
end.
```

>3 21
>Acá declara B dentro del procedure, por eso el B del programa no se pisa
### 2
Dado el siguiente programa, indicar qué imprime:

```pascal
program alcance2;
var
	a,b: integer;
procedure uno;
	begin 
		b := 3;
		writeln(b);
	end;
begin
	a:= 1; b:= 2;
	uno;
	writeln(b, a);
end.
```

>3 31
>Acá no declara B dentro del procedure, entonces toma B global y la pisa abajo
### 3
Dado el siguiente programa, indicar cuál es el error y su causa:

```pascal
program alcance3;
var
	a: integer;
procedure uno;
	var
		b: integer;
	begin
		b:= 2;
		writeln(b);
	end;
begin
	a:= 1;
	uno;
	writeln(a, b);
end.
```

> Cuando quiere imprimir B se rompe, porque está dentro del procedure y no como global
### 4
Dados los siguientes programas, explique la diferencia:

Programa 1:
```pascal
program alcance4a;
var
	a,b: integer;
procedure uno;
	begin
		a := 1;
		writeln(a);
	end;
begin
	a:= 1; b:= 2;
	uno;
	writeln(b, a);
end.
```

Programa 2:
```pascal
program alcance4b;
procedure uno;
	begin
		a := 1;
		writeln(a);
	end;
var
	a,b: integer;
begin
	a:= 1; b:= 2;
	uno;
	writeln(b, a);
end.
```

>En el primero declara las variables A y B como globales, en el segundo las declara como locales al programa, es decir que se pueden usar solo en el cuerpo del programa, por ende el procedure no la conoce
### 5
Dado el siguiente programa, indique cuál es el error:

```pascal
program alcance4;
function cuatro: integer;
	begin
		cuatro:= 4;
	end;
var
	a: integer;
begin
	cuatro;
	writeln(a);
end.
```

>A nunca se incializa y el valor de `cuatro` nunca se usa
### 6
Realice un módulo que lea de teclado números enteros hasta que llegue un valor negativo. Al finalizar la lectura el módulo debe imprimir en pantalla cuál fué el número par más alto.
Luego implemente un programa que invoque al módulo anterior.

```pascal
program ej6;
procedure nros (num: integer; var max: integer);
	begin
		max := -1;
		repeat
			writeln('Ingrese un numero: ');
			read(num);
			if ((num > max) and (num mod 2 = 0)) then
				max := num;
		until (num < 0)
	end;
var
	num: integer;
	max: integer;
begin
	nros(num,max);
	writeln('El numero más alto fue ', max);
end.
```
### 7
Dado el siguiente programa:

```pascal
program alcanceYFunciones;
var
	suma, cant : integer;
function calcularPromedio : real
	var
		prom : real;
	begin
		if (cant = 0) then
			prom := -1
		else
			prom := suma / cant;
	end;
begin
	readln(suma);
	readln(cant);
	if (calcularPromedio <> -1) then begin
		cant := 0;
		writeln(‘El promedio es: ’ , calcularPromedio)
	end;
	else writeln(‘Dividir por cero no parece ser una buena idea’);
end.
```
1. La función calcularPromedio calcula y retorna el promedio entre las variables globales suma y cant, pero parece incompleta. ¿qué debería agregarle para que funcione correctamente?
2. En el programa principal, la función calcularPromedio es invocada dos veces, pero esto podría mejorarse. ¿cómo debería modificarse el programa principal para invocar a dicha función una única vez?
3. Si se leen por teclado los valores 48 (variable suma) y 6 (variable cant), ¿qué resultado imprime el programa? Considere las tres posibilidades:
	1. El programa original.
	2. El programa luego de realizar la modificación del inciso 1.
	3. El programa luego de realizar las modificaciones de incisos 1 y 2.
### 8
Dado el siguiente programa:

```pascal
program anidamientos;
procedure leer;
	var
		letra : char;
	function analizarLetra : boolean
		begin
			if (letra >= ‘a’) and (letra <= ‘z’) then
				analizarLetra := true;
			else if (letra >= ‘A’) and (letra <= ‘Z’) then
				analizarletra := false;
		end;
	begin
		readln(letra);
		if (analizarLetra) then
			writeln(‘Se trata de una minúscula’)
		else
			writeln(‘Se trata de una mayúscula’);
	end;
var
	ok : boolean;
begin
	leer;
	ok := analizarLetra;
	if ok then
		writeln(‘Gracias, vuelva prontosss’);
end.
```
1. La función `analizarLetra` fue declarada como un submódulo dentro del procedimiento leer. Pero esto puede traer problemas en el código del programa principal.
	1. ¿Qué problema encuentra?
	2. ¿Cómo se puede resolver el problema para que el programa compile y funcione correctamente?
2. La función `analizarLetra` parece incompleta, ya que no cubre algunos valores posibles de la variable letra.
	1. ¿De qué valores se trata?
	2. ¿Qué sucede en nuestro programa si se ingresa uno de estos valores?
	3. ¿Cómo se puede resolver este problema?