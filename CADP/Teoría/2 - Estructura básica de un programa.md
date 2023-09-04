La estructura básica de un programa en Pascal es la siguiente:
```pascal
Program {nombrePrograma};
Const
	nombre_constante = {valor};
Var
	nombre_variable: {tipoDato};
begin
	{código}
end. {el punto es importante}
```
# Pre y Post condiciones
Una **pre-condición** es la información que se conoce como verdadera o constante antes de iniciar el programa.
Una **post-condición** es la información que debería ser verdadera al finalizar el programa, o sea el resultado esperado.
# Read y Write
Son dos instrucciones que tienen por objetivo leer datos ingresados (por teclado por default) e imprimir en pantalla ciertos datos del programa que sean requeridos, respectivamente.

- Read permite ingresar un valor y lo guarda en la variable asociada a dicha función:
```pascal
read(variable);
```

- Write imprime valores de variables por pantalla, o también puede imprimir cadenas de texto, concatenar u operar variables del mismo tipo:
```pascal
write(variable);
write("Hola mundo!");
write("El resultado es: ", num);
write("La suma da: ", num + 4);
```