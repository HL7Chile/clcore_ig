Profile:        ClDispositivo
Parent:         Device
Id:             cl-core-dispositivo
Title:          "Dispositivo Médico"
Description:    "Describe un dispositivo médico utilizado en la atención de un paciente, incluyendo información sobre su identificación, estado y características"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* identifier MS
  * ^short = "Identificador del Dispositivo Médico"
  * ^definition = "Identificador único del Dispositivo Médico"

* udiCarrier MS
  * ^short = "Portador de Identificación Única del Dispositivo (UDI)"
  * ^definition = "Información sobre el portador de la Identificación Única del Dispositivo (UDI)"

* status MS
  * ^definition = "Estado actual del Dispositivo Médico"

* manufacturer MS
  * ^short = "Fabricante del Dispositivo Médico"
  * ^definition = "Nombre del fabricante del Dispositivo Médico"

* expirationDate MS
  * ^short = "Fecha de Expiración del Dispositivo Médico"
  * ^definition = "Fecha de expiración del Dispositivo Médico"

* deviceName MS
  * ^short = "Nombre del Dispositivo Médico"
  * ^definition = "Nombre del Dispositivo Médico"
* type MS
  * ^short = "Tipo de Dispositivo Médico"
  * ^definition = "Tipo de Dispositivo Médico"

* patient only Reference(PacienteCl)
* patient MS
  * ^short = "Paciente asociado al Dispositivo Médico"
  * ^definition = "Paciente asociado al Dispositivo Médico"

* owner only Reference(OrganizacionCL)
* owner MS
  * ^short = "Organización propietaria del Dispositivo Médico"
  * ^definition = "Organización propietaria del Dispositivo Médico"

* parent only Reference(ClDispositivo)
* parent
  * ^short = "Dispositivo relacionado al Dispositivo Médico"
  * ^definition = "Dispositivo relacionado al Dispositivo Médico, si aplica"