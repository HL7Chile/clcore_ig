Instance: cl-core-server
InstanceOf: CapabilityStatement
Title: "CapabilityStatement Servidor Cl Core"
Description: "CapabilityStatement para definir las caracteristicas mínimas del servidor para ver las interacciones posibles"
Usage: #definition
* version = "2.0.0"
* name = "ClCoreServidorCapabilityStatement"
* status = #active
* experimental = false
* date = "2024-08-07T09:44:00-03:00"
/*
* publisher = "HL7 International / Cross-Group Projects"
* contact.name = "HL7 International / Cross-Group Projects"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "cgp@lists.HL7.org"
*/

* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[+] = #xml
* format[+] = #application/fhir+json
* format[+] = #application/fhir+xml
* format[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHOULD
* format[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHOULD
* format[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHOULD
* format[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHOULD
* patchFormat[0] = #application/json-patch+json
* patchFormat[=].extension
  * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * valueCode = #SHOULD
* patchFormat[+] = #application/xml-patch+xml
* patchFormat[=].extension
  * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * valueCode = #SHOULD
* patchFormat[+] = #application/fhir+xml
* patchFormat[=].extension
  * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * valueCode = #SHOULD
* patchFormat[+] = #application/fhir+json
* patchFormat[=].extension
  * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * valueCode = #SHOULD
/*
* implementationGuide = "http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch"
* implementationGuide.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* implementationGuide.extension.valueCode = #SHOULD
*/
* rest
  * mode = #server

* rest.documentation = """
El Servidor Cl Core **DEBERÁ**:

1. Soportar el perfil de recurso del Paciente cl core **Y** al menos un perfil adicional de la lista de Perfiles cl core **Y** todos los Perfiles Core y recursos con \"Must Support\" a los que hace referencia.
   - La **tabla a continuación** resume las referencias \"Must Support\" a otros Perfiles CLCore y recursos FHIR para cada Perfil ClCore.
2. Implementar el comportamiento RESTful según la especificación FHIR.
3. Seguir los requisitos documentados en las páginas de [generalidades](Aspectos-Generales.html) y [Must Support](Notas-MS.html).
4. Retornar las siguientes clases de respuesta:
   - (Estado 400): parámetro inválido
   - (Estado 401/4xx): solicitud no autorizada
   - (Estado 403): alcances insuficientes
   - (Estado 404): recurso desconocido
5. Soportar formatos de origen JSON para todas las interacciones de la cl core

El Servidor Cl Core **DEBERÍA**:

1. Seguir la guía documentada en la página de [generalidades](Aspectos-Generales.html)
2. Soportar formatos de origen XML para todas las interacciones de la cl core.
3. Identificar los perfiles cl core soportados como parte del atributo FHIR `meta.profile` para cada instancia.

"""
/*
* rest.security.description = "1. See the [General Security Considerations](security.html) section for requirements and recommendations.\n1. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` \"Unauthorized\", `HTTP 403` \"Forbidden\", or `HTTP 404` \"Not Found\""
*/
* rest.resource[0] //AllergyIntolerance
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  /*
  * extension[+]
    * extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension[=].valueCode = #SHOULD
    * extension[+].url = "required"
    * extension[=].valueString = "patient"
    * extension[+].url = "required"
    * extension[=].valueString = "clinical-status"
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
  */
  * type = #AllergyIntolerance
  * supportedProfile = Canonical(AlergiaIntCL)
  * supportedProfile.extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * interaction[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY 
    * code = #create
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #search-type
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #vread
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #update
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #patch
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #delete
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #history-instance
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #history-type
  * referencePolicy[0] = #literal
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * referencePolicy[+] = #logical
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * searchInclude[0] = "*"
  * searchInclude[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "AllergyIntolerance:asserter"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "AllergyIntolerance:patient"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "AllergyIntolerance:recorder"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[0] = "AuditEvent:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:entry"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL  
  * searchRevInclude[+] = "Condition:evidence-detail"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:focus"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:target"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchParam[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "clinical-status"
    * definition = "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-clinical-status"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "patient"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "varification-status"
    * definition = "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-verification-status"
    * type = #token
    * documentation =  "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "severity"
    * definition = "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-severity"
    * type = #token
    * documentation =  "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "date"
    * definition =  "http://hl7.org/fhir/SearchParameter/clinical-date"
    * type = #date
    * documentation = "Un cliente **DEBERÁ** proporcionar un valor preciso hasta el *segundo + desplazamiento de tiempo*.\n\nUn servidor **DEBERÁ** soportar un valor preciso hasta el *segundo + desplazamiento de tiempo*"
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "manifestation"
    * definition = "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-manifestation"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "code"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
    * type = #token
    * documentation =  "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "criticality"
    * definition = "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-criticality"
    * type = #token
    * documentation =  "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "type"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-type"
    * type = #token
    * documentation =  "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "onset"
    * definition =  "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-onset"
    * type = #date
    * documentation = "Un cliente **DEBERÁ** proporcionar un valor preciso hasta el *segundo + desplazamiento de tiempo*.\n\nUn servidor **DEBERÁ** soportar un valor preciso hasta el *segundo + desplazamiento de tiempo*"
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
    * documentation =  "Id logico de este artefacto"
* rest.resource[+] //AuditEvent
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #AuditEvent
  * supportedProfile = Canonical(AuditEventCl)
  * supportedProfile.extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * interaction[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY 
    * code = #create
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #search-type
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #vread
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #update
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #patch
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #delete
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #history-instance
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #history-type
  * referencePolicy[0] = #literal
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * referencePolicy[+] = #logical
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * searchInclude[0] = "*"
  * searchInclude[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "AuditEvent.agent"
  * searchInclude[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "AuditEvent.source"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "AuditEvent.patient"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "AuditEvent.entity"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[0] = "AuditEvent.entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:entry"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:evidence-detail"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:focus"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:target"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchParam[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "date"
    * definition =  "http://hl7.org/fhir/SearchParameter/AuditEvent-date"
    * type = #date
    * documentation = "Un cliente **DEBERÁ** proporcionar un valor preciso hasta el *segundo + desplazamiento de tiempo*.\n\nUn servidor **DEBERÁ** soportar un valor preciso hasta el *segundo + desplazamiento de tiempo*"
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "type"
    * definition =  "http://hl7.org/fhir/SearchParameter/AuditEvent-type"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "subtype"
    * definition = "http://hl7.org/fhir/SearchParameter/AuditEvent-subtype"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "patient"
    * definition = "http://hl7.org/fhir/SearchParameter/AuditEvent-patient"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "action"
    * definition = "http://hl7.org/fhir/SearchParameter/AuditEvent-action"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "outcome"
    * definition = "http://hl7.org/fhir/SearchParameter/AuditEvent-outcome"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "agent"
    * definition = "http://hl7.org/fhir/SearchParameter/AuditEvent-agent"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address"
    * definition = "http://hl7.org/fhir/SearchParameter/AuditEvent-address"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "source"
    * definition = "http://hl7.org/fhir/SearchParameter/AuditEvent-source"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "entity"
    * definition = "http://hl7.org/fhir/SearchParameter/AuditEvent-entity"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
    * documentation =  "Id logico de este artefacto"
* rest.resource[+] //Composition
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #Composition
  * supportedProfile = Canonical(DocumentoCl)
  * supportedProfile.extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * interaction[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY 
    * code = #create
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #search-type
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #vread
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #update
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #patch
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #delete
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #history-instance
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #history-type
  * referencePolicy[0] = #literal
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * referencePolicy[+] = #logical
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * searchInclude[0] = "*"
  * searchInclude[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Composition:attester"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Composition:author"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Composition:encounter"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Composition:entry"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Composition:related-ref"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Composition:subject"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[0] = "AuditEvent:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:entry"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:related-ref"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:evidence-detail"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:focus"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:target"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchParam[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "date"
    * definition =  "http://hl7.org/fhir/SearchParameter/clinical-date"
    * type = #date
    * documentation = "Un cliente **DEBERÁ** proporcionar un valor preciso hasta el *segundo + desplazamiento de tiempo*.\n\nUn servidor **DEBERÁ** soportar un valor preciso hasta el *segundo + desplazamiento de tiempo*"
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "subject"
    * definition = "http://hl7.org/fhir/SearchParameter/Composition-subject"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "type"
    * definition =  "http://hl7.org/fhir/SearchParameter/clinical-type"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "section"
    * definition =  "http://hl7.org/fhir/SearchParameter/Composition-section"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "title"
    * definition = "http://hl7.org/fhir/SearchParameter/Composition-title"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "attester"
    * definition = "http://hl7.org/fhir/SearchParameter/Composition-attester"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "author"
    * definition = "http://hl7.org/fhir/SearchParameter/Composition-author"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "encounter"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-encounter"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "entry"
    * definition = "http://hl7.org/fhir/SearchParameter/Composition-entry"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "identifier"
    * definition =  "http://hl7.org/fhir/SearchParameter/clinical-identifier"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "status"
    * definition = "http://hl7.org/fhir/SearchParameter/Composition-status"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
    * documentation =  "Id logico de este artefacto"
* rest.resource[+] //Condition
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #Condition
  * supportedProfile = Canonical(DiagnosticoCl)
  * supportedProfile.extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * interaction[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY 
    * code = #create
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #search-type
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #vread
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #update
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #patch
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #delete
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #history-instance
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #history-type
  * referencePolicy[0] = #literal
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * referencePolicy[+] = #logical
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * searchInclude[0] = "*"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Condition:asserter"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Condition:encounter"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Condition:evidence-detail"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Condition:patient"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Condition:subject"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[0] = "AuditEvent:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:entry"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:evidence-detail"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Encounter:diagnosis"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Encounter:reason-reference"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Immunization:reason-reference"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:focus"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:target"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchParam[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "onset-date"
    * definition =  "http://hl7.org/fhir/SearchParameter/Condition-onset-date"
    * type = #date
    * documentation = "Un cliente **DEBERÁ** proporcionar un valor preciso hasta el *segundo + desplazamiento de tiempo*.\n\nUn servidor **DEBERÁ** soportar un valor preciso hasta el *segundo + desplazamiento de tiempo*"
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "subject"
    * definition = "http://hl7.org/fhir/SearchParameter/Condition-subject"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "patient"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "clinical-status"
    * definition =  "http://hl7.org/fhir/SearchParameter/Condition-clinical-status"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "verification-status"
    * definition =  "http://hl7.org/fhir/SearchParameter/Condition-verification-status"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "code"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
    * documentation =  "Id logico de este artefacto"
* rest.resource[+] //Encounter
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #Encounter
  * supportedProfile = Canonical(EncounterCL)
  * supportedProfile.extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * interaction[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY 
    * code = #create
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #search-type
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #vread
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #update
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #patch
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #delete
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #history-instance
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #history-type
  * referencePolicy[0] = #literal
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * referencePolicy[+] = #logical
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * searchInclude[0] = "*"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Encounter:appointment"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Encounter:diagnosis"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Encounter:participant"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Encounter:patient"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Encounter:practitioner"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] =  "Encounter:service-provider"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] =  "Encounter:subject"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[0] = "AuditEvent:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:encounter"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:entry"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:encounter"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:evidence-detail"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Encounter:part-of"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:encounter"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:focus"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:target"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchParam[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "date"
    * definition =  "http://hl7.org/fhir/SearchParameter/clinical-date"
    * type = #date
    * documentation = "Un cliente **DEBERÁ** proporcionar un valor preciso hasta el *segundo + desplazamiento de tiempo*.\n\nUn servidor **DEBERÁ** soportar un valor preciso hasta el *segundo + desplazamiento de tiempo*"
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "appointment"
    * definition = "http://hl7.org/fhir/SearchParameter/Encounter-appointment"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "subject"
    * definition = "http://hl7.org/fhir/SearchParameter/Encounter-subject"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "patient"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "participant"
    * definition = "http://hl7.org/fhir/SearchParameter/Encounter-participant"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "practitioner"
    * definition = "http://hl7.org/fhir/SearchParameter/Encounter-practitioner"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "diagnosis"
    * definition = "http://hl7.org/fhir/SearchParameter/Encounter-diagnosis"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "service-provider"
    * definition = "http://hl7.org/fhir/SearchParameter/Encounter-service-provider"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "status"
    * definition =  "http://hl7.org/fhir/SearchParameter/Encounter-status"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "class"
    * definition =  "http://hl7.org/fhir/SearchParameter/Encounter-class"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "reason-code"
    * definition = "http://hl7.org/fhir/SearchParameter/Encounter-reason-code"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "type"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-type"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "identifier"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "length"
    * definition = "http://hl7.org/fhir/SearchParameter/Encounter-length"
    * type = #quantity
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor entero o decimal.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
    * documentation =  "Id logico de este artefacto"
* rest.resource[+] //Immunization
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #Immunization
  * supportedProfile = Canonical(ImmunizationCL)
  * supportedProfile.extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * interaction[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY 
    * code = #create
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #search-type
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #vread
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #update
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #patch
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #delete
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #history-instance
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #history-type
  * referencePolicy[0] = #literal
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * referencePolicy[+] = #logical
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * searchInclude[0] = "*"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Immunization:location"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Immunization:manufacturer"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Immunization:patient"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Immunization:performer"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Immunization:reaction"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] =  "Immunization:reason-reference"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[0] = "AuditEvent:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:entry"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:evidence-detail"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:focus"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:part-of"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:target"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchParam[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "date"
    * definition =  "http://hl7.org/fhir/SearchParameter/clinical-date"
    * type = #date
    * documentation = "Un cliente **DEBERÁ** proporcionar un valor preciso hasta el *segundo + desplazamiento de tiempo*.\n\nUn servidor **DEBERÁ** soportar un valor preciso hasta el *segundo + desplazamiento de tiempo*"
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "lot-number"
    * definition = "http://hl7.org/fhir/SearchParameter/Immunization-lot-number"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "status-reason"
    * definition =  "http://hl7.org/fhir/SearchParameter/Immunization-status-reason"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "patient"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos." 
  * searchParam[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "reaction-date"
    * definition = "http://hl7.org/fhir/SearchParameter/Immunization-reaction-date"
    * type = #date
    * documentation = "Un cliente **DEBERÁ** proporcionar un valor preciso hasta el *segundo + desplazamiento de tiempo*.\n\nUn servidor **DEBERÁ** soportar un valor preciso hasta el *segundo + desplazamiento de tiempo*"
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "identifier"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "vaccine-code"
    * definition = "http://hl7.org/fhir/SearchParameter/Immunization-vaccine-code"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "location"
    * definition = "http://hl7.org/fhir/SearchParameter/Immunization-location"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "status"
    * definition = "http://hl7.org/fhir/SearchParameter/Immunization-status"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
    * documentation =  "Id logico de este artefacto"
* rest.resource[+] //Location
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #Location
  * supportedProfile = Canonical(CoreLocalizacionCl)
  * supportedProfile.extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * interaction[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY 
    * code = #create
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #search-type
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #vread
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #update
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #patch
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #delete
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #history-instance
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #history-type
  * referencePolicy[0] = #literal
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * referencePolicy[+] = #logical
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * searchInclude[0] = "*"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Location:endpoint"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Location:organization"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Location:partof"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[0] = "AuditEvent:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:entry"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:evidence-detail"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Encounter:location"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Immunization:location"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Location:partof"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:focus"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "PractitionerRole:location"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:location"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:target"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchParam[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address-state"
    * definition = "http://hl7.org/fhir/SearchParameter/Location-address-state"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "type"
    * definition =  "http://hl7.org/fhir/SearchParameter/Location-type"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address-country"
    * definition = "http://hl7.org/fhir/SearchParameter/Location-address-country"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "near"
    * definition = "http://hl7.org/fhir/SearchParameter/Location-near"
    * type = #special
    * documentation = "Buscar ubicaciones donde la posición de la ubicación esté cerca o dentro de una distancia especificada de las coordenadas proporcionadas expresadas como [latitud]|[longitud]|[distancia]|[unidades] (usando el datum WGS84, ver notas).\nSi se omiten las unidades, se debe asumir kilómetros. Si se omite la distancia, el servidor **PUEDE** usar su propia discreción para determinar qué distancias deben considerarse cercanas (y las unidades son irrelevantes).\n\nLos servidores **PUEDEN** buscar usando varias técnicas que podrían tener diferentes precisiones, dependiendo de la eficiencia de la implementación.\n\nRequiere que también se proporcione el parámetro de distancia-cercana."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address-city"
    * definition = "http://hl7.org/fhir/SearchParameter/Location-address-city"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "identifier"
    * definition =  "http://hl7.org/fhir/SearchParameter/Location-identifier"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address"
    * definition = "http://hl7.org/fhir/SearchParameter/Location-address"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "organization"
    * definition = "http://hl7.org/fhir/SearchParameter/Location-organization"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address-use"
    * definition = "http://hl7.org/fhir/SearchParameter/Location-address-use"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "name"
    * definition = "http://hl7.org/fhir/SearchParameter/Location-name"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "status"
    * definition = "http://hl7.org/fhir/SearchParameter/Location-status"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
    * documentation =  "Id logico de este artefacto"
* rest.resource[+] //Medication
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #Medication
  * supportedProfile = Canonical(CoreMedicamentoCl)
  * supportedProfile.extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * interaction[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY 
    * code = #create
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #search-type
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #vread
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #update
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #patch
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #delete
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #history-instance
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #history-type
  * referencePolicy[0] = #literal
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * referencePolicy[+] = #logical
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * searchInclude[0] = "*"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Medication:ingredient"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Medication:manufacturer"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[0] = "AuditEvent:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:entry"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:evidence-detail"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Medication:ingredient"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:focus"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:target"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchParam[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "identifier"
    * definition = "http://hl7.org/fhir/SearchParameter/Medication-identifier"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "code"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "ingredient"
    * definition = "http://hl7.org/fhir/SearchParameter/Medication-ingredient"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "ingredient-code"
    * definition = "http://hl7.org/fhir/SearchParameter/Medication-ingredient-code"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "form"
    * definition = "http://hl7.org/fhir/SearchParameter/Medication-form"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
    * documentation =  "Id logico de este artefacto"
* rest.resource[+] //Observation
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #Observation
  * supportedProfile = Canonical(CoreObservacionCL)
  * supportedProfile.extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * interaction[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY 
    * code = #create
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #search-type
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #vread
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #update
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #patch
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #delete
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #history-instance
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #history-type
  * referencePolicy[0] = #literal
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * referencePolicy[+] = #logical
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * searchInclude[0] = "*"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Observation:based-on"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Observation:derived-from"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Observation:device"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Observation:encounter"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Observation:focus"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Observation:has-member"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Observation:part-of"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Observation:patient"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Observation:performer"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Observation:specimen"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Observation:subject"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[0] = "AuditEvent:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:entry"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:evidence-detail"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Encounter:reason-reference"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Immunization:reaction"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Immunization:reason-reference"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:derived-from"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:focus"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:has-member"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:target"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchParam[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "identifier"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "code"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
    * documentation =  "Id logico de este artefacto"
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "date"
    * definition =  "http://hl7.org/fhir/SearchParameter/clinical-date"
    * type = #date
    * documentation = "Un cliente **DEBERÁ** proporcionar un valor preciso hasta el *segundo + desplazamiento de tiempo*.\n\nUn servidor **DEBERÁ** soportar un valor preciso hasta el *segundo + desplazamiento de tiempo*"
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "patient"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "performer"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-performer"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "encounter"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-encounter"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "specimen"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-specimen"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "category"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-category"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "subject"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-subject"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "has-member"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-subject"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "code-value-concept"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-code-value-concept"
    * type = #composite
    * documentation = "El cliente **DEBERÁ** proporcionar un Código y un parametro de valor codificado.\n\nEl servidor **DEBERÁ** soportar la recepción y procesamiento un Código y un parametro de valor codificado"
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "component-code-value-concept"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-component-code-value-concept"
    * type = #composite
    * documentation = "El cliente **DEBERÁ** proporcionar un Código y un parametro de valor codificado.\n\nEl servidor **DEBERÁ** soportar la recepción y procesamiento un Código y un parametro de valor codificado, que se encuentra en el componente."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "combo-code-value-concept"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-code-value-concept"
    * type = #composite
    * documentation = "El cliente **DEBERÁ** proporcionar un Código y un parametro de valor codificado.\n\nEl servidor **DEBERÁ** soportar la recepción y procesamiento un Código y un parametro de valor codificado, incluyendo si se encuentra en el componente."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "code-value-quantity"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-code-value-quantity"
    * type = #composite
    * documentation = "El cliente **DEBERÁ** proporcionar un Código y un parametro de valor de cantidad.\n\nEl servidor **DEBERÁ** soportar la recepción y procesamiento un Código y un parametro de valor de cantidad."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "combo-code-value-quantity"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-code-value-quantity"
    * type = #composite
    * documentation = "El cliente **DEBERÁ** proporcionar un Código y un parametro de valor de cantidad.\n\nEl servidor **DEBERÁ** soportar la recepción y procesamiento un Código y un parametro de valor de cantidad, incluyendo si se encuentra en el componente."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "component-code-value-quantity"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-component-code-value-quantity"
    * type = #composite
    * documentation = "El cliente **DEBERÁ** proporcionar un Código y un parametro de valor de cantidad del componente.\n\nEl servidor **DEBERÁ** soportar la recepción y procesamiento un Código y un parametro de valor de cantidad, que se encuentra en el componente."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "code-value-date"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-code-value-date"
    * type = #composite
    * documentation = "El cliente **DEBERÁ** proporcionar un Código y un parametro de valor fecha/hora.\n\nEl servidor **DEBERÁ** soportar la recepción y procesamiento de un Código y un parametro de valor fecha/hora."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "code-value-string"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-code-value-string"
    * type = #composite
    * documentation = "El cliente **DEBERÁ** proporcionar un Código y un parametro de valor de texto.\n\nEl servidor **DEBERÁ** soportar la recepción y procesamiento un Código y un parametro de valor de texto."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "value-string"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-value-string"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "value-quantity"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-value-quantity"
    * type = #quantity
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor entero o decimal.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "combo-value-quantity"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-value-quantity"
    * type = #quantity
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor entero o decimal.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "component-value-quantity"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-component-value-quantity"
    * type = #quantity
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor entero o decimal.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "value-date"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-value-date"
    * type = #date
    * documentation = "Un cliente **DEBERÁ** proporcionar un valor preciso hasta el *segundo + desplazamiento de tiempo*.\n\nUn servidor **DEBERÁ** soportar un valor preciso hasta el *segundo + desplazamiento de tiempo*"
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "combo-code"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-code"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "component-code"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-component-code"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "combo-value-concept"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-value-concept"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "component-value-concept"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-component-value-concept"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "value-concept"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-value-concept"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "status"
    * definition = "http://hl7.org/fhir/SearchParameter/Observation-status"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
* rest.resource[+] //Organization
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #Organization
  * supportedProfile = Canonical(CoreOrganizacionCl)
  * supportedProfile.extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * interaction[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY 
    * code = #create
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #search-type
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #vread
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #update
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #patch
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #delete
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #history-instance
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #history-type
  * referencePolicy[0] = #literal
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * referencePolicy[+] = #logical
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * searchInclude[0] = "*"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Organization:endpoint"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Organization:partof"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[0] = "AuditEvent:agent"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AuditEvent:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AuditEvent:source"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:attester"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:entry"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:evidence-detail"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Encounter:service-provider"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Immunization:manufacturer"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Immunization:performer"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Location:organization"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Medication:manufacturer"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:focus"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:performer"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Organization:partof"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Patient:general-practitioner"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Patient:organization"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "PractitionerRole:organization"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:agent"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:target"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchParam[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address-state"
    * definition = "http://hl7.org/fhir/SearchParameter/Organization-address-state"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address-country"
    * definition = "http://hl7.org/fhir/SearchParameter/Organization-address-country"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address-city"
    * definition = "http://hl7.org/fhir/SearchParameter/Organization-address-city"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "identifier"
    * definition =  "http://hl7.org/fhir/SearchParameter/Organization-identifier"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address"
    * definition = "http://hl7.org/fhir/SearchParameter/Organization-address"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "active"
    * definition = "http://hl7.org/fhir/SearchParameter/Organization-active"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address-use"
    * definition = "http://hl7.org/fhir/SearchParameter/Organization-address-use"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "name"
    * definition = "http://hl7.org/fhir/SearchParameter/Organization-name"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "phonetic"
    * definition = "http://hl7.org/fhir/SearchParameter/Organization-phonetic"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
    * documentation =  "Id logico de este artefacto"
* rest.resource[+] //Patient
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #Patient
  * supportedProfile = Canonical(CorePacienteCl)
  * supportedProfile.extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * interaction[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY 
    * code = #create
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #search-type
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #vread
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #update
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #patch
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #delete
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #history-instance
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #history-type
  * referencePolicy[0] = #literal
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * referencePolicy[+] = #logical
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * searchInclude[0] = "*"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Patient:general-practitioner"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Patient:link"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Patient:organization"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[0] = "AllergyIntolerance:asserter"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AllergyIntolerance:patient"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AllergyIntolerance:recorder"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AuditEvent:agent"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AuditEvent:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AuditEvent:patient"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AuditEvent:source"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:attester"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:author"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:entry"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:patient"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:evidence-detail"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:asserter"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:patient"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Encounter:patient"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Encounter:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Immunization:patient"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:focus"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:patient"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:performer"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Patient:link"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:agent"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:patient"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:target"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchParam[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "birthdate"
    * definition =  "http://hl7.org/fhir/SearchParameter/individual-birthdate"
    * type = #date
    * documentation = "Un cliente **DEBERÁ** proveer una fecha precisa.\n\nUn servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address-state"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-address-state"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "gender"
    * definition =  "http://hl7.org/fhir/SearchParameter/individual-gender"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address-country"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-address-country"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "phonetic"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-phonetic"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "telecom"
    * definition =  "http://hl7.org/fhir/SearchParameter/individual-telecom"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "email"
    * definition =  "http://hl7.org/fhir/SearchParameter/individual-email"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "given"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-given"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "identifier"
    * definition =  "http://hl7.org/fhir/SearchParameter/Patient-identifier"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-address"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "general-practitioner"
    * definition = "http://hl7.org/fhir/SearchParameter/Patient-general-practitioner"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "language"
    * definition = "http://hl7.org/fhir/SearchParameter/Patient-language"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address-use"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-address-use"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address-city"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-address-city"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "name"
    * definition = "http://hl7.org/fhir/SearchParameter/Patient-name"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "phone"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-phone"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "family"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-family"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
    * documentation =  "Id logico de este artefacto"
* rest.resource[+] //Practitioner
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #Practitioner
  * supportedProfile = Canonical(CorePrestadorCl)
  * supportedProfile.extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * interaction[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY 
    * code = #create
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #search-type
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #vread
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #update
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #patch
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #delete
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #history-instance
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #history-type
  * referencePolicy[0] = #literal
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * referencePolicy[+] = #logical
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * searchInclude[0] = "*"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[0] = "AllergyIntolerance:asserter"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AllergyIntolerance:patient"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AllergyIntolerance:recorder"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AuditEvent:agent"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AuditEvent:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AuditEvent:source"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:attester"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:author"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:entry"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:evidence-detail"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:asserter"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Encounter:participant"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Encounter:practitioner"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Immunization:performer"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:focus"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:performer"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Patient:general-practitioner"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "PractitionerRole:practitioner"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:agent"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:target"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchParam[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "birthdate"
    * definition =  "http://hl7.org/fhir/SearchParameter/individual-birthdate"
    * type = #date
    * documentation = "Un cliente **DEBERÁ** proveer una fecha precisa.\n\nUn servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address-state"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-address-state"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "gender"
    * definition =  "http://hl7.org/fhir/SearchParameter/individual-gender"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address-country"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-address-country"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "phonetic"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-phonetic"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "telecom"
    * definition =  "http://hl7.org/fhir/SearchParameter/individual-telecom"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "email"
    * definition =  "http://hl7.org/fhir/SearchParameter/individual-email"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "given"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-given"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "identifier"
    * definition =  "http://hl7.org/fhir/SearchParameter/Practitioner-identifier"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-address"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address-use"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-address-use"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "address-city"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-address-city"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "name"
    * definition = "http://hl7.org/fhir/SearchParameter/Practitioner-name"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "phone"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-phone"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "family"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-family"
    * type = #string
    * documentation = "Un servidor **DEBERÁ** soportar un valor preciso."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
    * documentation =  "Id logico de este artefacto"
* rest.resource[+] //PractitionerRole
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #PractitionerRole
  * supportedProfile = Canonical(CoreLocalizacionCl)
  * supportedProfile.extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * interaction[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY 
    * code = #create
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #search-type
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #vread
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #update
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #patch
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #delete
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #history-instance
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #history-type
  * referencePolicy[0] = #literal
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * referencePolicy[+] = #logical
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * searchInclude[0] = "*"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "PractitionerRole:endpoint"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "PractitionerRole:location"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "PractitionerRole:organization"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "PractitionerRole:practitioner"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "PractitionerRole:practitioner"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[0] = "AllergyIntolerance:asserter"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AllergyIntolerance:recorder"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AuditEvent:agent"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AuditEvent:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AuditEvent:source"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:attester"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:author"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:entry"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:asserter"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:evidence-detail"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Encounter:participant"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Immunization:performer"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:focus"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:performer"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Patient:general-practitioner"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:agent"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:target"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchParam[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "date"
    * definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-date"
    * type = #date
    * documentation = "A client **SHALL** provide a value precise*.\n\nA server **SHALL** support a value precise*."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "specialty"
    * definition =  "http://hl7.org/fhir/SearchParameter/PractitionerRole-specialty"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "role"
    * definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-role"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "practitioner"
    * definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "organization"
    * definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-organization"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "location"
    * definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-location"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "active"
    * definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-active"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
    * documentation =  "Id logico de este artefacto"
* rest.resource[+] //Provenance
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * type = #Provenance
  * supportedProfile = Canonical(ProvenanceCl)
  * supportedProfile.extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHALL
  * interaction[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY 
    * code = #create
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #search-type
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #vread
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #update
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #patch
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #delete
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #history-instance
  * interaction[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #MAY
    * code = #history-type
  * referencePolicy[0] = #literal
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * referencePolicy[+] = #logical
  * referencePolicy[=].extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * searchInclude[0] = "*"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Provenance:agent"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Provenance:entity"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Provenance:location"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Provenance:patient"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchInclude[+] = "Provenance:target"
  * searchInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[0] = "AuditEvent:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "AuditEvent:source"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:entry"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Composition:subject"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Condition:evidence-detail"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Observation:focus"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:entity"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchRevInclude[+] = "Provenance:target"
  * searchRevInclude[=]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
  * searchParam[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "agent"
    * definition = "http://hl7.org/fhir/SearchParameter/Provenance-agent"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "agent-type"
    * definition = "http://hl7.org/fhir/SearchParameter/Provenance-agent-type"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "signature-type"
    * definition = "http://hl7.org/fhir/SearchParameter/Provenance-signature-type"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "recorded"
    * definition = "http://hl7.org/fhir/SearchParameter/Provenance-recorded"
    * type = #date
    * documentation = "Un cliente **DEBERÁ** proporcionar un valor preciso hasta el *segundo + desplazamiento de tiempo*.\n\nUn servidor **DEBERÁ** soportar un valor preciso hasta el *segundo + desplazamiento de tiempo*"
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "target"
    * definition = "http://hl7.org/fhir/SearchParameter/Provenance-target"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "patient"
    * definition = "http://hl7.org/fhir/SearchParameter/Provenance-patient"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "location"
    * definition = "http://hl7.org/fhir/SearchParameter/Provenance-location"
    * type = #reference
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de id y **PODRÁ** proporcionar tanto los valores de Tipo como de id.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "agent-role"
    * definition = "http://hl7.org/fhir/SearchParameter/Provenance-agent-role"
    * type = #token
    * documentation = "El cliente **DEBERÁ** proporcionar al menos un valor de código y **PODRÁ** proporcionar tanto los valores de sistema como de código.\n\nEl servidor **DEBERÁ** soportar ambos."
  * searchParam[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
    * documentation =  "Id logico de este artefacto"
/*
* rest.resource[+]
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #SHOULD
  * type = #ValueSet
  * opertation[0]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * name = "expand"
    * definition = "http://hl7.org/fhir/OperationDefinition/ValueSet-expand"
    * documentation = "Si un servidor soporta Condition y AllergyIntolerance la operación expand será requerida para validar las codificaciones."
*/
* rest.interaction[0]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * code = #transaction
* rest.interaction[+]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * code = #batch
* rest.interaction[+]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * code = #search-system
* rest.interaction[+]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * valueCode = #MAY
  * code = #history-system