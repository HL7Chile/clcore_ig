Instance:    ObservacinEjemplo
InstanceOf:  CoreObservacionCL
Usage:       #example
Title:       "Observación Ejemplo"
Description: "Ejemplo de una observación"

* status = #registered

* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory

* code
  * coding = http://loinc.org#8059-8
  * text = "Ab adrenal en Sérum"

* subject = Reference(PacienteCL)

* performer = Reference(EjemploPrestadorCL2)

* encounter = Reference(EjemploEncounterCL)

* effectiveDateTime = "2024-01-17T15:00:00-03:00"

* interpretation 
  * coding = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"
  * text = "Positivo"

* valueQuantity
  * value = 10
  * unit = "arb'U/mL"
  * system = "http://unitsofmeasure.org"
  * code = #[arb'U]/mL