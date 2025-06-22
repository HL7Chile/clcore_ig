Profile:     CLCoreSignosVitalesPerfil 
Parent:      $vitalsigns
Id:          cl-core-signos-vitales
Title:       "CL Signos Vitales"
Description: """
Este perfil está basado en el [FHIR Vital Signs Profile](https://hl7.org/fhir/R4/observation-vitalsigns.html) y definiendo *indicaciones* *adiccionales* en el recurso Observation que representa las observaciones de signos vitales. Esto especifica cuales son los elementos principales, extensiones, vocabularios y set de valores que **DEBE** estar presentes en el recurso y restricciones. Proveendo un piso para estandarizar los desarrollos para casos de uso especificos fomentando la interoperabilidad y su adopción. 
"""
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[0].valueInteger = 1
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[1].valueCode = #draft

* ^status = #draft
* ^language = #es
* ^experimental = false

* status 1..1 MS
* code from VSSignosVitales (extensible)
  * ^binding.description = "Códigos de identificación simple para el nombre de una observación"
* subject 1..1 MS
  * ^short = "Paciente al cual se le toman los signos vitales"
* subject only Reference(PacienteCl)
* effective[x] 1..1 MS
  * ^short = "A menudo solo una fecha y hora para los signos vitales"
* effective[x] only dateTime or Period
* performer MS
  * ^short = "Quien es responsable por la observación"
* performer only Reference(PrestadorCL or CoreRolClinicoCl or OrganizacionCL or ClCareTeamPerfil or PacienteCl or RelatedPerson)
* value[x] MS
  * ^short = "Valor del signo vital"
  * ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
  * ^type[=].extension.valueBoolean = true
* value[x] from $vitalsignsunit (extensible)
* dataAbsentReason MS
  * ^short = "Razón por la cual no se obtuvo el valor del signo vital"
* component MS
  * ^short = "Componentes del signo vital"
  * code 1..1 MS
  * code from VSSignosVitales (extensible)
    * ^binding.description = "Códigos de identificación simple para el nombre de una observación"
  * value[x] MS
    * ^short = "Valor del componente del signo vital"
    * ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
    * ^type[=].extension.valueBoolean = true
  * value[x] from $vitalsignsunit (required)
  * dataAbsentReason MS
    * ^short = "Razón por la cual no se obtuvo el valor del signo vital"
