Alias: $additional-binding = http://hl7.org/fhir/tools/StructureDefinition/additional-binding

Profile: EncounterCL
Parent: Encounter
Id: EncounterCL
Title: "Encuentro Clínico"
Description: "Definición de encuentro clínico genérico para Chile"

* identifier 0..* MS
  * ^short = "Identificador(es) por los que se conoce este encuentro"
  * ^definition = "Es el número de identificación del encuentro realizado"

* status MS
  * ^short = "planned | arrived | triaged | in-progress | onleave | finished | cancelled"
  * ^definition = "Determina el estado del encuentro remoto conforme a los códigos definidos por el estándar" 
* status from http://hl7.org/fhir/ValueSet/encounter-status (required)
  * ^binding.description = "Códigos requeridos por FHIR"

* class MS
* class ^short = "Clasificación del encuentro con el paciente"
* class ^definition = "Clasificación del encuentro con el paciente"
* class from v3.ActCode (extensible)

* type MS
  * ^short = "Tipo específico de Encuentro"
  * ^definition = "Específica el tipo de encuentro" 
* type from VSTiposEncuentroCL (example)

* serviceType MS
  * ^short = "Tipo de servicio que se realiza en el Encuentro"
  * ^definition = "Categorización del servicio que se va a prestar en el encuentro (por ejemplo, servicio de Ginecología)"
* serviceType from VSTiposServicioCL (example)

* reasonCode MS
* reasonCode ^short = "Razón codificada por la que tiene lugar el Encuentro"
* reasonCode ^definition = "Razón codificada por la que tiene lugar el Encuentro"
//  * extension ^short = "Razones por las cuales NO se realiza el encuentro remoto"
//  * extension ^definition = "Se usa esta extensión para agregar las razones por las cuales no se pudo llevar a cabo el encuentro remoto"
//  * extension contains RazonNOTatencionCL named reasonCode 0..1
/*El siguiente Código permite agregar bindings adicionales, pero genera errores de QA Utilizar con precausión*/
/*
  * ^binding.extension[0].url = $additional-binding 
  * ^binding.extension[=].extension[0].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #candidate
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSRazonNOT"
*/  

* subject MS
* subject only Reference (PacienteCl)
  * ^short = "Referencia al paciente del encuentro"
  * ^definition = "La referencia al paciente que está presente en el encuentro clínico sobre un paciente nacional."

* appointment 0..1 MS
  * ^short = "Reserva de un evento de atención médica entre paciente(s), profesional(es), persona(s) relacionada(s) y/o dispositivo(s)" 
  * ^definition = "Cita o agendamiento médico, la cual es resultado de un encuentro"

* participant MS
* participant ^short = "Participantes involucrados en el encuentro sin considerar al paciente"
  * type MS
  * type from http://hl7.org/fhir/ValueSet/encounter-participant-type
  * type ^short = "Rol del participante en el encuentro"
  * individual 1..1 MS
  * individual ^short = "Referencia al participante"
  * individual  only Reference (PrestadorCL or CoreRolClinicoCl)

// * participant ^slicing.discriminator.type = #value
// * participant ^slicing.discriminator.path = "type.coding.code"
// * participant ^slicing.rules = #open
// * participant ^slicing.description = "Este slice se genera para diferenciar participantes secundarios vs el participante principal"
// * participant ^short = "Participantes involucrados en el encuentro sin considerar al paciente" 
// * participant contains partPrincipal 0..1 MS and partSecundario 0..* MS

// * participant[partPrincipal] ^short = "Determinación del(os) participante(s) principal(es) del encuentro sin contar el paciente, en este caso el facultativo o médico principal"
//   * type MS
//   * type from http://hl7.org/fhir/ValueSet/encounter-participant-type (required)
//   * type ^short = "Rol del participante en el encuentro"
//   * type ^definition = "Este slice corresponde al médico encargado de este encuentro, por lo tanto, se fuerza la codificación a intérprete principal"
//   * type.coding.code = #PPRF

//* participant[partPrincipal].extension contains EspecialidadCL named especialidad 0..1

// * participant[partPrincipal].individual  only Reference (PrestadorCL)
// * participant[partPrincipal].individual ^short = "Médico principal involucrado en el encuentro"

// * participant[partSecundario] ^short = "Determinación del(os) participante(s) secundario(s) del encuentro"
// * participant[partSecundario].type MS
// * participant[partSecundario].type from http://hl7.org/fhir/ValueSet/encounter-participant-type (required)
// * participant[partSecundario].type ^short = "Rol del participante en el encuentro"
// * participant[partSecundario].type ^definition = "Este slice corresponde a los actores secundarios que participan en el encuentro, por lo tanto se fuerza la codificación a intérprete secundario"
// * participant[partSecundario].type.coding.code = #SPRF

//* participant[partSecundario].extension contains ContactopartCL named contact 1..*
//* participant[partSecundario].extension ^short = "Contacto de los participantes secundarios"
//* participant[partSecundario].extension ^definition = "Contacto de los participantes involucrados en el encuentro, que no sea paciente ni el médico principal"

* diagnosis 0..* MS
* diagnosis ^short = "Diagnóstico relevante para este encuentro"
* diagnosis ^definition = "Diagnóstico relevante para este encuentro"
* diagnosis.condition ^short = "El diagnóstico o procedimiento relevante para el encuentro"
* diagnosis.condition only Reference (DiagnosticoCl)
//* diagnosis.extension contains ObservacionesNotas named observaciones 0..1

* serviceProvider MS
* serviceProvider ^short = "La organización (instalación) responsable de este encuentro"
* serviceProvider only Reference (OrganizacionCL)

* period 0..1 MS
* period ^short = "La hora de inicio y finalización del encuentro"
* period ^definition = "La hora de inicio y finalización del encuentro"
  * start MS
  * start ^short = "Hora de inicio"
  * end MS
  * end ^short = "Hora de finalización"

* length MS
* length ^short = "Cantidad de tiempo que duró el encuentro (menos tiempo ausente)"
* length ^definition = "Cantidad de tiempo que duró el encuentro (menos tiempo ausente)"

//* extension contains NotasCL named notas 0..1


