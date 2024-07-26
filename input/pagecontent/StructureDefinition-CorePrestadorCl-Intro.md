#### Ejemplos de uso en Diferentes Escenarios

 * Búsqueda de Profesional de la Salud por *RUN*, *RNPI*, *PASAPORTE* u *OTRO IDENTIFICADOR*
 * Determinación de Certificados que acredita el Prestador 
 * Determinación de especialidades que posee el prestador
 
### Notas Adicionales

Consideraciones para la implementaciónrn

* La Idetificación del Prestador individual puede ser Basada en el **RUN**, **RNPI**, **Pasaporte** u **otro**.
* Para el elemento *name* se agega la extensión externa de 2o apellido en donde la url de esta es *https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido*.
* El elemento *address* considera la creación de un nuevo **tipo de datos** denominado **ClAddress** que contiene lo mismo que el tipo original más las extensiones para codificar comunas, provincias, regiones y países.
* Se entiende por *qualification* como los certificados/títulos, especialidades y subespecialidades registradas por el prestador. Para diferenciar certificados de especialidades y subespecialidades se ha optado por desarrollar dos *slice* para este elemento.
  * El *slice* **TituloProfesional** se usa para la especificación de los Títulos o Certificados Profesionales que tiene el Prestador. Para desarrollar este *slice* se requiere que:
    * *qualification[TituloProfesional].coding.text = "Certificado(s)".
  * El *slice* **Esp** se usa para la especificación de la o las especialidades que posee el Prestador. Para desarrollar este *slice* se requiere que:
    * *qualification[EspecialidadMedica].coding.text = "Especialidad(es)". 
  * El *slice* **SubEsp** se usa para la especificación de la o las subespecialidades que posee el Prestador. Para desarrollar este *slice* se requiere que:
    * *qualification[Subespecialidad].coding.text = "SubEspecialidad(es)". 
* El perfil posee todos los elementos que lo hacen compatible con un **Practitioner IPS**. 