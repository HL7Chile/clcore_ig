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

Instance : PacienteCL
Title : "Ejemplo de Recurso Paciente Nacional"
Description: "Paciente ficticio nacional CI Chilena, sin sistema de validación \"http://regcivil.cl/Validacion/RUN\" ficticio , cuyo nombre se decribe mediante el oficial y uno social. La dirección tampoco es Real"
InstanceOf : CorePacienteCl
Usage : #example

//Identificación por Cédula Chilena
* identifier.use = #official    //obligado
* identifier.type.extension[paises].valueCodeableConcept.coding.system =  "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* identifier.type.extension[paises].valueCodeableConcept.coding.code = #152
* identifier.type.extension[paises].valueCodeableConcept.coding.display = "Chile"
* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI"
* identifier.type.coding.code = #NNCHL
* identifier.type.coding.display = "Chile"

* identifier.system = "http://regcivil.cl/Validacion/RUN"
* identifier.value = "15.236.327-k"

//registro de paciente activo
* active = true

//Nombre Oficial
* name[NombreOficial].use = #official
* name[NombreOficial].family = "Rosales"
* name[NombreOficial].family.extension[segundoApellido] = Bosh //uso de la extensión
* name[NombreOficial].given[0] = "Marietta"
* name[NombreOficial].given[+] = "María"
* name[NombreOficial].given[+] = "Ximena"

//nombre social
* name[NombreSocial].use = #usual
* name[NombreSocial].given = "Xime"

//dos contactos, un celular y un email
* telecom.system = #phone
* telecom.use = #mobile
* telecom.value = "943561833"

* telecom[1].system = #email
* telecom[1].use = #work
* telecom[1].value = "mariRosal@mimail.com"

//sexo registrado al nacer y fecha de nacimiento
* gender = #female
* birthDate = "1983-03-24"

// Una sola dirección
* address.use = #home
* address.line = "Av Los Chirimoyos, 32, casa 4"


