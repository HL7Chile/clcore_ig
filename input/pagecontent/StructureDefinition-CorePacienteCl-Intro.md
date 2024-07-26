#### Ejemplos de uso en Diferentes Escenarios

 * Búsqueda de Datos demográficos de un paciente, haciendo uso de su identificación como *RUN* o *Documento de Identificación* 
 * Búsquedas varias para datos demográficos específicos de Pacientes como *Apellidos*, *Nombres* o *Dirección*
 * Busqueda de **Id** de recurso por medio de algún parámetro de búsqueda, para busqueda de documentos o datos clínicos asociados al paciente.

### Notas Adicionales

Consideraciones para la implementación:

* Nacionalidad se agrega como una extensión local que figura como un *slice* de nombre **CodigoPaises** .
  * *system* para esta extensión corresponde a uno local creado con la ISO-3166-N
  * *ValueSet* para código es una expansión completa del *CodeSystem*
* Considerar para el *identifier*.
  * El elemento *identifier* considera en type la declaración del tipo de documento.
    * Dado que uno de los tipos de documetos corresponde a una Cédula Nacional, se debió generar una extensión **CodigoPaises** para determinar la procedencia del documento.
  * Por motivos de no complicar el elemento no se desarrolló un *slice* para diferenciar el RUN. Sin embargo, es recomendable considerar el RUN como uno de los identificadores declarados.
* Para el elemento *name* se agrega la extensión externa de 2o apellido y considear un slice que diferencia:
  * Nombres oficial
  * Nombre social, el cual elimina elementos como el apellido
* El elemento *address* considera la creación de un nuevo **tipo de datos** denominado **ClAddress**, que contiene lo mismo que el tipo original más las extensiones para codificar comunas, provincias, regiones y países.
* El elemento *contact* consiera una extsión para poder darle identificación al contacto.
* El perfil posee todos los elementos que lo hacen compatible con un **Paciente IPS**.