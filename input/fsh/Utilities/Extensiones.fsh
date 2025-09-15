Alias: IdentGenVS =  https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSIdentidadGenero
Alias: SexBiolVS = https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSSexoBiologico
Alias: FhirGenderVS = http://hl7.org/fhir/ValueSet/administrative-gender
Alias: PaisesVS = https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSPaises
Alias: ComunasVS = https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSComunas
Alias: ProvinciasVS = https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSProvincia
Alias: RegionesVS = https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSRegion


/*Por problemas en más de un servidor las extensiones deben utilizar el recurso base en los contextos*/
Extension: IdentidadDeGenero
Id: IdentidadDeGenero
Title: "Identidad De Género"
Description: "Identidad De Género"
Context: Patient, Practitioner
* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept ^short = "Identidad De Género"
* valueCodeableConcept from  IdentGenVS (preferred)

Extension: SexoBiologico
Id: SexoBiologico
Title: "Sexo Biologico del paciente"
Description: "Sexo Biologico del paciente"
Context: Patient, Practitioner

* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept ^short = "SexoBiologico"
* valueCodeableConcept from SexBiolVS (preferred)

* valueCodeableConcept ^binding.extension.extension[0].url = "key"
* valueCodeableConcept ^binding.extension.extension[=].valueId = "FHIRGender"
* valueCodeableConcept ^binding.extension.extension[+].url = "purpose"
* valueCodeableConcept ^binding.extension.extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension.extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension.extension[=].valueCanonical = "http://hl7.org/fhir/ValueSet/administrative-gender"
* valueCodeableConcept ^binding.extension.extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension.extension[=].valueMarkdown = "Una vinculación adicional alternativa al código \"Sexo Biológico\" de FHIR, mantenida para compatibilidad retroactiva."
* valueCodeableConcept ^binding.extension.url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"


Extension:   NombreComercial
Id:          NombreComercial
Title:       "Nombre Comercial Fármaco"
Description: "Nombre comercial del fármaco prescrito"
Context: Medication
* value[x] only string
* value[x] ^short = "Nombre Comercial"
* url 1..1 MS
* valueString 1..1 MS


Extension:   Nacionalidad
Parent:      $nacionality
Id:          Nacionalidad
Title:       "Código de Nacionalidad"
Description: "Esta extensión incluye códigos de nacionalidades de los pacientes"
Context: Patient
* extension[code] MS
  * ^short = "Código de la Nacionalidad"
  * value[x] only CodeableConcept
  * value[x] ^short = "Código de la Nacionalidad"
  * valueCodeableConcept from PaisesVS (example)

* extension[period] 
  * ^short = "Período de vigencia de la nacionalidad"
  * value[x] only Period
  * value[x] ^short = "Período de vigencia de la nacionalidad"
  

// Extension:   NacionalidadProfesional
// Id:          nacionalidad-profesional
// Title:       "Código de Nacionalidad"
// Description: "Esta extensión incluye códigos de nacionalidades de los profesionales de salud"
// Context: Practitioner
// * extension contains code 0..1 and period 0..1
// * extension[code] MS
//   * value[x] only CodeableConcept
//   * value[x] ^short = "Código de la Nacionalidad"
//   * valueCodeableConcept from PaisesVS (example)
// * extension[period] MS
//   * value[x] only Period
//   * value[x] ^short = "Período de vigencia de la nacionalidad"

Extension:   PaisDireccion
Id:          CodigoPaises
Title:       "Código de Países"
Description: "Esta extensión incluye códigos de países"
Context: DomainResource, Extension, Address.country, CodeableConcept, Identifier.type
* value[x] only CodeableConcept
* value[x] ^short = "Código del País"
//* url 1..1 MS
* valueCodeableConcept from CodPais (preferred)
* valueCodeableConcept.coding 0..1 MS
  * code 0..1 MS
  * system 0..1 MS
  * display 0..1 MS

//* valueCodeableConcept.coding.system from CodPaises (extensible)

/* 		Extension 		*/
/*	Comunas Chile	*/
Extension:   ComunasCl
Id:          ComunasCl
Title:       "Códigos para Comunas en Chile"
Description: "Esta extensión que permite codificar las Comunas en Chile en el campo de Dirección"
Context: Address.city
* value[x] only CodeableConcept
* value[x] ^short = "Código de Comunas"
* url 1..1 MS
* valueCodeableConcept from ComunasVS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS


