Instance : ImmunizationEj
Title : "Ejemplo de Recurso Immunization"
Description: "Immunization ficticio"
InstanceOf : ImmunizationCL
Usage : #example

* extension[ClaseVacuna].valueCoding = ClaseVacCS#internacional "Vacuna Internacional"
* extension[Campana].valueString =  "No Aplica Campaña"
* extension[Dosis].valueString = "Primera"
* extension[ProxFecha].valueDate = "2022-07-06"
* status = #completed
* patient = Reference(PacienteCL)
* vaccineCode
  * coding[0] = CSTiposVacunaCL#hep_B_adult "Hepatitis B adulto" 
  * coding[1] = http://snomed.info/sct#836374004 "Hepatitis B virus antigen-containing vaccine product"
  * text = "vacuna con antígeno de virus Hepatitis B"

* occurrenceDateTime = "2022-07-06T14:30:00+01:00"
* recorded = "2022-07-06T14:40:00+01:00"

* programEligibility.coding = CSNombreCampanaCL#hepatiA "Hepatitis A"