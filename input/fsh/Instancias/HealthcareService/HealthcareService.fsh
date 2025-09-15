Instance:       cl-core-laboratorio
InstanceOf:     ClServicioCuidadosSalud
Usage:          #example
Title:          "Servicio de Laboratorio"
Description:    "Servicio de laboratorio clínico que ofrece análisis y pruebas diagnósticas."

* active = true
* providedBy = Reference(EjemploLaboratorio1)
* category = http://terminology.hl7.org/CodeSystem/service-category#25 "Respite/Carer Support"
* type = http://terminology.hl7.org/CodeSystem/service-type#581 "Haematology"
* specialty = http://snomed.info/sct#394916005 "Hematopathology"
* name = "Servicio de Hematopatología del Laboratorio Clínico Ejemplo"
* availableTime
  * daysOfWeek[0] = #mon
  * daysOfWeek[1] = #tue
  * daysOfWeek[2] = #wed
  * daysOfWeek[3] = #thu
  * daysOfWeek[4] = #fri
  * availableStartTime = "08:00:00"
  * availableEndTime = "17:00:00" 