/* 		Extension 		*/
/*	Provincias Chile	*/
Extension:   ProvinciasCl
Id:          ProvinciasCl
Title:       "Códigos para Provincias en Chile"
Description: "Esta extensión que permite codificar las Provincias en Chile en el campo de Dirección"
Context: Address.district
* value[x] only CodeableConcept
* value[x] ^short = "Código de Provincias"
* url 1..1 MS
* valueCodeableConcept from ProvinciasVS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS
//* valueCodeableConcept.coding.system  from CSCodProvinciasCL (extensible)

/* 		Extension 		*/
/*	Regiones Chile	*/
Extension:   RegionesCl
Id:          RegionesCl
Title:       "Códigos para Regiones en Chile"
Description: "Esta extensión que permite codificar las Regiones en Chile en el campo de Dirección"
Context: Address.state
* value[x] only CodeableConcept
* value[x] ^short = "Código de Provincias"
* url 1..1 MS
* valueCodeableConcept from RegionesVS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * code 
  * system 0..1 MS
  * display 0..1 MS
//* valueCodeableConcept.coding.system  from CSCodRegionCL (required)

Extension:   IdentificacionContactoCl
Id:          IdContacto
Title:       "Identificación del Contacto de un Paciente"
Description: "Identificación de contacto de paciente en especial para casos en los cuales este actúa como Tutor Legal"
Context: Patient.contact
* extension contains
	tutId 1..* MS and
	docProc 0..1 MS
* url MS

//* extension[tutId].url = "tutId"
* extension[tutId] ^short = "Identificación del Tutor"
* extension[tutId] ^definition = "Identificación del Tutor"
* extension[tutId] 1..1 MS
* extension[tutId].url MS
* extension[tutId].value[x] only Identifier
* extension[tutId].valueIdentifier 1..1 MS
* extension[tutId].valueIdentifier.type 1..1 MS

* extension[tutId].valueIdentifier.system 0..1 MS
* extension[tutId].valueIdentifier.value 1..1 MS

//* extension[docProc].url = "docProc"
* extension[docProc] ^short = "País de procedencia del documento"
* extension[docProc].value[x] only CodeableConcept
* extension[docProc].url MS
* extension[docProc].valueCodeableConcept from PaisesVS (preferred)
* extension[docProc].valueCodeableConcept 1..1 MS
* extension[docProc].valueCodeableConcept.coding 1..1 MS

/*
Extension: TiposEncuentroRemotoCL
Id: TiposEncuentro
Title: "Código de tipos de encuentro remoto"
Description: "Esta extensión incluye códigos de los tipos de encuentro que se realizan de forma remota"
Context: EncounterCL.type
* valueCode from VSTiposEncuentroCL (extensible)

Extension: TiposdeservicioCL
Id: TiposServicio
Title: "Código de los tipos de servicio que se atiende"
Description: "Esta extensión incluye códigos de servicios que se entregan de forma remota"
Context: EncounterCL.serviceType
* value[x] only code
* value[x] ^short = "Códigos de Tipos de Servicios de Salud"
* valueCode from VSTiposServicio (extensible)

Extension: EspecialidadCL
Id: VSEspecialidades
Title: "Especialidad del médico principal"
Description: "Esta extensión incluye los códigos de las especialidades que puede tener el medico principal"
Context: EncounterCL.participant

// * ^context.type = #element
// * ^context.expression = "EncounterCL.participant"
* valueCoding from VSEspecialidades (extensible)

Extension: ContactopartCL
Id: ContactoParticipantes
Title: "Contacto de los participantes secundarios del encuentro"
Description: "Esta extensión incluye los códigos de los medios de contacto que se tiene para los participantes secundarios"
Context: EncounterCL.participant
// * ^context[0].type = #element
// * ^context[=].expression = "EncounterCL.participant"

* value[x] only ContactPoint
* value[x] ^short = "Códigos de contactos"
* valueContactPoint.system from VSContactosec 

Extension: RazonNOTatencionCL
Id: RazonNOrealizarse
Title: "Código de las razones por la cual no se pudo realizar la atención"
Description: "Esta extensión incluye códigos de razones por la cuales no pudo llevarse a cabo el encuentro remoto"
Context: EncounterCL.reasonCode, Immunization.statusReason
* value[x] only code
* value[x] ^short = "Códigos de razones por la cual el encuentro remoto no se pudo realizar"
* valueCode from VSRazonNOT (extensible)

Extension: NotasCL
Id: NotasEncuentro
Title: "Notas realizadas en un encuentro por Comité"
Description: "Esta extensión incluye los códigos de los medios de contacto que se tiene para los participantes secundarios"
Context: EncounterCL
* value[x] only string
* value[x] ^short = "Notas realizadas en un encuentro por Comité"

Extension: ObservacionesNotas
Id: ObservacionesDiagnostico
Title: "Observaciones o comentarios simples respecto a un diagnóstico"
Description: "Esta extensión sirve para insertar comentarios acerca a un diagnóstico médico realizado en un encuentro remoto"
Context: EncounterCL.diagnosis
* value[x] only string 
*/
// Extension: TiposVacunaCL
// Id: TiposVacunaRNI
// Title: "Código de tipos de Vacunas en Chile"
// Description: "Esta extensión incluye códigos de los tipos de vacunas que existe en el Registro Nacional de Inmunizaciones RNI"
// Context: Immunization.vaccineCode

