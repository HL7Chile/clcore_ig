Alias: $auditevent = http://minsal.cl/auditevent

Profile: AuditEventCl
Parent: AuditEvent
Id: AuditEventCl
Title: "CL Auditoria"
Description: "Perfil para genererar un recurso que permita desarrollar auditoría de las transacciones realizadas"

* ^version = "1.9.1"
* ^status = #active
* ^publisher = "HL7 Chile"

* type MS
* type ^short = "Tipo/identificación del Evento"
* type ^definition = "Identificador de una familia del evento. Por ejemplo, un elemento de menú, un programa, una regla, una política, un código de función, un nombre de aplicación o una URL. Identifica la función realizada."
* type from http://hl7.org/fhir/ValueSet/audit-event-type (extensible)
* type ^binding.description = "Eventos de auditoría descritos en FHIR para DICOM"

* subtype MS
* subtype ^short = "Especificacion mas detallada del evento"
* subtype.system ^short = "Sistema de Códigos"
* subtype.system ^definition = "Sistema de ejemplo de códigos que describen con mas detalle el evento"
* subtype from http://hl7.org/fhir/ValueSet/audit-event-sub-type (extensible)
* subtype ^binding.description = "Códigos de desarrollados para DICOM"


* action MS
* action from  http://hl7.org/fhir/ValueSet/audit-event-action (required)
* action ^binding.description = "Códigos fijos extraídos de un set de DICOM por FHIR"
* action ^short = "Create| Read/View/Print | Update | Delete | Execute"
* action ^definition = "Código de la acción"
* period MS


* recorded MS
* recorded ^short = "Momento cuando el evento fue guardado"
* recorded ^definition = "Momento cuando el evento fue guardado"

* outcome MS
* outcome ^short = "Resultado de la operación"
* outcome from http://hl7.org/fhir/ValueSet/audit-event-outcome
* outcome ^binding.description = "Códigos extraídos de DICOM" 

* agent MS
* agent ^short = "Quienes actuaron en el evento"
* agent ^definition = "Mínimo debe indicar quien requirió del recurso"
* agent.who MS 
* agent.who ^short = "Quien realizó la acción"
* agent.who ^definition = "Referencia al recurso o Identificación de quien realizó la acción"
* agent.who only Reference(CoreRolClinicoCl or PrestadorCL or CoreOrganizacionCl or CorePacienteCl or Device or RelatedPerson)
* agent.requestor ^short = "indicador de si Who es quien requirió la acción"
* agent.requestor ^definition = "indicador de si Who es quien requirió la acción"
* agent.network MS
* agent.network ^short = "Ubicación de la Red de la Aplicación"
* agent.network ^definition = "Ubicación de red lógica para la actividad de la aplicación, si la actividad tiene una ubicación de red."
* agent.network.address MS
* agent.network.address ^short = "Dirección del Punto de Acceso"
* agent.network.address ^definition = "Un identificador para el tipo de punto de acceso a la red que originó el evento de auditoría."
* agent.network.type MS
* agent.network.type ^short = "Código del tipo de identificación"
* agent.network.type ^definition = "Un tipo de identificador para el tipo de punto de acceso a la red que originó el evento de auditoría."
* agent.network.type from http://hl7.org/fhir/ValueSet/network-type (required)
* agent.network.type ^binding.description = "Códigos extraídos de un set  DICOM por FHIR" 

* source MS
* source ^short = "Quien reporta el evento"
* source ^definition = "Sitio en donde se reporta el evento"
* source.observer MS 
* source.observer only Reference(CoreRolClinicoCl or PrestadorCL or CoreOrganizacionCl or CorePacienteCl or Device or RelatedPerson)
* source.observer ^short = "Entidad que reporta el evento"
* source.observer ^definition = "Identificación del Observador donde se reportó el evento"


* entity MS 
* entity ^short = "Entidad que registra la ocurrencia del Evento"
* entity ^definition = "Entidad que registra la ocurrencia del Evento"
* entity.what MS
* entity.what ^short = "Recurso o identificación de la entidad que registra la ocurrencia del evento"
* entity.what ^definition = "Recurso o identificación de la entidad que registra la ocurrencia del evento"


