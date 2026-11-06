Profile:      CoreDeclaracionMedicacionCl
Parent:       MedicationStatement
Id:           cl-core-declaracion-medicacions
Title:        "Declaración de Medicación"
Description: "Este perfil representa las restricciones aplicadas al recurso MedicationStatement. Un registro de una declaración de medicación se representa en la historia del paciente como una instancia de un recurso MedicationStatement restringido por este perfil."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft


//* ^version = "0.1.1"
* ^status = #active
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile
"
* status 1..1 MS
* status ^comment = "En IPS el alcance del proyecto impide el uso del concepto entered-in-error"
* medication[x] 1..1 MS
* medication[x] only CodeableConcept or Reference(CoreMedicamentoCl)
* medication[x] MS
  * ^short = "Medicamento que está tomando"
  * ^definition = "Identifica la medicación que se está administrando o el motivo de ausencia o desconocimiento de la medicación. Se trata de un enlace a un recurso que representa los detalles de la medicación o de un simple atributo que contiene un código. Para mejorar la interoperabilidad global se recomienda encarecidamente que se utilice la referencia a un recurso de medicación, limitando el uso de medicationCodeableConcept únicamente a los casos en los que no se disponga de más información que un simple código."

* subject only Reference(PacienteCl)
* subject MS
  * ^short = "Paciente al que se le está declarando la medicación"
* effective[x] 1..1 MS
  * ^short = "La fecha/hora o el intervalo en que se toma/se tomó/se tomará la medicación"
* dosage MS
  * ^short = "Detalles de cómo se toma/se tomaba o debería tomarse la medicación"
* dosage.text MS
  * ^short = "Instrucciones de dosificación en texto libre, por ejemplo: SIG"
* dosage.timing MS
  * ^short = "Cuándo debe administrarse la medicación"
* dosage.route ^short = "Concepto - referencia a una terminología o sólo texto"
* dosage.route only CodeableConcept