// * ^context.type = #element
// * ^context.expression = "Immunization.vaccineCode"
// * valueCode ^short = "Valor de la extensión"
// * valueCode from VSTiposVacunas (extensible)

// Extension:  NombreCampanaCL
// Id: NombreCampana
// Title: "Nombre de la Campaña de vacunación establecida por el RNI (Registro Nacional de Inmunizaciones)"
// Description: "Esta extensión incluye los nombres de las distintas Campañas que se realizan y estan registradas en el RNI"
// Context: Immunization

// * ^context.type = #element
// * ^context.expression = "Immunization"
// * valueCoding ^short = "Valor de la extensión"
// * valueCoding from VSNombreCampana (extensible)

// Extension: RazonNOTinmunizacionCL
// Id: RazonNOrealizarseInm
// Title: "Razones por las cuales no se pudo realizar la inmunización"
// Description: "Esta extensión incluye las razones por la cuales no pudo llevarse a cabo la inmunización" 
// Context: Immunization.statusReason
// * value[x] only code
// * value[x] ^short = "Códigos de razones por la cual la inmunización no se pudo realizar"
// * valueCode from VSRazonNOTinm (extensible)

// Extension: ServicioSaludCL
// Id: ServicioSalud 
// Title: "Sistema Nacional de Servicios de Salud"
// Description: "Esta extensión incluye los códigos de los Servicios de Salud que existen en el país"
// Context: Immunization.location

// * ^context.type = #element
// * ^context.expression = "Immunization.location"
// * valueCoding ^short = "Servicios de Salud de Chile"
// * valueCoding from VSCodigosServiciosSalud (extensible)

Extension: SegundoApellido
Id: SegundoApellido
Title: "Segundo Apellido"
Description: "Segundo Apellido"
Context: HumanName.family
* value[x] only string
* valueString ^short = "Segundo apellido de la persona"

Extension: ClaseVacuna
Id: ClaseVacuna
Title: "Clase de Vacuna"
Description: "Corresponde a un Id creado por el equipo de gestión de datos del Deis"
Context: Immunization

* value[x] only Coding
* valueCoding ^short = "Código clase de Vacuna"

* valueCoding from VSClaseVacuna (preferred)


Extension: Campana
Id: Campana
Title: "Nombre Campaña de Vacunación"
Description: "Nombre Campaña de Vacunación"
Context: Immunization
* value[x] only string
* valueString ^short = "Nombre campaña inmunización"

Extension: Dosis
Id: Dosis
Title: "Dosis Administrada"
Description: "Definición de la dosis administrada"
Context: Immunization
* value[x] only string
* valueString ^short = "Dosis administrada"

Extension: ProxFecha
Id: ProxFecha
Title: "Proxima fecha de vacunación"
Description: "Fecha de la próxima fecha de vacunación si corresponde"
Context: Immunization
* value[x] only date
* valueDate ^short = "Fecha de próxima vacunación"