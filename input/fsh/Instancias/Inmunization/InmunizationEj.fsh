Instance : ImmunizationEj
Title : "Ejemplo de Recurso Immunization"
Description: "Immunization ficticio"
InstanceOf : ImmunizationCL
Usage : #example

* status = #completed
* patient = Reference(PacienteCL)
* extension[Campana].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/Campana"
* extension[Campana].valueString = "Campaña Hepatitis"
* extension[ClaseVacuna]
  * url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ClaseVacuna"
  * valueCoding = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSClaseVacuna#campaña "Vacunación Campaña"

* extension[Dosis]
  * url = 	"https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/Dosis"
  * valueString = "Primera"
* vaccineCode
  * coding[0] = CSTiposVacunaCL#hep_B_adult "Hepatitis B adulto" 
  * coding[1] = http://snomed.info/sct#836374004 "Hepatitis B virus antigen-containing vaccine product"
  * text = "vacuna con antígeno de virus Hepatitis B"

* occurrenceDateTime = "2022-07-06T14:30:00+01:00"
* recorded = "2022-07-06T14:40:00+01:00"

* extension[ProxFecha]
  * url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProxFecha"
  * valueDate = "2022-09-06"