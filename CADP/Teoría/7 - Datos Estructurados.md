# Repasito
Hasta ahora vimos todos estos tipos de datos, menos el resaltado que veremos ahora

![[Drawing 2023-09-14 18.59.52.excalidraw|700]]
> Recordemos que los datos **simples** son aquellos que toman un único valor, mientras que aquellos que son **compuestos** pueden tomar varios valores, por ejemplo los `strings` que son cadenas de texto, o sea cadenas de varios `char`.

# Datos Estructurados
Los datos estrcuturados nacen por la necesidad de asociar varios valores a una misma variable, teniendo también la posibilidad de asignarle un nombre a cada valor que contenga en su interior. Por ahí parece una boludes, pero es básicamente una **variable llena de otras variables**. En programación en el mundo real, eso es conocido como **objeto**.

Por ejemplo, si tengo que guardar datos de personas, sé que van a ser similares, es decir, **van a tener las mismas propiedades**, como año de nacimiento, edad, altura, peso, nombre, etc.

Esta necesidad de asociar ciertas variables para que no queden *"sueltas"* dentro de un programa da vida a los **objetos**.

> De ahora en adelante los llamaremos **objetos**, para que sea más fácil. En Pascal los más comunes son los **registros** del siguiente cap.
## Clasificación
Más por pedido del apunte que otra cosa, detallamos la clasificación de los datos estructurados:
- **Elementos -->** Depende de si los elementos que componen al objeto tienen el mismo tipo de dato (homogéneos) o tienen tipos de dato distintos (heterogéneos)
- **Tamaño -->** Hace referencia a si el objeto puede variar su tamaño durante la ejecución del programa (objeto dinámico), o si por el contrario queda con tamaño fijo una vez declarado (objeto estático)
- **Acceso -->** Se refiere a que si los elementos dentro de un objeto pueden ser accedidos de manera directa (se suele usar notación de punto o corchetes si se tratase de un *array*, por ejemplo: `objeto.elemento`) o si sólo pueden ser accedidos de manera secuencial, es decir, recorriendo cada elemento de dicho objeto hasta llegar al deseado (se suele hacer por índice, como en los *arrays*)
- **Linealidad -->** Hace referencia a la manera en que están guardados los elementos que componen al objeto. Hay objetos que, de un elemento cualquiera, tienen uno solo adelante y uno solo atrás (lineales), mientras que hay otros que tienen `x` cantidad adelante y atrás (no lineales). Ejemplos de esto no encontré, y en el video de teoría no explica mucho, así que suerte jaja salu2.
## Clave-valor
Un concepto bastante útil a conocer es el de **clave y valor**, que hace referencia, dentro de un objeto, al nombre del elemento y al valor del mismo. Por ejemplo, un objeto en Javascript sería algo así:

```js
const enterprise = {
	id: 32,
	name: 'Nasdaq, Inc.',
	ticker: 'NDAQ'
}
```

Cada elemento tiene un nombre que lo identifica y un valor asociado. Para accederlo sería algo así:

```js
enterprise.id // 32
enterprise.name // Nasdaq, Inc.
enterprise.ticker // NDAQ
```

> **Pueden existir objetos dentro de objetos?** Obvio, más adelante los vemos