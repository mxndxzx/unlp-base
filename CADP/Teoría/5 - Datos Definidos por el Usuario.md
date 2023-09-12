Los datos definidos por el usuario, también conocidos como **TPU**, son aquellos que permiten tomar valores a partir de los datos simples y que pueden ser especificados por el programador.
Esto tiene varias ventajas, como por ejemplo:
- Mejor abstracción de datos
- Mayor seguridad sobre las operaciones que se realizan sobre los datos
- Límites preestablecidos para los valores que pueda tomar
En **Pascal** se declaran de la siguiente manera:

```pascal
program ejemplo;
type
	nombre_tipo = tipo;
begin
	...
```

Para entenderlos mejor, podemos ver el siguiente ejemplo:

```pascal
program ejemplo2;
type
	tipo1 = integer;
var
	valor: tipo1;
begin
	...
```

En este ejemplo, la variable `valor` toma el valor del TPU `tipo1`, que a su vez es igual al tipo  de dato `integer` nativo del lenguaje. Esto es lo mismo que decir `valor = tipo1 = integer`. De esta manera `valor` puede realizar todas las operaciones y tomar todos los valores asociados a los enteros. Sin embargo, **NO** puede relacionarse con ninguna variable que no sea de su mismo tipo (*Type*, no tipo de dato, *type*). Por ejemplo:

```pascal
program ejemplo3;
type
	tipo1 = integer;
var
	valor: tipo1;
	edad: integer;
begin
	valor := 8;
	edad := 25;
	write(edad + valor); { ESTO NO SE PUEDE HACER }
end.
```

Hacer esto con tipos de datos ya existentes no tiene mucho sentido, pero sirve para entenderlo.

---
# Subrango
Es un tipo de dato ordinal (que tiene un orden) que consiste en una sucesión de valores de un tipo ordinal tomado como base.

**¿Qué quiere decir esto?** Que nosotros a los subrangos les pasamos dos valores de tope (desde y hasta) y el mismo va a contener todos los valores que haya en el medio. Por eso es que el tipo de dato de base tiene que ser ordinal. Recordemos que los dos tipos de datos ordinales son el `integer` y el `char` o `string`.
Un ejemplo:

```pascal
program ejemplo4;
type
	notas = 0..10; { Contiene todos los valores de 0 a 10 }
	letras = 'a'..'l'; { Letras de la A a la L minúsculas }
var
	not1,not2: notas; { not1 y not2 pueden contener del 0 al 10 }
	let: letras; { let puede tener de la A a la L minúsculas }
```

Miremos el tipo de dato `char`, que nos va a resultar útil si queremos evaluar inputs de letra que contengan un rango y determinar la acción mediante un `case`:

```pascal
program ejemplo5;
type
	letras = ‘a’..’z’;
var
	primer,segundo,tercer:integer;
	letra:letras;
begin
	primer:= 0;  segundo:=0; tercer:=0;
	read (letra);
	while (letra <> ‘z’) do begin
		case letra of
			‘a’..’h’: primer:= primer + 1;
			‘i’..’n’: segunda:= segunda + 1;
			‘ñ’..’y’: tercer:= tercer + 1;
		end;
		read (letra);
	end;
	write (primer,segunda,tercer);
end.
```