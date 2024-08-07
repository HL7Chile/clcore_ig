Profile:     ObservacionCL
Parent:      Observation
Id:          CoreObservacionCL
Title:       "CL Observación"
Description: "Perfil para definir un mínimo para cualquier observación."

* identifier MS
  * ^short = "Identificación para la observación"
* status MS
  * ^short = "registered|preliminary|final|amended|corrected|cancelled|entered-in-error|unknown"
  * ^definition = "Estado de la observación"
* status from http://hl7.org/fhir/ValueSet/observation-status|4.0.1 (required)
  * ^binding.description = "Códigos provistos para el estado de una observación"
* category MS
  * ^short = "Clasificación del tipo de observación"
* category from http://hl7.org/fhir/ValueSet/observation-category (preferred)
  * ^binding.description = "Códigos de alto nivel para la categoría de una observación"
* code MS
  * ^short = "Tipo de observación (code/type)"
* code from http://hl7.org/fhir/ValueSet/observation-codes (example)
  * ^binding.description = "Códigos de identficación simple para el nombre de una observación"	
* subject MS
  * ^short = "Sobre Quien o Que se esta realizando la observación"
* subject only Reference(CorePacienteCl or Group or Device or CoreLocalizacionCl)
* encounter MS
  * ^short = "Evento clínico durante el cual se hizo esta observación"
* encounter only Reference(EncounterCL)
* effective[x] MS
  * ^short = "Tiempo/Tiempo-periodo de relevancia clínica para la observación"
* performer MS
  * ^short = "Quien es responsable por la observación"
* performer only Reference(CorePrestadorCl or CoreRolClinicoCl or CoreOrganizacionCl or CareTeam or CorePacienteCl or RelatedPerson)
* value[x] MS
  * ^short = "Actual Resultado"
* interpretation MS
  * ^short = "Alta, baja, normal, etc"
  * ^definition = "Interpretación del valor de la observación"
* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
  * ^binding.description = "Códigos de identificción para la interpretación de la observación"
* note MS
  * ^short = "Comentarios sobre la observación"
* specimen MS
  * ^short = "Muestra tomada para la observación"
* hasMember MS
  * ^short = "Grupo de recursos relacionados a la observación" 
* hasMember only Reference(CoreObservacionCL or QuestionnaireResponse or MolecularSequence)
* component MS
  * ^short = "Componentes de los resultados"	
  * code MS
    * ^short = "Tipo de componente de la observación (code/type)"    
  * code from http://hl7.org/fhir/ValueSet/observation-codes (example)
    * ^binding.description = "Códigos de identficación simple para el nombre de una observación"	
  * value[x] MS
    * ^short = "Actual Resultado del componente"
  * interpretation MS
    * ^short = "Alta, baja, normal, etc"
    * ^definition = "Interpretación del valor del componente de la observación"
  * interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
    * ^binding.description = "Códigos de identificción para la interpretación de la observación"
