### Elementos Mandatorios:

Los perfiles presentan una serie de elementos de datos que siempre deben estar presentes en cada recurso que se genere desde este perfil. Estos elementos denominados como **Mandatorios** se pueden observar en los perfiles con cardinalidad de valor inicial *1*. 

### Elementos Must Support:

Los elementos que deben ser Soportados, si la data esta presente en el recuso generado, se denominan ([Must Support](http://hl7.org/fhir/R4/profiling.html#mustsupport)), y estos se expresan mediante la letra **S** en cada elemento o FhirPath que tiene esta categoría. Un elemento *Must Support* implica:

* El sistema que recibe un recurso con un elemento *Must Support* debe almacearlo.
* El sistema que recibe un recurso con un elemento *Must Support* debe poder hacer procesamiento de este elemento
* El sistema que genera un recurso, no se ve obligado a definir los elementos *Must Support* a menos que estos sean *Mandatorios*
* Un elemento *Must Support* no implica que sus rutas derivadas lo sea por herencia

La definición formal del Perfil en la legueta *Statics/References* indica cuantos de estos elementos hay distribuidos como elementos o rutas de estos.
<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="Stactics-Reference.png"> 
  <p>Vista "Statics/Reference"</p>
</div>