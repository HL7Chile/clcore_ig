Profile:        ClCarePlanPerfil
Parent:         CarePlan
Id:             cl-core-plan-cuidados
Title:          "CL Plan de Atención"
Description:    """
El Perfil **Cl Plan de Atención** hereda del recurso [CarePlan](https://hl7.org/fhir/R4/careplan.html) de FHIR; consulte dicho recurso para conocer su alcance y definiciones de uso. Este perfil establece las expectativas mínimas para el recurso CarePlan con el fin de registrar, buscar y recuperar datos de evaluación y plan de tratamiento asociados a un paciente. Especifica qué elementos principales, extensiones, vocabularios y conjuntos de valores DEBEN estar presentes y restringe cómo se utilizan estos elementos. Proporcionar esta base para el desarrollo de estándares en casos de uso específicos promueve la interoperabilidad y la adopción.
"""

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[0].valueInteger = 1
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[1].valueCode = #draft

* ^status = #draft
* ^language = #es
* ^experimental = false

* status 1..1 MS
  * ^binding.description = "Indica si el plan está siendo ejecutado actualmente, representa intenciones futuras o corresponde a un registro histórico."

* intent 1..1 MS
  * ^binding.description = "Códigos que indican el grado de autoridad o intencionalidad asociado a un plan de atención."

* category MS
  * ^short = "Tipo de plan"

* subject 1..1 MS
  * ^short = "Para quién está destinado el plan"
  * ^type[0].targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
  * ^type[=].targetProfile[=].extension.valueBoolean = true
  * ^type[=].targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
  * ^type[=].targetProfile[=].extension.valueBoolean = false
* subject only Reference(PacienteCl or Group)

* author ^short = "Autor del plan de atención"
* author only Reference(PrestadorCL or OrganizacionCL or PacienteCl or CoreRolClinicoCl or ClCareTeamPerfil or RelatedPerson or Device)

* contributor ^short = "Quienes contribuyeron al contenido del plan de atención"
* contributor only Reference(PrestadorCL or OrganizacionCL or PacienteCl or CoreRolClinicoCl or ClCareTeamPerfil or RelatedPerson or Device)

* careTeam ^short = "¿Quién está involucrado en el plan?"
* careTeam only Reference(ClCareTeamPerfil)

* addresses ^short = "Problema de salud que está dirigido el plan"
* addresses only Reference(DiagnosticoCl)

* activity ^short = "Actividades que deben ocurrir como parte del plan"
* note ^short = "Comentarios acerca del plan"