Los registros son un tipo de dato estructurado (un objeto, va) que permite agrupar diferentes clases de datos en una estructura única bajo un solo nombre. Es una estructura que puede contener elementos de distintos tipos de dato (**heterogénea**) y su tamaño no cambia durante la ejecución del programa (**estática**). Los tipos de dato del registro también deben ser estáticos.

La sintaxis en Pascal es la siguiente:

```pascal
program regs;
const
	{...}
type
	nombre_registro = record
		campo1: tipo_de_dato;
		campo2: tipo_de_dato;
		{...}
	end;
	
{ Se les da vida con variables si o si }
var
	variable1, variable2: nombre_registro;

{ Se asignan en cualquier orden y puedo no asignarlos }
variable1.campo1 := 'hola';

{ Se acceden con notación de punto }
variable2.campo1

{ No puedo hacer un read directo, tengo que pasar por una variable primero }
read(variable1) ESTO NO
read(variable1.campo1) ESTO SI
```

