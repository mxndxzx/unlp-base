> Primero que nada, **¿Qué es un dato?**

Un dato es una clase de objetos con información ligados a un conjunto de operaciones para crearlos y manipularlos. Tienen **siempre** un rango de valores posibles, un conjunto de operaciones permitidas y una representación interna.

Se pueden dividir de la siguiente manera:
![[Drawing 2023-08-23 16.52.28.excalidraw|600]]
- Los datos **simples** son aquellos que toman un único valor en un momento determinado, por ejemplo, las variables y constantes.
- Los datos **compuestos** son los que pueden tomar más de un valor a la vez, por ejemplo los arrays o las matrices, que por ahora no veremos.

> Nativos del lenguaje y definidos por el programador son bastante auto-explicativos como para mencionarlos

# Variables y Constantes
Ambas hacen referencia a un espacio físico reservado en memoria que, según le indiquemos, puede contener cualquier tipo de dato (pero no dos a la vez). Ambos tienen un nombre que hace referencia a dicho espacio en memoria, y se recomienda que este nombre sea declarativo, es decir, que nos dé una idea clara de qué dato contiene dicho espacio en memoria.

Las variables pueden cambiar su valor en cualquier momento de la ejecución del programa, mientras que las constantes no. Por ejemplo, si necesito usar el número **Pi**, lo puedo declarar como constante, ya que no necesito cambiar su valor en ningún momento.

# Tipos de datos
> Recordemos que, en Pascal, debemos declarar el tipo de dato que va a contener la variable o constante **(tipado fuerte)**.

Los datos, en general, se separan de esta manera:
## Numérico
Representa un conjunto numérico (xd). Pueden ser **Enteros** (integer) o Reales (real).
Las operaciones válidas son las cuatro operaciones matemáticas básicas, operaciones enteras (**MOD** y **DIV**, propias de Pascal, acá hay más detalles) y operaciones lógicas (mayor, menor, igual, and, or, etc...)

> Los reales tienen coma, los enteros no.

## Boolean
a.k.a dato lógico, tiene dos valores posibles: **True** o **False**, nunca los dos juntos.
Las operaciones que permite son puramente compuertas lógicas, como And, Or, Not, etc...

## Caracter
a.k.a *Char* en inglés, representa un conjunto finito y ordenado de caracteres que la computadora reconoce.  Normalmente están dados por la tabla **ASCII**, por lo que son datos ordinales, al igual que los números.

Las operaciones que permite son lógicas, del tipo mayor, menor, igual o distinto.

> **OJO!** Un dato tipo caracter contiene un solo caracter, para las cadenas de texto se usa el *string*

## String
Lo mismo que el caracter, pero en cadena (dato compuesto). Admite, en Pascal, hasta 256 caracteres.

> Recordemos que todos estos datos ocupan un espacio en memoria, almacenado mediante una constante o variable