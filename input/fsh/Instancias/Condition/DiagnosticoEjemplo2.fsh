Instance : DiagnosticoEj2
Title : "Ejemplo de Un Diagnóstico de Faringoamigdalitis"
Description: "Diagnóstico Confirmado de Faringoamigdalitis"
InstanceOf : CoreDiagnosticoCl
Usage : #example

* clinicalStatus
  * coding = http://terminology.hl7.org/CodeSystem/condition-clinical#relapse "Relapse"
  * text = "Recaída"

* verificationStatus
  * coding = http://terminology.hl7.org/CodeSystem/condition-ver-status#unconfirmed "Unconfirmed"
  * text = "Sin Confirmar"

* code 
  * coding = http://snomed.info/sct#878818001 "Pharyngotonsillitis"
  * text = "faringoamigdalitis"

* category
  * coding = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis "Encounter Diagnosis"
  * text = "Diagnostico del Encuentro"

* subject = Reference(PacienteCL)

* onsetDateTime = "2022-08-07"