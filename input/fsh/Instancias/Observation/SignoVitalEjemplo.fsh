Instance:    observacion-signos-vitales-ejemplo
InstanceOf:  CLCoreSignosVitalesPerfil
Usage:       #example
Title:       "Ejemplo de Signo Vital"
Description: "Ejemplo de una observación de signo vital de saturación de oxígeno en sangre" 

* status = #registered

* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code
  * coding = http://loinc.org#2708-6 "Saturación de oxígeno: Sangre arterial : Punto temporal: Fracción de masa: Cuantitativo:"


* subject = Reference(PacienteCL)

* performer = Reference(EjemploPrestadorCL2)

* encounter = Reference(EjemploEncounterCL)

* effectiveDateTime = "2024-01-17T15:00:00-03:00"

* valueQuantity
  * value = 91
  * unit = "%"
  * system = "http://unitsofmeasure.org"
  * code = #%