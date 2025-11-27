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
  * coding = http://loinc.org#8302-2 "altura corporal:longitud:punto en el tiempo:^paciente:cuantitativo:"


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
  * coding = http://loinc.org#9843-4 "Circunferencia occipital-frontal:Cabeza :Punto temporal:Len:Cuantitativo:"


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
  * coding = http://loinc.org#8867-4 "latido cardíaco:índice numérico:punto en el tiempo:XXX:cuantitativo:"


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
  * coding = http://loinc.org#9279-1 "respiraciones:índice numérico:punto en el tiempo:aparato respiratorio:cuantitativo:"


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
  * coding = http://loinc.org#39156-5 "Índice de masa corporal: Paciente:Punto temporal:Proporción:Cuantitativo:"


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
  * coding = http://loinc.org#29463-7 "peso corporal:masa:punto en el tiempo:^paciente:cuantitativo:"


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
  * coding = http://loinc.org#85354-9 "Panel de presión arterial con todos los niños opcional:Sistema arterial :Punto temporal:-:Cuantitativo:"


* subject = Reference(PacienteCL)

* performer = Reference(EjemploPrestadorCL2)

* encounter = Reference(EjemploEncounterCL)

* effectiveDateTime = "2024-01-17T15:00:00-03:00"

* component[sistolica].code = http://loinc.org#8480-6 "sistólico intravascular:presión:punto en el tiempo:sistema arterial:cuantitativo:"
* component[sistolica].valueQuantity
  * value = 12.4
  * unit = "mm[Hg]"
  * system = "http://unitsofmeasure.org"
  * code = #mm[Hg]
  
* component[diastolica].code = http://loinc.org#8462-4 "diastólico intravascular:presión:punto en el tiempo:sistema arterial:cuantitativo:"
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
  * coding = http://loinc.org#2708-6 "saturación de oxígeno:fracción de sustancia:punto en el tiempo:sangre arterial:cuantitativo:"


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
  * coding = http://loinc.org#8310-5 "temperatura corporal:temperatura:punto en el tiempo:^paciente:cuantitativo:"


* subject = Reference(PacienteCL)

* performer = Reference(EjemploPrestadorCL2)

* encounter = Reference(EjemploEncounterCL)

* effectiveDateTime = "2024-01-17T15:00:00-03:00"

* valueQuantity
  * value = 37.5
  * unit = "C"
  * system = "http://unitsofmeasure.org"
  * code = #Cel