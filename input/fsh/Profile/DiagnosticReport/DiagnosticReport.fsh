Profile: CLDiagnosticReport
Parent: DiagnosticReport
Id: cl-core-diagnostic-report
Title: "CL Perfil Informe Diagnóstico"
Description: "Describe un informe diagnóstico realizado en un paciente, incluyendo información sobre los resultados y la interpretación"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* identifier MS
  * ^short = "Identificador del Informe Diagnóstico"
  * ^definition = "Identificador único del Informe Diagnóstico"
* status MS
  * ^definition = "Estado del Informe Diagnóstico"
* category MS
  * ^short = "Categoría del Informe Diagnóstico"
  * ^definition = "Categoría del Informe Diagnóstico"

* effective[x] MS
  * ^short = "Fecha y hora de emisión del Informe Diagnóstico"
  * ^definition = "Fecha y hora de emisión del Informe Diagnóstico"
* effectiveDateTime 1..1 MS
  * ^short = "Fecha y hora de emisión del Informe Diagnóstico"
  * ^definition = "Fecha y hora de emisión del Informe Diagnóstico"

* performer only Reference(PrestadorCL or CoreRolClinicoCl or OrganizacionCL or ClCareTeamPerfil)
* performer MS
  * ^short = "Responsable que emitió el Informe Diagnóstico"
  * ^definition = "Responsable que emitió el Informe Diagnóstico"

* specimen only Reference(CLMuestra)
* specimen MS
  * ^short = "Muestra asociada al Informe Diagnóstico"
  * ^definition = "Muestra asociada al Informe Diagnóstico"
* imagingStudy only Reference(CLImagingStudy)
* imagingStudy MS
  * ^short = "Estudio de Imagenología asociado al Informe Diagnóstico"
  * ^definition = "Estudio de Imagenología asociado al Informe Diagnóstico"
* conclusion MS
  * ^short = "Conclusión del Informe Diagnóstico"
  * ^definition = "Conclusión del Informe Diagnóstico"

* presentedForm MS
  * ^short = "Documento del Informe Diagnóstico"
  * ^definition = "Documento del Informe Diagnóstico"
