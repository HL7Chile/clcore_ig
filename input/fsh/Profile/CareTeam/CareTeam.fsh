Profile:        ClCareTeamPerfil
Parent:         CareTeam
Id:             cl-core-equipo-cuidados
Title:          "CL Equipo de Cuidados"
Description:    """
El Perfil **CL Equipo de Cuidados** hereda del recurso [CareTeam](https://hl7.org/fhir/R4/careteam.html) de FHIR; consulte dicho recurso para conocer su alcance y definiciones de uso. Este perfil establece las expectativas mínimas para el recurso CareTeam con el objetivo de identificar a los miembros del equipo de atención asociados a un paciente, promoviendo así la interoperabilidad y la adopción mediante una implementación común. Especifica qué elementos centrales, extensiones, vocabularios y conjuntos de valores DEBEN estar presentes en el recurso y cómo deben utilizarse dichos elementos. Establecer esta base mínima para el desarrollo de estándares en casos de uso específicos promueve la interoperabilidad y su adopción.
"""

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[0].valueInteger = 1
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[1].valueCode = #draft

* ^status = #draft
* ^language = #es
* ^experimental = false

* status MS
  * ^binding.description = "Indica si el equipo está activo actualmente, representa intenciones futuras o corresponde a un registro histórico."

* subject 1..1 MS
  * ^short = "Para quien es el equipo de cuidados"
  * ^type[0].targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
  * ^type[=].targetProfile[=].extension.valueBoolean = true
  * ^type[=].targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
  * ^type[=].targetProfile[=].extension.valueBoolean = false
* subject only Reference(PacienteCl or Group)

* encounter only Reference(EncounterCL)
  * ^short = "Encuentro creado a partir de"
* participant 1..* MS
  * ^short = "Miembros del equipo"
  * role 1..1 MS
    * ^short = "Tipo de involucramiento"
  * member 1..1 MS
  * member only Reference(PrestadorCL or OrganizacionCL or PacienteCl or CoreRolClinicoCl or ClCareTeamPerfil or RelatedPerson)
    * ^short = "Quien está involucrado"
    * ^type[0].targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
    * ^type[=].targetProfile[=].extension.valueBoolean = true
    * ^type[=].targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
    * ^type[=].targetProfile[=].extension.valueBoolean = false
    * ^type[=].targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
    * ^type[=].targetProfile[=].extension.valueBoolean = false
    * ^type[=].targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
    * ^type[=].targetProfile[=].extension.valueBoolean = true
    * ^type[=].targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
    * ^type[=].targetProfile[=].extension.valueBoolean = false
    * ^type[=].targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
    * ^type[=].targetProfile[=].extension.valueBoolean = false
  * onBehalfOf only Reference(OrganizacionCL)
    * ^short = "Organización del Profesional"
* reasonReference only Reference(DiagnosticoCl)
* reasonReference ^short = "El por que existe el equipo"
* managingOrganization only Reference(OrganizacionCL)
* managingOrganization ^short = "Organización responsable del equipo"