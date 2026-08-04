
Instance : PacienteCL
Title : "Ejemplo de Recurso Paciente Nacional"
Description: "Paciente ficticio nacional CI Chilena, sin sistema de validación \"http://regcivil.cl/Validacion/RUN\" ficticio , cuyo nombre se decribe mediante el oficial y uno social. La dirección tampoco es Real"
InstanceOf : CorePacienteCl
Usage : #example

* extension[IdentidadDeGenero] = IdentidadDeGeneroPacienteCl
* extension[SexoBiologico] = SexoBiologicoPacienteCl
* extension[nacionalidad] = NacionalidadPacienteCl
//Identificación por Cédula Chilena
/* identifier.use = #official    //obligado
* identifier.type.extension[PaisEmisor] = PaisEmisionDoc
* identifier.type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-pais-emision-cs"
* identifier.type.coding.code = #NNCHL
* identifier.type.coding.display = "Chile"
*/
//* identifier.system = "http://regcivil.cl/Validacion/RUN"
//* identifier.value = "15.236.327-k"

//registro de paciente activo
* active = true

//Nombre Oficial
* name[NombreOficial].use = #official
* name[NombreOficial].family = "Rosales"
* name[NombreOficial].family.extension[segundoApellido] = SegundoApellidoPacienteCL
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

* address = AddressPacienteCL

* contact.extension[IdContacto] = IdentificacionContactoPacienteCL
* contact.relationship = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact.name.use = #official
* contact.name.family = "Calleja"
* contact.name.family.extension[segundoApellido] = SegundoApellidoContactoPacienteCL
* contact.name.given[0] = "Juana"
* contact.name.given[+] = "Josefa"

* communication.language.coding = urn:ietf:bcp:47#es-CL "Español (Chile)"

* generalPractitioner = Reference(OrganizacionClEjemplo1)

Instance: PaisEmisionDocumentoPacienteCL
InstanceOf: CodigoPaises
Usage: #inline

* valueCodeableConcept = urn:iso:std:iso:3166#152 "Chile"

Instance: SegundoApellidoPacienteCL
InstanceOf: $segundoApellido
Usage: #inline

* valueString = "Bosh"

Instance: AddressPacienteCL
InstanceOf: $direccion
Usage: #inline

* use = #home
* line[0] = "Av Los Chirimoyos, 32, casa 4"
* city.extension[comunas] = ComunasClPacienteCL
* district.extension[provincias] = ProvinciasClPacienteCL
* state.extension[regiones] = RegionesClPacienteCL
* country.extension[paises] = CodigoPaisesPacienteCL

Instance: ComunasClPacienteCL
InstanceOf: $comunasExt
Usage: #inline

* valueCodeableConcept = CSComunasEIS#5602 "Algarrobo"

Instance: ProvinciasClPacienteCL
InstanceOf: $provinciasExt
Usage: #inline

* valueCodeableConcept = CSProvinciasEIS#56 "San antonio"

// NOTA: el ValueSet https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/eis-regiones-vs (paquete
// hl7.fhir.cl.minsal.eis#current) está mal vinculado río arriba: apunta al CodeSystem eis-PrevisiondeSalud-CS
// (Fonasa/Isapre) en lugar de un listado de regiones. Por eso se mantiene el extension local RegionesCl aquí;
// no es posible satisfacer el slice oficial "eis-regiones" hasta que MINSAL corrija ese defecto en su IG.
Instance: RegionesClPacienteCL
InstanceOf: RegionesCl
Usage: #inline

* valueCodeableConcept = CSCodRegionCL#05 "Valparaíso"

Instance: CodigoPaisesPacienteCL
InstanceOf: $paisesExt
Usage: #inline

* valueCodeableConcept = CSPaisesEIS#152 "Chile"

Instance: IdentificacionContactoPacienteCL
InstanceOf: IdentificacionContactoCl
Usage: #inline

* extension[tutId].valueIdentifier
  * type = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI#NNCHL "Chile"
  * system = "https://www.chileatiende.gob.cl/instituciones/AK002"
  * value = "8987321-7"

* extension[docProc].valueCodeableConcept = urn:iso:std:iso:3166#152 "Chile"

Instance: SegundoApellidoContactoPacienteCL
InstanceOf: $segundoApellido
Usage: #inline

* valueString = "Morales"

Instance: IdentidadDeGeneroPacienteCl
InstanceOf: IdentidadDeGenero
Usage: #inline

* extension[value].valueCodeableConcept = CSIdentidadGeneroEIS#1 "Masculino"

Instance: NacionalidadPacienteCl
InstanceOf: Nacionalidad
Usage: #inline

* extension[code].valueCodeableConcept = CSNacionalidadEIS#152 "Chile"

Instance: SexoBiologicoPacienteCl
InstanceOf: SexoBiologico
Usage: #inline

* valueCodeableConcept = CSSexoBiologico#2 "Mujer"
