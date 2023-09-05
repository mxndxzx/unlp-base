El concepto de máximos y mínimos se basa en la **comparación** de valores. Es decir, cuando quiero saber el valor más alto entre una serie de números, tengo que verificar de a un valor, guardarlo como el más alto, y luego seguir verificando el valor de cada uno actualizando el máximo cada vez que la comparación me de más alta que el número anterior.

Medio kilombo explicarlo así, pero es simplemente esto. Para los mínimos es el mismo concepto.

Para conceptualizar mejor esto, veamos el siguiente ejemplo:

```pascal
program ejemplo4;
var
    input,max:real;
begin
    max := 0;
    read(input);
    while (input <> 0) do begin
        if (input > max) then
            max:= input;
        read(input)
    end;
    write(max);
end.
```

**¿Qué es lo que hace?**
- Incializa la variable `max` (número más alto) en 0, para que pueda ir guardando valores posteriormente.
- Lee el número que ingresamos mediante la variable `input` (la primera vez).
- Espera que el número ingresado sea distinto de 0, ya que si fuese igual a 0 sería la condición para que el programa se detenga.
- Pregunta, en forma de `if`, si el número ingresado es mayor al número evaluado anteriormente. La primera vez que se ejectue, va a ser `0`.
- Si lo es, actualiza el valor de `max`, si no lo es, sigue de largo y solicita nuevamente que se ingrese un número por teclado.
- Cuando recibe el valor `0` ingresado por teclado, el programa se detiene, sale del `while` e informa el valor de la variable `max`.
- **Por ejemplo:** Si ingreso los valores `1`, `6`, `2` y `0`, me va a informar el valor `6`.

> Para el mínimo, es el mismo ejemplo, pero en vez de preguntar si es mayor, se pregunta si es menor. Además hay que inicializar la variable `min` (de mínimo) en un número alto, cosa que sepamos que el programa nunca va a alcanzar ese valor.
> 
> Por ejemplo, si estamos leyendo promedios de alumnos, sabemos que nunca va a pasar de `10`, por lo que podemos incializar `min` en `11`.

# Otros ejemplos
## Leer id y promedio