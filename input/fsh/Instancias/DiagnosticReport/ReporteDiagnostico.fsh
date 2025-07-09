Instance:    cl-core-reporte-diagnostico-ejemplo
InstanceOf:  CLReporteDiagnostico
Usage:       #example
Title:       "Ejemplo de Reporte Diagnóstico  de Laboratorio"
Description: "Ejemplo de un Reporte Diagnóstico de Laboratorio que incluye información sobre el paciente, la muestra, los resultados y la conclusión del informe."

* identifier.value = "RD-12345"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#HM
* code = http://loinc.org#14868-4
* subject = Reference(PacienteCL)
* issued = "2025-07-01T10:00:00Z"
* performer = Reference(EjemploLaboratorio1)
* specimen = Reference(cl-core-specimen-ejemplo)
* conclusion = "El paciente no presenta anormalidades significativas en los resultados de laboratorio."
* conclusionCode = SCT#23875004 "sin hallazgos patológicos (hallazgo)"