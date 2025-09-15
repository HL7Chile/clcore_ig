Alias: stat = http://hl7.org/fhir/ValueSet/appointmentstatus
Alias: $ApellidoServicio = https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/ApellidoServicio
Alias: $SolicitudServicio = https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/SolicitudServicio
Alias: $PacienteAgenda = https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/PacienteAgenda
Alias: $Prestador = https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Prestador

Profile:        ClCitaMedica
Parent:         Appointment
Id:             ClCita
Title:          "CL Agendamiento de Cita Médica"
Description:    """
El Perfil **Cl Cita Médica** hereda del recurso [Appointment](https://hl7.org/fhir/R4/appointment.html) de FHIR; consulte dicho recurso para conocer su alcance y definiciones de uso. Este perfil establece las expectativas mínimas para el recurso CarePlan con el fin de registrar, buscar y recuperar datos de evaluación y plan de tratamiento asociados a un paciente. Especifica qué elementos principales, extensiones, vocabularios y conjuntos de valores DEBEN estar presentes y restringe cómo se utilizan estos elementos. Proporcionar esta base para el desarrollo de estándares en casos de uso específicos promueve la interoperabilidad y la adopción.
"""

* ^version = "0.4.0"
* ^status = #draft
* ^publisher = "Unidad de Interoperabilidad - MINSAL"
* ^contact.name = "Unidad de Interoperabilidad - MINSAL"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://interoperabilidad.minsal.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* extension ^short = "Comentarios respecto al servicio que se realizara durante la cita."
* extension contains $ApellidoServicio named apellidoservicio 1..1 MS
* status from AppointmentStatus (required)
* status ^definition = "En la medida que no exista una respuesta de aprobación esta queda como #proposed"
* specialty from PracticeSettingCodeValueSet (extensible)
* specialty ^short = "La especialidad de un profesional que se requeriría para realizar el servicio solicitado en esta cita."
* start 1..
* start ^short = "Cuando se realizará la cita."
* basedOn 1..1
* basedOn only Reference($SolicitudServicio)
* basedOn ^short = "Referencia a la solicitud del servicio."
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "required"
* participant ^slicing.ordered = false
* participant ^slicing.rules = #open
* participant ^short = "Participantes de la Cita médica."
* participant ^definition = "Participantes de la cita acotados a paciente y prestador."
* participant contains
    paciente 1..1 and
    prestador 1..1
* participant[paciente] ^short = "Paciente agendado."
* participant[paciente].actor 1.. MS
* participant[paciente].actor only Reference($PacienteAgenda)
* participant[paciente].actor ^short = "Referencia al paciente agendado."
* participant[paciente].required 1.. MS
* participant[paciente].required = #required
* participant[paciente].required from ParticipantRequired (required)
* participant[prestador] ^short = "Prestador individual agendado."
* participant[prestador].actor 1.. MS
* participant[prestador].actor only Reference($Prestador)
* participant[prestador].actor ^short = "Referencia al prestador agendado."
* participant[prestador].required 1.. MS
* participant[prestador].required = #optional