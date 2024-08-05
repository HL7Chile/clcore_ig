Profile:        DiagnosticoCl
Parent:         Condition
Id:             CoreDiagnosticoCl
Title:          "CL Condición-Diagnóstico"
Description:    "Condicion o Diagnósticos de Pacientes"

* ^version = "1.9.0"
* ^status = #active
* ^publisher = "HL7 Chile"

* clinicalStatus MS
* clinicalStatus ^short = "El estatus en el cual se encuentra la condición: active| recurrece | relapse | inactive | remission | resolved"
* clinicalStatus  from 	http://hl7.org/fhir/ValueSet/condition-clinical (required)
* clinicalStatus ^binding.description = "Códigos definidos por estándar"
* clinicalStatus ^definition = "El estatus en el cual se encuentra la condición de un Paciente"

* verificationStatus MS 
* verificationStatus ^short = "Estado de verificación de la condición o diagnóstico: unconfirmed | provisional | differential | confirmed | refuted | entered-in-error"
* verificationStatus ^definition = "Estado de verificación de la condición o Diagnóstico"
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status (required)
* verificationStatus ^binding.description = "Códigos definidos por estándar"

//---paciente
* subject only Reference(PacienteCl or Group)
* subject MS
* subject.reference MS
* subject.identifier and subject.display MS

* subject ^short = "Paciente sobre al que corresponde la condición." 
* subject ^definition = "Paciente sobre al que corresponde la condición." 
  * reference ^short = "Referencia al recurso del Paciente al cual se indica el diagnóstico o condicón"
  * identifier ^short = "Identificador del paciente"
  * display ^short = "Texto alternativo para el recurso"

//----Code

* code MS  

* code ^definition = "Identificación de la condición, el problema o el diagnóstico o registro del \"problema ausente\" o de los \"problemas desconocidos\"."
* code ^short = "Condición de la persona en Código o no conocido"
* code ^comment = "Se agregan los códigos no conocido o no presente"

* code from VSDiagnosticosSCT (example)
* code ^short = "Códigos de SOMED-CT y adicionales de ausente o desconocido"
* code ^binding.description = "Diagósticos en SNOMED-CT. El ValueSet trae toda la terminología + Problema Ausente o Desconocido"

* onset[x] MS
* onset[x] ^short = "Fecha para determinación Diagnóstica a definir entre fecha única o período"
* onset[x] ^definition = "Fecha o rango de fechas en que se definió el diagnóstico o se determinó la condición"
* onset[x] only dateTime or Period

* onset[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type[=].extension.valueBoolean = true

* onset[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type[=].extension.valueBoolean = true
	

