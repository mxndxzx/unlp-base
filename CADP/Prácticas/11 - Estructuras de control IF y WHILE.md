### 1
Realizar un programa que lea 2 números enteros desde teclado e informe en pantalla cuál de los dos números es el mayor. Si son iguales debe informar en pantalla lo siguiente: *“Los números leídos son iguales”*.

```pascal
program ej1;
var
    num1, num2: integer;
begin
    write('Ingrese los numeros separados por espacio::  ');
    read(num1,num2);
    if (num1 > num2) then
        write(num1, ' es mas grande que ', num2)
    else if (num1 < num2) then
        write(num2, ' es mas grande que ', num1)
    else if (num1 = num2) then
        write('Los numeros son iguales');
end.
```

### 2
Realizar un programa que lea un número real e imprima su valor absoluto. El valor absoluto de un número `X`, se escribe `|X|` y se define como: 
1. `|X|` = X cuando X es mayor o igual a cero.
2. `|X|` = -X cuando X es menor a cero.

```pascal
program ej2;
var
    num:real;
begin
    write('Ingrese un numero y presione enter:: ');
    read(num);
    write('El numero ingresado fue ');
    writeln(num:6:2);
    write(' y su valor absoluto es ');
    writeln(num * -1:6:2);
end.
```

### 3
Realizar un programa que lea 3 números enteros y los imprima en orden descendente.  Por ejemplo, si se ingresan los valores `4, -10 y 12`, deberá imprimir: `12 4 -10`.

```pascal
program ej3;
var
    num1,num2,num3:integer;
begin
    write('Ingrese 3 numeros enteros separados por un enter:: ');
    readln(num1,num2,num3);
    if ((num1 > num2) and (num2 > num3)) then
        write('', num1, ' - ', num2, ' - ', num3)
    else if ((num2 > num1) and (num1 > num3)) then
        write('', num2, ' - ', num1, ' - ', num3)
    else if ((num3 > num1) and (num1 > num2)) then
        write('', num3, ' - ', num1, ' - ', num2)
    else if ((num3 > num2) and (num2 > num1)) then
        write('', num3, ' - ', num2, ' - ', num1)
    else if ((num1 > num3) and (num3 > num2)) then
        write('', num1, ' - ', num3, ' - ', num2)
    else if ((num2 > num3) and (num3 > num1)) then
        write('', num2, ' - ', num3, ' - ', num1)
    else if (num2 = num1) then
        write('Todos los numeros son iguales!');
end.
```

### 4
Realizar un programa que lea un número real `X`. Luego, deberá leer números reales hasta que se ingrese uno cuyo valor sea exactamente el doble de `X` (el primer número leído).

```pascal
program ej4;
var
    num,num_save:real;
begin
    write('Ingrese un numero real y presione enter:: ');
    readln(num_save);
    write('Continue ingresando numeros reales:: ');
    readln(num);
    while (not(num = num_save * 2)) do begin
        write('Ese no es! Proba otro:: ');
        readln(num);
    end;
    write('Ese era! ', num, ' es el doble de ', num_save);
end.
```

### 5 
Modifique el ejercicio anterior para que, luego de leer el número `X`, se lean a lo sumo 10 números reales. La lectura deberá finalizar al ingresar un valor que sea el doble de `X`, o al leer el décimo número, en cuyo caso deberá informarse *“No se ha ingresado el doble de `X`”*.

```pascal
program ej4;
var
    num,num_save:real; i:integer;
begin
    write('Ingrese un numero real y presione enter:: ');
    readln(num_save);
    write('Continue ingresando numeros reales:: ');
    for i := 0 to 9 do begin
        if ((num = num_save * 2)) then begin
            write ('Ese era! ', num, ' es el doble de ', num_save);
            break;
        end;
        write('Ese no es! Proba otro:: ');
        readln(num);
    end;
    if ((i = 9) and not(num = num_save * 2)) then
        write('No se ingreso el doble de ', num_save);
end.
```

### 6
Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La lectura finaliza cuando se ingresa el legajo `-1`, que no debe procesarse.
Al final de la lectura informar:
1. La cantidad de alumnos leída.
2. La cantidad de alumnos cuyo promedio supera 6.5.
3. El porcentaje de alumnos destacados (alumnos con promedio mayor a 8.5) cuyo legajo sean menor al valor 2500.

```pascal
program ej6;
var
    cant_alu,cant_alu_bueno,cant_alu_destacado,legajo:integer;
    promedio,porcentaje:real;
begin
    cant_alu := 0; cant_alu_bueno := 0; cant_alu_destacado := 0;
    write('Ingrese legajo:: ');
    readln(legajo);
    while (legajo <> -1) do begin
        write('Ingrese promedio:: ');
        readln(promedio);
        cant_alu := cant_alu + 1;
        if ((promedio > 6.5) and not(promedio > 8.50)) then
            cant_alu_bueno := cant_alu_bueno + 1
        else if ((promedio > 8.50) and (legajo < 2500)) then
            cant_alu_destacado := cant_alu_destacado + 1;
        write('Ingrese legajo:: ');
        readln(legajo);
    end;
    porcentaje := ((cant_alu_destacado * 100) div cant_alu);
    writeln('La cantidad de alumnos leída fué de ', cant_alu, ' alumnos.');
    writeln('La cantidad de alumnos con promedio mayor a 6.50 es de ', cant_alu_bueno, ' alumnos');
    writeln('El porcentaje de alumnos con promedio mayor a 8.50 es del ');
    write(porcentaje:4:2);
    write('%')
end.
```

### 7
Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un almacén. La lectura finaliza al ingresar el producto con el código `32767`, el cual debe procesarse. Para cada producto leído, el programa deberá indicar si el nuevo precio del producto supera en un 10% al precio anterior. Por ejemplo: 
- Si se ingresa el código `10382`, con precio actual `40`, y nuevo precio `44`, deberá imprimir: *“el aumento de precio del producto 10382 no supera el 10%”*.
- Si se ingresa el código `32767`, con precio actual `30` y nuevo precio `33,01`, deberá imprimir: *“el aumento de precio del producto 32767 es superior al 10%”*.

### 8
Realizar un programa que lea tres caracteres, e informe si los tres eran letras vocales o si al menos uno de ellos no lo era. Por ejemplo, si se leen los caracteres `a e o` deberá informar *“Los tres son vocales”*, y si se leen los caracteres `z a g` deberá informar *“al menos un carácter no era vocal”*.

### 9
Realizar un programa que lea un carácter, que puede ser “+” (suma) o “-” (resta); si se ingresa otro carácter, debe informar un error y finalizar. Una vez leído el carácter de suma o resta, deberá leerse una secuencia de números enteros que finaliza con 0. El programa deberá aplicar la operación leída con la secuencia de números, e imprimir el resultado final. Por ejemplo:
- Si se lee el carácter “-” y la secuencia `4 3 5 -6 0` , deberá imprimir: `2` (4 – 3 – 5 - (-6))
- Si se lee el carácter “+” y la secuencia `-10 5 6 -1 0`, deberá imprimir `0` ( -10 + 5 + 6 + (-1))