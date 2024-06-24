Instance : DiagnosticoEj
Title : "Ejemplo de Un Diagnóstico de hipertensión"
Description: "Diagnóstico Confirmado de Hipertesión"
InstanceOf : CoreDiagnosticoCl
Usage : #example

* clinicalStatus
  * coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
  * text = "Activo"

* verificationStatus
  * coding = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
  * text = "Confirmado"

* code 
  * coding = http://snomed.info/sct#38341003 "High blood pressure"
  * text = "Diagnóstico de Hipertensión Confirmada"

* subject = Reference(PacienteCL)

* onsetDateTime = "2022-08-07"