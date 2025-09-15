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



Instance:    observacion-signos-vitales-altura-ejemplo
InstanceOf:   CLCoreAlturaCorporal
Usage:       #example
Title:       "Ejemplo de Altura de Paciente"
Description: "Ejemplo de una observación de signo vital de atura de paciente" 

* status = #registered

* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code
  * coding = http://loinc.org#8302-2 "Body height"


* subject = Reference(PacienteCL)

* performer = Reference(EjemploPrestadorCL2)

* encounter = Reference(EjemploEncounterCL)

* effectiveDateTime = "2024-01-17T15:00:00-03:00"

* valueQuantity
  * value = 172
  * unit = "cm"
  * system = "http://unitsofmeasure.org"
  * code = #cm


Instance:    observacion-signos-vitales-circunferencia-cabeza-ejemplo
InstanceOf:  CLCoreCircunferenciaCabeza
Usage:       #example
Title:       "Ejemplo de circunferencia de cabeza de paciente"
Description: "Ejemplo de una observación de signo vital de tamaño circunferencia de cabeza de paciente" 

* status = #registered

* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code
  * coding = http://loinc.org#9843-4 "Head Occipital-frontal circumference"


* subject = Reference(PacienteCL)

* performer = Reference(EjemploPrestadorCL2)

* encounter = Reference(EjemploEncounterCL)

* effectiveDateTime = "2024-01-17T15:00:00-03:00"

* valueQuantity
  * value = 58
  * unit = "cm"
  * system = "http://unitsofmeasure.org"
  * code = #cm



Instance:    observacion-signos-vitales-frec-card-ejemplo
InstanceOf:  CLCoreFrecuenciaCardiaca
Usage:       #example
Title:       "Ejemplo de frecuencia cardiaca de paciente"
Description: "Ejemplo de una observación de signo vital de frecuencia cardiaca de paciente" 

* status = #registered

* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code
  * coding = http://loinc.org#8867-4 "Heart rate"


* subject = Reference(PacienteCL)

* performer = Reference(EjemploPrestadorCL2)

* encounter = Reference(EjemploEncounterCL)

* effectiveDateTime = "2024-01-17T15:00:00-03:00"

* valueQuantity
  * value = 72
  * unit = "pulsos/min"
  * system = "http://unitsofmeasure.org"
  * code = #/min


Instance:    observacion-signos-vitales-frec-resp-ejemplo
InstanceOf:  CLCoreFrecuenciaRespiratoria
Usage:       #example
Title:       "Ejemplo de frecuencia respiratoria de paciente"
Description: "Ejemplo de una observación de signo vital de frecuencia respiratoria de paciente" 

* status = #registered

* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code
  * coding = http://loinc.org#9279-1 "Respiratory rate"


* subject = Reference(PacienteCL)

* performer = Reference(EjemploPrestadorCL2)

* encounter = Reference(EjemploEncounterCL)

* effectiveDateTime = "2024-01-17T15:00:00-03:00"

* valueQuantity
  * value = 16
  * unit = "respiraciones/min"
  * system = "http://unitsofmeasure.org"
  * code = #/min


Instance:    observacion-signos-vitales-imc-ejemplo
InstanceOf:  CLCoreIMC
Usage:       #example
Title:       "Ejemplo de índice de masa corporal de paciente"
Description: "Ejemplo de una observación de signo vital de índice de masa corporal de paciente" 

* status = #registered

* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code
  * coding = http://loinc.org#39156-5 "Body mass index (BMI) [Ratio]"


* subject = Reference(PacienteCL)

* performer = Reference(EjemploPrestadorCL2)

* encounter = Reference(EjemploEncounterCL)

* effectiveDateTime = "2024-01-17T15:00:00-03:00"

* valueQuantity
  * value = 23.2
  * unit = "Hk/m2"
  * system = "http://unitsofmeasure.org"
  * code = #kg/m2


Instance:    observacion-signos-vitales-peso-ejemplo
InstanceOf:  CLCorePesoCorporal
Usage:       #example
Title:       "Ejemplo de índice de peso de paciente"
Description: "Ejemplo de una observación de signo vital de peso de paciente" 

* status = #registered

* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code
  * coding = http://loinc.org#29463-7 "Body weight"


* subject = Reference(PacienteCL)

* performer = Reference(EjemploPrestadorCL2)

* encounter = Reference(EjemploEncounterCL)

* effectiveDateTime = "2024-01-17T15:00:00-03:00"

* valueQuantity
  * value = 72.4
  * unit = "Kg"
  * system = "http://unitsofmeasure.org"
  * code = #kg


Instance:    observacion-signos-vitales-presion-sangre-ejemplo
InstanceOf:  CLCorePresionEnSangre
Usage:       #example
Title:       "Ejemplo de presión sanguínea de paciente"
Description: "Ejemplo de una observación de presión sanguínea de paciente" 

* status = #registered

* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code
  * coding = http://loinc.org#85354-9 "Blood pressure panel with all children optional"


* subject = Reference(PacienteCL)

* performer = Reference(EjemploPrestadorCL2)

* encounter = Reference(EjemploEncounterCL)

* effectiveDateTime = "2024-01-17T15:00:00-03:00"

* component[sistolica].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[sistolica].valueQuantity
  * value = 12.4
  * unit = "mm[Hg]"
  * system = "http://unitsofmeasure.org"
  * code = #mm[Hg]
  
* component[diastolica].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[diastolica].valueQuantity
  * value = 8.2
  * unit = "mm[Hg]"
  * system = "http://unitsofmeasure.org"
  * code = #mm[Hg]


Instance:    observacion-signos-vitales-saturacionO2-ejemplo
InstanceOf:  CLCoreSaturacionOxigeno
Usage:       #example
Title:       "Ejemplo de índice de saturación de oxígeno de paciente"
Description: "Ejemplo de una observación de saturación de oxígeno de paciente" 

* status = #registered

* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code
  * coding = http://loinc.org#2708-6 "Oxygen saturation in Arterial blood"


* subject = Reference(PacienteCL)

* performer = Reference(EjemploPrestadorCL2)

* encounter = Reference(EjemploEncounterCL)

* effectiveDateTime = "2024-01-17T15:00:00-03:00"

* valueQuantity
  * value = 95
  * unit = "%"
  * system = "http://unitsofmeasure.org"
  * code = #%



Instance:    observacion-signos-vitales-temperatura-ejemplo
InstanceOf:  CLCoreTemperaturaCorporal
Usage:       #example
Title:       "Ejemplo de índice de temperatura corporal de paciente"
Description: "Ejemplo de una observación de temperatura corporal de paciente" 

* status = #registered

* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code
  * coding = http://loinc.org#8310-5 "Body temperature"


* subject = Reference(PacienteCL)

* performer = Reference(EjemploPrestadorCL2)

* encounter = Reference(EjemploEncounterCL)

* effectiveDateTime = "2024-01-17T15:00:00-03:00"

* valueQuantity
  * value = 37.5
  * unit = "C"
  * system = "http://unitsofmeasure.org"
  * code = #Cel