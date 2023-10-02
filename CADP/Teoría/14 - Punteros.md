Los punteros son variables utilizadas para almacenar una dirección en memoria dinámica. En esa dirección de memoria se encuentra el valor real que almacena. El mismo puede ser de cualquier tipo anteriormente visto (char, string, boolean, integer, record, array, etc.)

Su sintaxis es la siguiente:

```pascal
type
	nombre_puntero = ^ tipo_de_dato;
var
	p: nombre_puntero;
```