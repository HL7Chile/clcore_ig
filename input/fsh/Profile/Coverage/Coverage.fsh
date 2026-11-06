Profile:      Covertura
Parent:       Coverage
Id:           cl-core-covertur    
Title:        "CL Perfil Cobertura"
Description:  "Describe la cobertura de un paciente, incluyendo información sobre el tipo de cobertura, el beneficiario y el período de validez"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* identifier MS
  * ^short = "Identificador de la Cobertura"
  * ^definition = "Identificador único de la Cobertura"

* status MS
  * ^definition = "Estado de la Cobertura"

* type MS
  * ^short = "Tipo de Cobertura"
  * ^definition = "Tipo de Cobertura"

* type from PrevisiondeSaludVS (preferred)

* subscriber MS
  * ^short = "Suscriptor de la Cobertura"
  * ^definition = "Persona o entidad que suscribe la Cobertura"

* subscriber only Reference(PacienteCl or RelatedPerson)

* beneficiary only Reference(PacienteCl)
* beneficiary MS
  * ^short = "Beneficiario de la Cobertura"
  * ^definition = "Persona que es beneficiaria de la Cobertura"

* relationship MS
  * ^short = "Relación entre el suscriptor y el beneficiario"
  * ^definition = "Relación entre el suscriptor y el beneficiario de la Cobertura"

* payor only Reference(OrganizacionCL or PacienteCl or RelatedPerson)

* class MS
  * ^short = "Clase de Cobertura"
  * ^definition = "Clase de Cobertura"
  * type MS
    * ^short = "Tipo de clase de la cobertura plan o grupal"
    * ^definition = "Tipo de clase de la cobertura plan o grupal"
  * value MS
    * ^short = "Valor asociado a la Cobertura"
    * ^definition = "Valor asociado a la Cobertura"
  * name MS
    * ^short = "Valor legible por el humano asociado a la Cobertura"
    * ^definition = "Valor legible por el humano asociado a la Cobertura"
