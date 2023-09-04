Todos los lenguajes de programación tienen un conjunto mínimo de instrucciones que permiten especificar el control del algoritmo que se quiera implementar. En otras palabras, permiten manipular los datos del programa para obtener el resultado que queramos.
Estas estructuras se pueden dividir de la siguiente manera:

![[Drawing 2023-08-28 17.41.25.excalidraw|550]]
## Secuencia
La más simple. Se resume en una secuencia de pasos o instrucciones, es decir, el programa que se ejecuta en el orden en que lo escribimos, de arriba hacia abajo.
## Decisión
Representa una toma de decisión sobre una o más condiciones en algún punto del programa. Si la condición se cumple hace una cosa, si no se cumple hace otra. En **Pascal** hay que prestar atención a la sintaxis del `if` :

```pascal
if (condicion) then
	{una_sola_accion};
------------------------------------------
if (condicion) then
	begin
		{accion_1};
		{accion_2};
	end;
------------------------------------------
if (condicion) then
	{una_sola_accion_verdadera};
else
	{una_sola_accion_falsa};
------------------------------------------
if (condicion) then
	begin
		{accion_1};
		{accion_2};
	end
else
	{una_sola_accion_falsa};
------------------------------------------
if (condicion) then
	begin
		{accion_1};
		{accion_2};
	end
else
	begin
		{accion_falsa_1};
		{accion_falsa_2};
	end;
```
## Selección
Es la misma idea que el `if`, pero apunta a casos donde hay que verificar un rango extenso de condiciones. Se encarga de decidir qué hacer según el valor que tome una variable. En cualquier otro lenguaje de programación se conoce como `switch`. En **Pascal** toma el nombre de `case` :

```pascal
case (variable) of
	condicion_1: {accion_1};
	condicion_2: {accion_2};
	...
	condicion_n: {accion_n};
end;
------------------------------------------
case (variable) of
	condicion_1: {accion_1};
	condicion_2:
		begin
			{accion_2};
			{accion_3};
		end;
	...
	condicion_n: {accion_n};
end;
```
## Iteración
Iterar quiere decir repetir. Esta estructura de control se encarga de repetir un conjunto de acciones una determinada cantidad de veces, que está **dada por una condición**. Se pueden clasificar en pre y post-condicionales, aunque no todos los lenguajes de programación cuentan con esto.

Las **pre-condicionales** evalúan la condición antes de empezar a ejecutar las instrucciones que contiene dentro. Es decir, puede no ejecutarse nunca. Se llama `while`
Las **post-condicionales**, en cambio, se ejecutan una primera vez y luego determinan la veracidad de la condición. Quiere decir que si o si se va a ejecutar una vez. Se llama `repeat until`. No tiene muchos usos prácticos, por eso no está en todos los lenguajes de programación, pero en Pascal se usa bastante.

La sintaxis, en orden, es la siguiente:

```pascal
while (condicion) do
	{una_sola_accion};
------------------------------------------
while (condicion) do
	begin
		{accion_1};
		{accion_2};
	end;

{-------------- Y la otra ---------------}

repeat
	{una_sola_accion};
until (condicion);
------------------------------------------
repeat
	{accion_1};
	{accion_2};
until (condicion);
```
## Repetición
Mismo concepto que la iteración, pero la cantidad de repeticiones está dada por un número fijo. Por ejemplo:

```pascal
for variable_control := valor_incial to valor_final do
	{accion};
```

Vemos que esta estructura de control usa 3 variables:
- **Variable de Control** --> Es la variable que va a llevar el control de la repetición, es decir, la que *"lleva la cuenta"*. En el mundo de la programación se suele usar la letra `i` , `j` , o `k`  y se le asigna **siempre** el tipo de dato `integer`
- **Valor Incial** --> Es el número desde el cual va a comenzar a contar. Suele ser 1.
- **Valor Final** --> Es el número tope, hasta dónde va a llegar a contar, la cantidad de repeticiones que va a hacer.
- **Paso o Salto** --> En Pascal no aparece, pero en otros lenguajes si. Es el salto entre repeticiones que va a dar, por ejemplo, en Pascal por defecto va aumentando en 1 número hasta llegar al valor final. El paso lo que hace es modifcar ese *"voy de a 1"*.

Ahora la sintáxis un poco más realista:

```pascal
for i := 1 to 10 do
	{accion};
------------------------------------------
for i := 1 to 10 do
	begin
		{accion_1};
		{accion_2};
	end;
```
