Son un tipo de dato estrcuturado, similar a los objetos literales, que permiten agrupar distintas propiedades a un mismo tipo de elemento bajo un único nombre.
Permite distintos tipos de datos en su interior; y es estática, es decir, su tamaño no cambia durante la ejecución del programa.

Su sintaxis es la siguiente:

```pascal
program regs;
const
	{...}
var
	{variables globales}
type
	nombre_reg = record
		campo1: tipo_de_dato;
		campo2: tipo_de_dato;
		{...}
	end;
var
	{variables locales}
```

## Asignación de Variable Tipo Registro
Puedo asignar variables para que su contenido sea un registro:

```pascal
program regs2;
type
	perro = record
		raza: string;
		nombre: string;
		edad: integer;
	end;
var
	animal1, animal2: perro;
begin
	{...}
	animal1 := animal2;
	{...}
end.
```
## Asignacion de los Campos
Puedo asignarle valor a los campos de un registro previamente asignado a una variable, así como también accederlo y realizar las operaciones que me permita el tipo de dato de dicho campo.

No importa el orden en el que les de valor y puedo dejar valores sin asignar sin ningún problema.

```pascal
{ Con el programa de arriba }
begin
	animal1.raza := 'Doberman';
	animal2.edad := 9;
	animal1.edad := animal2.edad;
	{...}
	read(animal1.nombre);
	read(animal2.raza);
	{...}
	write(animal1.raza);
	write(animal2.edad);
end.
```

**NO** puedo leer ni escribir el registro entero, es decir:

```pascal
{ No puedo hacer esto }
read(animal1);
write(animal2);
```
## Darles Valor con un Módulo
Esto es simplemente un ejemplo donde creo un `procedure` que contiene 3 reads. De esta manera, puedo llamar a dicho procedure en el código e ingresar todos los valores por teclado, asignando a la vez los valores de `ani1` y `ani2`. Uso un `procedure` y no una `function` porque necesito retornar más de un valor y de varios tipos, por eso uso un parámetro:

```pascal
program regs3;
type
	perro = record
		raza: string;
		nombre: string;
		edad: integer;
	end;
procedure leer (var p:perro);
	begin
		read(p.raza);
		read(p.nombre);
		read(p.edad);
	end;
var
	ani1,ani2: perro;
begin
	leer(ani1);
	ani2 := ani1;
end.
```

Para mostrar los valores solo tengo que accederlos con notación de punto y hacerles un `write`.
## Comparación - Valor de verdad
No puedo utilizar comparaciones con registros crudos para evaluar condiciones, por ejemplo, en un `if`:

```pascal
begin
	{ Esto no se puede hacer }
	if (ani1 = ani2) then {...}

	{ En cambio tengo que hacer esto }
	if (ani1.campo1 = ani2.campo2) then {...}
end.
```

Si puedo usar un registro como comparación cuando lo paso por un módulo que realice esa operación, por ejemplo:

```pascal
program regs4;
type
	perro = record
		raza: string;
		nombre: string;
		edad: integer;
	end;
function iguales (p1,p2: perro): boolean;
	var
		ok: boolean; { Esto es lo que retorna la función }
	begin
		if((p1.raza = p2.raza) and (p1.nombre = p2.nombre) and (p1.edad = p2.edad)) then
			ok := true
		else
			ok := false;
		iguales := ok { Le indico el valor de retorno }
	end;
procedure { Los de leer e imprimir de regs3.pas }
var
	ani1,ani2: perro;
begin
	leer(ani1);
	leer(ani2);
	if (iguales(ani1,ani2)) then
		write('Son iguales')
	else
		write('NO son iguales');
end.
```
# Registros anidados
a.k.a **Registro de registro**, sirve para agrupar datos, como por ejemplo fechas, dentro de un campo de un registro. Las operaciones y básicamente todo es igual a un registro. Por ejemplo:

```pascal
{ En vez de hacer esto }
perro = record
	raza: string;
	edad: integer;
	nombre: string;
	dia: integer;
	mes: integer;
	año: integer;
end;
{ Es mejor hacer esto }
fecha = record
	dia: integer;
	mes: integer;
	año: integer;
end;

perro = record
	raza: string;
	edad: integer;
	nombre: string;
	fechaVis = fecha;
end;
```

Esto permite agrupar mejor los datos. Para acceder a un valor de un registro dentro de un registro se sigue usando notación de punto, pero de manera secuencial:

```pascal
var
	ani1,ani2: perro;
begin
	read(ani1.fechaVis.dia);
	read(ani1.fechaVis.mes);
	read(ani1.fechaVis.año);
	{ Lo mismo para todas las otras operaciones }
end.
```
# Corte de Control
>Es una forma de resolver un tipo de problemas. Aplica también a vectores y listas

Sirve para cuando tengo una entrada de datos sueltos, por ejemplo, en el apunte plantea un problema en el cual se leen registros de perros y se pide contabilizar cuántos de cada raza existen. Todo esto sin que vengan ordenados.

**Es un kilombo**