Profile:        ClCarePlanPerfil
Parent:         CarePlan
Id:             cl-core-plan-cuidados
Title:          "CL Plan de Cuidados"
Description:    """
El Perfil **Cl Plan de Cuidados** hereda del recurso [CarePlan](https://hl7.org/fhir/R4/careplan.html) de FHIR; consulte dicho recurso para conocer su alcance y definiciones de uso. Este perfil establece las expectativas mínimas para el recurso CarePlan con el fin de registrar, buscar y recuperar datos de evaluación y plan de tratamiento asociados a un paciente. Especifica qué elementos principales, extensiones, vocabularios y conjuntos de valores DEBEN estar presentes y restringe cómo se utilizan estos elementos. Proporcionar esta base para el desarrollo de estándares en casos de uso específicos promueve la interoperabilidad y la adopción.
"""

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[0].valueInteger = 1
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[1].valueCode = #draft

* ^status = #draft
* ^language = #es
* ^experimental = false

