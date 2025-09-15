Profile:        ClServicioCuidadosSalud
Parent:         HealthcareService
Id:             cl-core-servicio-cuidados-salud
Title:          "CL Perfil Servicio de Cuidados de Salud"
Description:    """
El **CL Perfil Servicio de Cuidados de Salud** hereda del recurso [HealthcareService]( https://hl7.org/fhir/R4/healthcareservice.html) de FHIR; consulte dicho recurso para conocer su alcance y definiciones de uso. Este perfil establece las expectativas mínimas para la búsqueda y servicios disponibles en un hospital, clínica, cesfam u otro. Especifica qué elementos centrales, extensiones, vocabularios y conjuntos de valores DEBEN estar presentes en el recurso y restringe cómo deben utilizarse dichos elementos. Establecer esta base mínima para el desarrollo de estándares en casos de uso específicos promueve la interoperabilidad y la adopción.
"""

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* identifier MS
  * ^short = "Identificador del Servicio de Cuidados de Salud" 

* providedBy MS
  * ^short = "Organización que provee el Servicio de Cuidados de Salud"
* providedBy only Reference(OrganizacionCL)

* category MS
  * ^short = "Categoría amplia del servicio que se está realizando o entregando."

* type MS
  * ^short = "Tipo de servicio que se está realizando o entregando."
  
* specialty MS
  * ^short = "Especialidad del servicio que se está realizando o entregando."

* location MS
  * ^short = "Ubicación del Servicio de Cuidados de Salud"
* location only Reference(LocalizacionCL)

* name MS
  * ^short = "Nombre del Servicio de Cuidados de Salud"
  * ^definition = "Nombre oficial del Servicio de Cuidados de Salud"

* availableTime MS
  * ^short = "Horarios de disponibilidad del Servicio de Cuidados de Salud"
  * ^definition = "Horarios en los que el Servicio de Cuidados de Salud está disponible para atención."

