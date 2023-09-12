Se entiende por modularizar a la acción de dividir un problema en partes funcionalmente independientes, que encapsulen operaciones y datos. No es simplemente subdividir el código porque si, tiene que tener un propósito de funciones lógicas con datos propios y de comunicación bien especificado.

**Dicho en criollo**, significa dividir el problema para poder reutilizar código, que sea más legible y más fácil tanto de pensar como de codear.

Para modularizar se requiere un módulo (función o procedimiento en *Pascal*) el cual tiene que tener una tarea asignada y poder, de ser necesario, cooperar con los demás módulos para llegar a la solución esperada.

Acá suena mucho la palabra **Top-Down**, que no es otra cosa que modularizar pero dicho elegante.

> Todos estos conceptos quizá están mejor explicados en las presentaciones que da la cátedra, pero no tienen demasiado misterio, se resumen a esto dicho anteriormente.

## Ejemplos

Como en la presentación 10 da ejemplos de módulos y alternativas según el lenguaje elegido, pero usa lenguajes que ninguna persona mentalmente sana usaría, acá te dejo mis ejemplos (si querés ver ejemplos de codigo, buscalos):
- **JavaScript** --> Se usan funciones con parámetros dinámicos, clases, objetos, métodos, etc.
- **Java** --> Lo mismo que Javascript con algunas cosas más complejas que no vienen al caso
- **Python**  --> Las funciones se declaran con `def` y lo demás igual que los de arriba (en general)

# Procedures
En español **procedimientos**, son conjuntos de instrucciones que realizan una tarea específica y pueden retornar valores (por defecto `0`). Es una de las maneras que tiene Pascal de modularizar el código. La sintaxis es la siguiente:

```pascal
program procedimientos;
procedure nombre_procedure (parametros);
	var
		{ variables locales }
	begin
		{ codigo }
	end;

{ Para llamarlo, adentro de nuestro código }
nombre_procedure(parametros);
{ O si no tiene parámetros }
nombre_procedure;
```

`Variables locales` hace referencia a las variables que vamos a declarar dentro del procedure, a las cuales el programa principal no va a tener acceso. Es decir, pertenecen solo al procedure.