* address.city.extension[ComunasCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension[ComunasCl].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension[ComunasCl].valueCodeableConcept.coding.code = #05602
* address.city.extension[ComunasCl].valueCodeableConcept.coding.display =  "Algarrobo"

* address.district.extension[ProvinciasCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL" 
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.code = #056 
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.display = "San Antonio"

* address.state.extension[RegionesCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension[RegionesCl].valueCodeableConcept.coding.system  = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL" 
* address.state.extension[RegionesCl].valueCodeableConcept.coding.code  = #05 
* address.state.extension[RegionesCl].valueCodeableConcept.coding.display  = "Valparaíso"

* address.country.extension[CodigoPaises].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.code = #152
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.display = "Chile"


* contact.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdContacto"

* contact.extension.extension[0].url = "tutId"
* contact.extension.extension[=].valueIdentifier.type = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI#NNCHL "Chile"
* contact.extension.extension[=].valueIdentifier.system = "http://regcivil.cl/Validacion/RUN"
* contact.extension.extension[=].valueIdentifier.value = "8987321-7"

* contact.extension.extension[+].url = "docProc"
* contact.extension.extension[=].valueCodeableConcept.coding.system  = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* contact.extension.extension[=].valueCodeableConcept.coding.code = #152 
* contact.extension.extension[=].valueCodeableConcept.coding.display = "Chile"


* contact.relationship = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact.name.use = #official
* contact.name.family = "Calleja"
* contact.name.family.extension[segundoApellido] = Morales
* contact.name.given[0] = "Juana"
* contact.name.given[+] = "Josefa"

* communication.language.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoslenguaje"
* communication.language.coding.code = #es-CL "Spanish"
* communication.language.coding.display = "Spanish"

* generalPractitioner.reference = "Organization/ORG1"
* generalPractitioner.display = "Hospital de la Vida"

Instance: Bosh
InstanceOf: SegundoApellido
Usage: #inline

* valueString = "Bosh"

Instance: Morales
InstanceOf: SegundoApellido
Usage: #inline

* valueString = "Morales"

Instance : PacienteCL2
Title : "Ejemplo de Recurso Paciente Extranjero"
Description: "Paciente ficticio extrangero, con identificación Pasaporte de origen Salvadoreño sin sistema real de validación del número de Pasaporte."
InstanceOf : CorePacienteCl
Usage : #example

// Nacionalidad por medio de la extensión
* extension[nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[nacionalidad].valueCodeableConcept.coding.code = #222
* extension[nacionalidad].valueCodeableConcept.coding.display = "El Salvador"

//Identificación por Pasaporte Salvadoreño
* identifier.use = #official    //obligado
* identifier.type.extension[paises].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* identifier.type.extension[paises].valueCodeableConcept.coding.code = #222
* identifier.type.extension[paises].valueCodeableConcept.coding.display = "El Salvador"
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #PPN
* identifier.type.coding.display = "Passport number"
* identifier.system = "http://Pasaportes.cl/Validacion/Pass"
* identifier.value = "P3334521.2"


//registro de paciente activo
* active = true

//Nombre Oficial
* name[NombreOficial].use = #official
* name[NombreOficial].family = "Cabrales"
* name[NombreOficial].family.extension[segundoApellido] = Rivas
* name[NombreOficial].given = "Wilmer"
* name[NombreOficial].given[1] = "Andres"
* name[NombreOficial].given[2] = "de Dios"


//un contactos, un email

* telecom.system = #email
* telecom.use = #home
* telecom.value = "wilCAB12l@wilmermail.com"

//sexo registrado al nacer y fecha de nacimiento
* gender = #male
* birthDate = "1968-11-03"

// Una sola dirección

* address.use = #temp
* address.line = "Calle 4 Norte, 52, pieza 802"

* address.city.extension[ComunasCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension[ComunasCl].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension[ComunasCl].valueCodeableConcept.coding.code = #15101
* address.city.extension[ComunasCl].valueCodeableConcept.coding.display =  "Arica"

* address.district.extension[ProvinciasCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL" 
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.code = #151
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.display = "Arica"

* address.state.extension[RegionesCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension[RegionesCl].valueCodeableConcept.coding.system  = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL" 
* address.state.extension[RegionesCl].valueCodeableConcept.coding.code  = #15 
* address.state.extension[RegionesCl].valueCodeableConcept.coding.display  = "Arica y Parinacota"

* address.country.extension[CodigoPaises].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.code = #152 
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.display = "Chile"


Instance: Rivas
InstanceOf: SegundoApellido
Usage: #inline

* valueString = "Rivas"

Instance: PacienteCl-3
InstanceOf: CorePacienteCl
Description: "Paciente ficticio nacional CI Chilena con sistema de validación no real, cuyo nombre es solo el oficial. La dirección tampoco es Real"
Title : "Paciente Nacional, con datos actualizados, declarando nacionalidad"
Usage: #example

* extension[nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[nacionalidad].valueCodeableConcept.coding.code = #152
* extension[nacionalidad].valueCodeableConcept.coding.display = "Chile"


* identifier.use = #official
* identifier.type.extension[paises].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* identifier.type.extension[paises].valueCodeableConcept.coding.code = #152
* identifier.type.extension[paises].valueCodeableConcept.coding.display = "Chile"
* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI"
* identifier.type.coding.code = #NNCHL
* identifier.type.coding.display = "Chile"
* identifier.system = "http://regcivil.cl/Validacion/RUN"
* identifier.value = "15602754-5"

* active = true
* name[NombreOficial].use = #official
* name[NombreOficial].family = "PIZARRO"

* name[NombreOficial].family.extension = DELGADO //uso de la extensión

* name[NombreOficial].given[0] = "PABLO"
* name[NombreOficial].given[+] = "RODRIGO"

* telecom.system = #email
* telecom.value = "ppizarro.delgado@minsal.cl"
* telecom.use = #work

* gender = #male
* birthDate = "1983-08-04"

* address.use = #home
* address.city = "13120"
* address.district = "131"
* address.state = "13"
* address.country = #152

* address.use = #home
//* address.line = "Calle 4 Norte, 52, pieza 802"
* address.city.extension[ComunasCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension[ComunasCl].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension[ComunasCl].valueCodeableConcept.coding.code = #15101
* address.city.extension[ComunasCl].valueCodeableConcept.coding.display =  "Arica"

* address.district.extension[ProvinciasCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL" 
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.code = #151
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.display = "Arica"

* address.state.extension[RegionesCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension[RegionesCl].valueCodeableConcept.coding.system  = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL" 
* address.state.extension[RegionesCl].valueCodeableConcept.coding.code  = #15 
* address.state.extension[RegionesCl].valueCodeableConcept.coding.display  = "Arica y Parinacota"

* address.country.extension[CodigoPaises].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.code = #152 
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.display = "Chile"

* deceasedBoolean = false 

Instance: DELGADO
InstanceOf: SegundoApellido
Usage: #inline

* valueString = "DELGADO"



Instance: PacienteCl-4
InstanceOf: CorePacienteCl
Title : "Ejemplo de Recurso de paciente Nacional con contacto declarado"
Description: """Paciente ficticio nacional CI Chilena, 
     * sin sistema de validación \"http://regcivil.cl/Validacion/RUN\" ficticio , 
     * cuyo nombre se decribe mediante el oficial y uno social. 
     * La dirección tampoco es Real.
     * Se agrega al paciente un acompañante patiente."""
Usage: #example

* extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension.valueCodeableConcept.coding.system  = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension.valueCodeableConcept.coding.code  = #152
* extension.valueCodeableConcept.coding.display  = "Chile"

* identifier.use = #official
* identifier.type.extension[paises].valueCodeableConcept.coding.system =  "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* identifier.type.extension[paises].valueCodeableConcept.coding.code = #152
* identifier.type.extension[paises].valueCodeableConcept.coding.display = "Chile"


* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #PPN
* identifier.type.coding.display = "Passport Number"

* identifier.system = "http://regcivil.cl/Validacion/Passport"
* identifier.value = "P102145874"

* active = true
* name[NombreOficial].use = #official
* name[NombreOficial].family = "Ortega"
* name[NombreOficial].family.extension = Callejas
* name[NombreOficial].given[0] = "Juan"
* name[NombreOficial].given[+] = "José"
* name[NombreSocial].use = #usual
* name[NombreSocial].given = "JuanJo"
* telecom.system = #email
* telecom.value = "juan@jo.cl"
* telecom.use = #home
* gender = #male
* birthDate = "1980-08-04"


* address.use = #home
* address.line = "Calle 4 Norte, 52, pieza 802"
* address.city.extension[ComunasCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension[ComunasCl].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension[ComunasCl].valueCodeableConcept.coding.code = #15101
* address.city.extension[ComunasCl].valueCodeableConcept.coding.display =  "Arica"

* address.district.extension[ProvinciasCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL" 
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.code = #151
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.display = "Arica"

* address.state.extension[RegionesCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension[RegionesCl].valueCodeableConcept.coding.system  = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL" 
* address.state.extension[RegionesCl].valueCodeableConcept.coding.code  = #15 
* address.state.extension[RegionesCl].valueCodeableConcept.coding.display  = "Arica y Parinacota"

* address.country.extension[CodigoPaises].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.code = #152
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.display = "Chile"



* contact.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdContacto"
* contact.extension.extension[0].url = "tutId"
* contact.extension.extension[=].valueIdentifier.type = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI#NNCHL "Chile"
* contact.extension.extension[=].valueIdentifier.system = "http://regcivil.cl/Validacion/RUN"
* contact.extension.extension[=].valueIdentifier.value = "8987321-7"

* contact.extension.extension[+].url = "docProc"
* contact.extension.extension[=].valueCodeableConcept.coding.system  = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* contact.extension.extension[=].valueCodeableConcept.coding.code = #152 
* contact.extension.extension[=].valueCodeableConcept.coding.display = "Chile"

* contact.relationship = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact.name.use = #official
* contact.name.family = "Calleja"
* contact.name.family.extension = Morales
* contact.name.given[0] = "Juana"
* contact.name.given[+] = "Josefa"

Instance: Callejas
InstanceOf: SegundoApellido
Usage: #inline

* valueString = "Callejas"

Instance: PacienteCl-5
InstanceOf: CorePacienteCl
Title : "Ejemplo de Recurso de paciente Nacional con contacto declarado y extensión en dirección"
Description: """Paciente ficticio nacional CI Chilena, 
     * sin sistema de validación \"http://regcivil.cl/Validacion/RUN\" ficticio , 
     * cuyo nombre se decribe mediante el oficial y uno social. 
     * La dirección tampoco es Real.
     * Se agrega al paciente un acompañante patiente
     * La dirección se declara con códigos por extensión."""
Usage: #example

* extension[IdentidadDeGenero] = NoRevelado
* extension[SexoBiologico] = Masculino
* extension[nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[nacionalidad].valueCodeableConcept.coding.system  = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[nacionalidad].valueCodeableConcept.coding.code  = #152
* extension[nacionalidad].valueCodeableConcept.coding.display  = "Chile"

* identifier.use = #official
* identifier.type.extension[paises].valueCodeableConcept.coding.system =  "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* identifier.type.extension[paises].valueCodeableConcept.coding.code = #152
* identifier.type.extension[paises].valueCodeableConcept.coding.display = "Chile"


* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #PPN
* identifier.type.coding.display = "Passport Number"

* identifier.system = "http://regcivil.cl/Validacion/Passport"
* identifier.value = "P123456789"

* active = true
* name[NombreOficial].use = #official
* name[NombreOficial].family = "Ulloa"
* name[NombreOficial].family.extension = Medina
* name[NombreOficial].given[0] = "Franco"
* name[NombreOficial].given[+] = "Mauricioa"
* telecom.system = #email
* telecom.value = "Franco@Mauri.cl"
* telecom.use = #home
* gender = #male
* birthDate = "1996-08-01"


* address.use = #home
* address.line = "Calle 4 Norte, 52, pieza 802"
* address.city.extension[ComunasCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension[ComunasCl].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension[ComunasCl].valueCodeableConcept.coding.code = #13101
* address.city.extension[ComunasCl].valueCodeableConcept.coding.display =  "Santiago Centro"

* address.district.extension[ProvinciasCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL" 
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.code = #131
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.display = "Santiago"

* address.state.extension[RegionesCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension[RegionesCl].valueCodeableConcept.coding.system  = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL" 
* address.state.extension[RegionesCl].valueCodeableConcept.coding.code  = #13
* address.state.extension[RegionesCl].valueCodeableConcept.coding.display  = "Metropolitana de Santiago"

* address.country.extension[CodigoPaises].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.code = #152 
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.display = "Chile"

* contact.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdContacto"
* contact.extension.extension[0].url = "tutId"
* contact.extension.extension[=].valueIdentifier.type = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI#NNCHL "Chile"
* contact.extension.extension[=].valueIdentifier.system = "http://regcivil.cl/Validacion/RUN"
* contact.extension.extension[=].valueIdentifier.value = "12342451-k"

* contact.extension.extension[+].url = "docProc"
* contact.extension.extension[=].valueCodeableConcept.coding.system  = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* contact.extension.extension[=].valueCodeableConcept.coding.code = #152 
* contact.extension.extension[=].valueCodeableConcept.coding.display = "Chile"

* contact.relationship = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact.name.use = #official
* contact.name.family = "Barraza"
* contact.name.family.extension = Sandoval
* contact.name.given[0] = "Ines"
* contact.name.given[+] = "Cristina"

Instance: Medina
InstanceOf: SegundoApellido
Usage: #inline

* valueString = "Medina"

Instance: Sandoval
InstanceOf: SegundoApellido
Usage: #inline

* valueString = "Sandoval"

Instance: NoRevelado
InstanceOf: IdentidadDeGenero
Usage: #inline

* valueCodeableConcept = CSIdentidaddeGenero#7 "No Revelado"

Instance: Masculino
InstanceOf: SexoBiologico
Usage: #inline
* valueCodeableConcept = CSSexoListadoDeis#1 "Masculino"

Instance : LocationEj
Title : "Ejemplo de Recurso Location"
Description: "Location ficticio"
InstanceOf : Location
Usage : #example

* id = "3333458"

Instance : ObservationEj
Title : "Ejemplo de Recurso Observation"
Description: "Observation ficticio"
InstanceOf : Observation
Usage : #example

* status = #final 
* id = "123"
* code.coding.system = "http://loinc.org#10244-2"
* subject = Reference(Patient/11)
* performer = Reference(Practitioner/3020)
* effectiveDateTime = "2022-07-06T14:30:00+01:00"

Instance : ImmunizationEj
Title : "Ejemplo de Recurso Immunization"
Description: "Immunization ficticio"
InstanceOf : Immunization
Usage : #example

* status = #completed
* patient = Reference(Patient/11)
* id = "999"
* vaccineCode = #66071002 
* vaccineCode.coding.system = "http://snomed.info/sct"
* occurrenceDateTime = "2022-07-06T14:30:00+01:00"



Instance : MedicationStatementEj
Title : "Ejemplo de Recurso MedicationStatement"
Description: "MedicationStatement ficticio"
InstanceOf : MedicationStatement
Usage : #example

* id = "354"
* status = #active 
* subject = Reference(Patient/11)
* medicationCodeableConcept.coding = http://snomed.info/sct#27658006 
* medicationCodeableConcept.coding.display = "Product containing amoxicillin (medicinal product)"

Instance : AllergyIntoleranceEj
Title : "Ejemplo de Recurso AllergyIntolerance"
Description: "AllergyIntolerance ficticio"
InstanceOf : AllergyIntolerance
Usage : #example

* patient = Reference(Patient/11)
* id = "222"
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.coding.code = #active      

Instance : OrganizacionEj
Title : "Ejemplo de Recurso Organización"
Description: "Organización ficticio"
InstanceOf : Organization
Usage : #example

* id = "f003"
* name = "Hospital Nueva Aurora"

Instance : ProfesionalEj
Title : "Ejemplo de Recurso Profesional"
Description: "Profesional ficticio"
InstanceOf : Practitioner
Usage : #example

* id = "3020"
* name.given = "Fernanda Soto"

Instance : ConditionEj
Title : "Ejemplo de Recurso Condition"
Description: "Condition ficticio"
InstanceOf : Condition
Usage : #example

* id = "1112"
* subject = Reference(Patient/11)

Instance : PacienteEj
Title : "Ejemplo de Recurso Paciente"
Description: "Paciente ficticio"
InstanceOf : Patient
Usage : #example

* id = "11"
* name.given = "Yanara Salinas"
* gender = #female
* birthDate = "1990-01-02"






/*

Instance : EjemplValidacionProvCl
Title : "Ejemplo de la Validación de una Receta por medio del Prescriptor"
Description: "Ejemplo de una Receta en Request Group que contiene una receta, en la cual el prestador que la ha desarollado genera una validación por medio de una firma" 
InstanceOf : ProvenanceCl
Usage: #example

* target.reference = "RequestGroup/RG12224"

* recorded =  2015-08-27T08:39:24+10:00

* activity.coding.system = "http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion"
* activity.coding.code = #LA
* activity.coding.display = "legally authenticated"

* agent.type.coding.system = "http://terminology.hl7.org/CodeSystem/provenance-participant-type"   
* agent.type.coding.code = #author
* agent.type.coding.display = "author"
* agent.who.reference = "Practitioner/3240"

* signature.type.system = "urn:iso-astm:E1762-95:2013"
* signature.type.code = #1.2.840.10065.1.12.1.1
* signature.when = 2015-08-27T08:39:24+10:00

* signature.who = Reference(Practitioner/3240)

* signature.sigFormat = #application/signature+xml
* signature.data = "Li4u"


Instance: example
InstanceOf: RequestGroup
Description: "Solo un ejemplo"
Usage: #example

* id = "RG12224"

* status = #draft
* intent = #plan


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
* type.extension[type].valueCode = #PR
* type.coding.system = "https://minsal.cl/fhir/HD/CodeSystem/CSTiposEncuentroCL"

//Servicio entregado en el Encuentro
* serviceType.coding.code = #nutINTA
* serviceType.coding.system = "https://minsal.cl/fhir/HD/CodeSystem/CSCodigoServicio"
* serviceType.extension[serviceType].valueCode = #nutINTA

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


Instance : CompositionCl-CarlosSalas
Title : "Ejemplo de Recurso CompositionCl"
Description: "Composición de un documento para resumen de historia clínica" 
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
* title = "Resumen IPS para Carlos Salas - 06 JUL 2022"

// --- Sección Diagnóstico ---
* section[sectionDiagnosticos].title = "Diagnósticos"
* section[sectionDiagnosticos].code = http://loinc.org#11450-4 "Problem list - Reported"
* section[sectionDiagnosticos].text.status = #generated
* section[sectionDiagnosticos].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Asma</div>"
* section[sectionDiagnosticos].entry = Reference(Condition/1112)

// --- Sección Medicamentos ---
* section[sectionMedicamentos].title = "Medicamentos"
* section[sectionMedicamentos].code = http://loinc.org#10160-0 "Hx of Medication use"
* section[sectionMedicamentos].text.status = #generated
* section[sectionMedicamentos].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Anastrozole/Cimicifuga</div>"
* section[sectionMedicamentos].entry[0] = Reference(MedicationStatement/354)

// --- Sección Alergias ---
* section[sectionAlergias].title = "Alergias"
* section[sectionAlergias].code = http://loinc.org#48765-2 "Allergies and adverse reactions Document"
* section[sectionAlergias].text.status = #generated
* section[sectionAlergias].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergy to penicillin, high criticality, active</div>"
* section[sectionAlergias].entry = Reference(AllergyIntolerance/222)

// --- Sección Vacunas ---
* section[sectionInmunizacion].title = "Vacunas"
* section[sectionInmunizacion].code = http://loinc.org#11369-6 "Hx of Immunization"
* section[sectionInmunizacion].text.status = #generated
* section[sectionInmunizacion].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Lista de las vacunas recibidas</div>"
* section[sectionInmunizacion].entry = Reference(Immunization/999)

// --- Sección Signos vitales y Mediciones Fisiológicas ---
* section[sectionObservacionSignosVitales].title = "Signos Vitales y Mediciones Fisiológicas"
* section[sectionObservacionSignosVitales].code = http://loinc.org#8716-3 "Vital signs"
* section[sectionObservacionSignosVitales].text.status = #generated
* section[sectionObservacionSignosVitales].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vital signs</div>"
* section[sectionObservacionSignosVitales].entry = Reference(Observation/123)


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

*/