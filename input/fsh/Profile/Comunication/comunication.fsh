Profile:        ClComunicacion
Parent:         Communication
Id:             cl-core-comunicacion
Title:          "CL Perfil Comunicación"
Description:    "Describe una comunicación realizada entre un paciente y un profesional o de profesionales, incluyendo información sobre el contenido de la comunicación, el remitente y el destinatario"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* identifier MS
  * ^short = "Identificador de la Comunicación"
  * ^definition = "Identificador único de la Comunicación"

* basedOn MS
  * ^short = "Referencia a la solicitud de comunicación"
  * ^definition = "Referencia a la solicitud de comunicación que originó esta comunicación"

* partOf MS
  * ^short = "Referencia a la comunicación de la que forma parte"
  * ^definition = "Referencia a la comunicación de la que forma parte esta comunicación"

* inResponseTo MS
  * ^short = "Referencia a la comunicación a la que responde"
  * ^definition = "Referencia a la comunicación a la que responde esta comunicación"

* inResponseTo only Reference(ClComunicacion)

* status MS
  * ^definition = "Estado de la Comunicación"

* category MS
  * ^short = "Categoría de la Comunicación"
  * ^definition = "Categoría de la Comunicación"

* priority MS
  * ^definition = "Prioridad de la Comunicación"

* subject only Reference(PacienteCl or Group)
* sent MS
  * ^short = "Fecha y hora de envío de la Comunicación"
  * ^definition = "Fecha y hora de envío de la Comunicación"
* recipient MS
  * ^short = "Destinatario de la Comunicación"
  * ^definition = "Destinatario de la Comunicación"
* recipient only Reference(PacienteCl or PrestadorCL or CoreRolClinicoCl or RelatedPerson or ClDispositivo or OrganizacionCL or RelatedPerson or ClServicioCuidadosSalud or ClCareTeamPerfil or Group)
* sender only Reference(PacienteCl or PrestadorCL or CoreRolClinicoCl or RelatedPerson or ClDispositivo or OrganizacionCL or RelatedPerson or ClServicioCuidadosSalud)
* sender MS
  * ^short = "Remitente de la Comunicación"
  * ^definition = "Remitente de la Comunicación"

* reasonReference MS
  * ^short = "Referencia a la razón de la Comunicación"
  * ^definition = "Referencia a la razón de la Comunicación"
* reasonReference only Reference(DiagnosticoCl or ObservacionCL or CLDiagnosticReport or DocumentReference)
* reasonCode MS
  * ^short = "Código de la razón de la Comunicación"
  * ^definition = "Código de la razón de la Comunicación"
* payload MS
  * ^short = "Contenido de la Comunicación"
  * ^definition = "Contenido de la Comunicación"