Instance: AuditEventEx
InstanceOf: AuditEventCl
Title : "Ejemplo de un Audit-Event Search."
Description: "Log de Audición de una operacion Search."


Usage: #example
* type = http://terminology.hl7.org/CodeSystem/audit-event-type#rest "Restful Operation"
* subtype = http://hl7.org/fhir/restful-interaction#search "search"
* action = #E
* recorded = "2021-08-22T23:42:24Z"
* outcome = #0
* agent[0].type = http://terminology.hl7.org/CodeSystem/extra-security-role-type#humanuser "human user"
* agent[=].who.identifier.value = "95"
* agent[=].altId = "601847123"
* agent[=].name = "El Nombre"
* agent[=].requestor = true

* agent[=].network.address = "Workstation1.ehr.familyclinic.com"
* agent[=].network.type = #1
* source.observer.reference = "Practitioner/3240"
* entity.what.reference = "Organization/ORG1"

/////////////////////////////////////////////////////////////////////////////////////////
Instance : DiagnosticoEj
Title : "Ejemplo de Un Diagnóstico de hipertensión"
Description: "Diagnóstico Confirmado de Hipertesión"
InstanceOf : DiagnosticoCl
Usage : #example

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"

* clinicalStatus.coding.code = #active
* clinicalStatus.coding.display = "Active"

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding.code = #confirmed
* verificationStatus.coding.display = "Confirmed"

* code.text = "Diagnóstico de Hipertensión Confirmada"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #38341003
* code.coding.display = "High blood pressure"
* subject.reference = "Patient/11"

* onsetDateTime = "2022-08-07"

//////////////////////////////////////////////////////////////////////////////////////////////////////

Instance : CompositionClEj
Title : "Ejemplo de Documento Clínico"
Description: "Ejemplo de documento para resumen de historia clínica" 
InstanceOf : DocumentoCl
Usage : #example

// Estado del documento
* status = #final

// Tipo de documento
* type = http://loinc.org#60591-5 "Patient Summary Document"

// Paciente
* subject = Reference(Patient/11)

// Fecha 
* date = "2022-07-06T14:30:00+01:00"

// Autor del documento, referencia a un profesional
* author = Reference(Practitioner/3020)

// Titulo del documento
* title = "Resumen para Darth Bader - 06 JUL 2022"

// --- Sección Diagnóstico ---
* section[0].title = "Diagnósticos"
* section[=].code = http://loinc.org#11450-4 "Problem list - Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Asma</div>"
* section[=].entry = Reference(Condition/1112)

// --- Sección Medicamentos ---
* section[+].title = "Medicamentos"
* section[=].code = http://loinc.org#10160-0 "Hx of Medication use"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Anastrozole/Cimicifuga</div>"
* section[=].entry[0] = Reference(MedicationStatement/354)

// --- Sección Alergias ---
* section[+].title = "Alergias"
* section[=].code = http://loinc.org#48765-2 "Allergies and adverse reactions Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergy to penicillin, high criticality, active</div>"
* section[=].entry = Reference(AllergyIntolerance/222)

// --- Sección Vacunas ---
* section[+].title = "Vacunas"
* section[=].code = http://loinc.org#11369-6 "Hx of Immunization"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Lista de las vacunas recibidas</div>"
* section[=].entry = Reference(Immunization/999)

// --- Sección Signos vitales y Mediciones Fisiológicas ---
* section[+].title = "Signos Vitales y Mediciones Fisiológicas"
* section[=].code = http://loinc.org#8716-3 "Vital signs"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vital signs</div>"
* section[=].entry = Reference(Observation/123)

/////////////////////////////////////////////////////////////////////////////////////////////

Instance : EncounterCL
Title : "Ejemplo de Recurso Encuentro"
Description: "Encuentro remoto ficticio del paciente"
InstanceOf : EncounterCL
Usage : #example

// Estado del encuentro
* status = #planned 

//Clase de encuentro, en este caso es Virtual
* class.code = #VR 
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.display = "Virtual"

//Tipo de encuentro remoto
* type.coding.code = #PR


//Servicio entregado en el Encuentro
* serviceType.coding.code = #nutINTA
* serviceType.coding.system = "https://minsal.cl/fhir/HD/CodeSystem/CSCodigoServicio"


//Razon de no realizarse
* reasonCode.extension[reasonCode].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RazonNOrealizarse"
* reasonCode.extension[reasonCode].valueCode = #pierdellam

//Notas del encuentro entre Profesionales
* extension[notas].valueString = "Encuentro exitoso"

//Paciente referenciado
* subject.reference = "Patient/11"

//Participante principal
* participant[partPrincipal].extension[especialidad].valueCoding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSEspecialidadesDeisCL"
* participant[partPrincipal].extension[especialidad].valueCoding.code = #01
* participant[partPrincipal].extension[especialidad].valueCoding.display = "Anatomía Patológica"
* participant[partPrincipal].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* participant[partPrincipal].type.coding.code = #PPRF 
* participant[partPrincipal].individual.reference = "Practitioner/3020"

