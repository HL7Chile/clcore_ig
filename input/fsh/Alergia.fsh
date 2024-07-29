Profile:        AlergiaIntCL
Parent:         AllergyIntolerance
Id:             CoreAletgiaIntCl
Title:          "CL Alergias e Intolerancias"
Description:    "Este Perfil ha sido desarrollado para cubrir las necesidades para describir una Alergia o alguna Intolerancia definida en un paciente."

* clinicalStatus MS
  * ^short = "active | inactive | resolved"
* clinicalStatus from http://hl7.org/fhir/ValueSet/allergyintolerance-clinical (required)
* verificationStatus MS
  * ^short = "unconfirmed | confirmed | refuted | entered-in-error"
* verificationStatus from http://hl7.org/fhir/ValueSet/allergyintolerance-verification (required)
* type MS
  * ^short = "allergy | intolerance"
* type from http://hl7.org/fhir/ValueSet/allergy-intolerance-type (required)
* criticality MS
  * ^short = "low | high | unable-to-assess"
* criticality from http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality (required)
* code 1.. MS
  * ^short = "Código que identifica la Alergia o Intolerancia"
* code from http://hl7.org/fhir/ValueSet/allergyintolerance-code (example)
* patient only Reference(CorePacienteCl)
  * ^short = "Paciente afectado"
* patient MS
* onset[x] MS
  * ^short = "Cuando la alergia fue identificada"
* reaction MS
  * ^short = "Descripción del evento adverso"
  * manifestation MS
    * ^short = "Manifestación clínica y sintomas del evento adverso"
  * manifestation from http://hl7.org/fhir/ValueSet/clinical-findings (example)
  * severity MS
    * ^short = "mild | moderate | severe"
  * severity from http://hl7.org/fhir/ValueSet/reaction-event-severity (required)

