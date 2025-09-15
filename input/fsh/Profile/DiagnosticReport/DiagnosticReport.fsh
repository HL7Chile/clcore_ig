Profile:        CLReporteDiagnostico
Parent:         DiagnosticReport
Id:             cl-core-reporte-diagnostico
Title:          "CL Perfil Reporte Diagnóstico para el Intercambio de Informes y Notas"
Description:    """
El **CL Perfil Reporte Diagnóstico para el Intercambio de Informes y Notas** hereda del recurso [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) de FHIR; consulte dicho recurso para conocer su alcance y definiciones de uso. Este perfil establece las expectativas mínimas para la búsqueda y recuperación de Informes Diagnósticos y Notas utilizando el recurso DiagnosticReport. Especifica qué elementos centrales, extensiones, vocabularios y conjuntos de valores DEBEN estar presentes en el recurso y restringe cómo deben utilizarse dichos elementos. Establecer esta base mínima para el desarrollo de estándares en casos de uso específicos promueve la interoperabilidad y la adopción.
"""

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* identifier MS
  * ^short = "Identificador del Informe"

* basedOn 0..1 MS
  * ^short = "Solicitud de Biopsia"

* status 1..1 MS
  * ^short = "Estado del Informe"

* category 1.. MS
  * ^short = "Categoría del Informe"
  
* code MS
  * ^short = "Código del Informe"
* code from VsTipoReporteCL (preferred)

* subject 1..1 MS
  * ^short = "Paciente del Informe"
* subject only Reference(PacienteCl)

* issued MS
  * ^short = "Fecha de Emisión del Informe"

* performer MS
  * ^short = "Profesional o Entidad que emite el Informe"
* performer only Reference(PrestadorCL or CoreRolClinicoCl or OrganizacionCL)

* specimen MS
  * ^short = "Muestra utilizada para el informe"
* specimen only Reference(CLMuestra)

* result MS
  * ^short = "Resultados del Informe como Observaciones"
* result only Reference(ObservacionCL)


* conclusion MS
  * ^short = "Conclusión narrativa del informe"

* conclusionCode MS
  * ^short = "Código de conclusión del informe"
* conclusionCode from VSDiagnosticosSCT (example)

* presentedForm MS
  * ^short = "Representación del Informe de Anatomía Patológica"
  * contentType MS
    * ^short = "Tipo de Contenido"
  * data MS
    * ^short = "Informe de Anatomía Patológica en base64"