//Participante secundario
* participant[partSecundario].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* participant[partSecundario].type.coding.code = #SPRF
* participant[partSecundario].extension[contact].valueContactPoint.value = "jose.12@gmail.com"
* participant[partSecundario].extension[contact].valueContactPoint.system = #email

//Periodo
* period.start = "2022-06-23T00:00:00-03:00"
* period.end = "2022-06-23T00:50:00-03:00"
* length.value = 50

//Razón por la que se realiza el encuentro
* reasonCode.text = "Consulta médica sobre nutrición de alimentos"

//Diagnóstico
* diagnosis.extension[observaciones].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ObservacionesDiagnostico"
* diagnosis.extension[observaciones].valueString = "Buena atención"
* diagnosis.condition.display = "Condition IPS"

//Organización que provee el Encuentro 
* serviceProvider.reference = "Organization/f003"

/////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance : ImmunizationCL
Title : "Ejemplo de Recurso Inmunización"
Description: "Registro de inmunización ficticio"
InstanceOf : ImmunizationCL
Usage : #example

//Extensión para nombre campaña
* extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/NombreCampana"
* extension.valueCoding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSNombreCampana"
* extension.valueCoding.code = #hepatiA
* extension.valueCoding.display = "Hepatitis A" 

//Id
* identifier.system = "http://sgi.gob.cl/identifier/inmunization/rni/"
* identifier.value = "136588279"

//Estado
* status = #completed 

//Razón de no realizarse la inmunización
* statusReason.extension[statusReason].valueCode = #solicitudPaci


//Paciente inmunizado
* patient = Reference(Patient/11)

//Fecha de administración de la vacuna
* occurrenceDateTime = "2022-04-07T00:00:00-04:00"
* recorded = "2021-06-24T00:00:00-04:00"

//Localización
* location = Reference(Location/3333458)

//Localizacion Sistema Salud
* location.extension.valueCoding.code = #SSAN
* location.extension.valueCoding.system = "https://minsal.cl/fhir/HD/CodeSystem/CSCodSSalud"
* location.extension.valueCoding.display = "Servicio de Salud Antofagasta"
* location.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ServicioSalud"

//Vacuna administrada
* vaccineCode.extension.valueCode = #hep_A 
//* vaccineCode.extension.valueCode.system = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSTiposVacunas"
* vaccineCode.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/TiposVacunaRNI"
//Organización 
* performer.actor = Reference(Organization/f003)

//Dosis
* protocolApplied.doseNumberString = "1º dosis"

//Lote
* lotNumber = "T3E881V"

//Fecha de expiración
* expirationDate = "2022-03-31"


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7}

Instance : LocalizacionEjemploCL1
Title : "Ejemplo de  Localización Farmacia"
Description: "Ejemplo de la localización relacionada con una Farmacia específica ubicada en la comuna de Viña del Mar"
InstanceOf : CoreLocalizacionCl

* identifier.value = "23144561"
* identifier.system = "http://miderfarm.cl/validador_id"
* status = #active
* name = "Gran Farmacia Gran"
* alias = "La gran"

* type.coding.code = #PHARM
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* type.coding.display = "Pharmacy"

* telecom.system = #phone
* telecom.value = "(+56) 234221678"
* telecom.use = #work


* address.line = "Calle 10 Norte, 1240, Viña del Mar"
* address.city.extension[ComunasCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension[ComunasCl].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension[ComunasCl].valueCodeableConcept.coding.code = #05109
* address.city.extension[ComunasCl].valueCodeableConcept.coding.display =  "Viña del Mar"

* address.district.extension[ProvinciasCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL" 
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.code = #05109 
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.display = "Valparaíso"

* address.state.extension[RegionesCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension[RegionesCl].valueCodeableConcept.coding.system  = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL" 
* address.state.extension[RegionesCl].valueCodeableConcept.coding.code  = #05
* address.state.extension[RegionesCl].valueCodeableConcept.coding.display  = "Valparaíso"

* address.country.extension[CodigoPaises].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.code = #CL 
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.display = "Chile"




* position.longitude = 42.2565
* position.latitude = -71.550261

* managingOrganization.reference = "Organization/ORG1"

* hoursOfOperation.daysOfWeek = #mon
* hoursOfOperation.daysOfWeek = #tue
* hoursOfOperation.daysOfWeek = #wed
* hoursOfOperation.daysOfWeek = #thu
* hoursOfOperation.daysOfWeek = #fri
* hoursOfOperation.daysOfWeek = #sat
* hoursOfOperation.allDay = false
* hoursOfOperation.openingTime = 09:00:00
* hoursOfOperation.openingTime = 19:00:00
