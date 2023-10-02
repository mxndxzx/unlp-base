Hasta el momento vimos variables cuya alocación de memoria ocurre en la memoria estática de la PC, ocupando distintos tamaños según su tipo de dato.

Esto puede resultar un problema, ya que la memoria no es infinita y, por ende, podemos quedarnos sin la misma. Para solucionar esto, los lenguajes de programación permiten la utilización de tipos de datos que permiten reservar y liberar memoria dinámica durante la ejecución del programa, según se requiera.

En Pascal tenemos los **punteros**, que se alojan en la memoria estática pero permiten reservar memoria dinámica para su contenido. En memoria estática siempre ocupan **4 bytes**, mientras que sus datos se guardan en memoria dinámica de la PC.

Esto resulta clave en la eficiencia de un programa y la utilización de recursos.

| Tipo de variable | Bytes que ocupa      |
| ---------------- | -------------------- |
| Char             | 1 byte               |
| Boolean          | 1 byte               |
| Integer          | 6 bytes              |
| Real             | 8 bytes              |
| String           | Tamaño + 1           |
| Subrango         | Depende el tipo      |
| Registro         | Suma de campos       |
| Vector           | DimF * tipo elemento |
| Puntero          | 4 bytes              |

>La cantidad de bytes en memoria dinámica del puntero dependerá del tipo de datos que maneje el mismo