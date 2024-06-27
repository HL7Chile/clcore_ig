Instance : EjemploPrestadorCL2
Title : "Ejemplo de Recurso Prestador 2 como base para un Core Nacional"
Description: "Ejemplo de un Prestador no Real con identificadores en Systemas con APIs \"no disponibles\""
InstanceOf : CorePrestadorCl

//Identificación por Cédula Chilena
* identifier[run]
  * use = #official
  * value = "17435678-2"
  * type = CSTipoIdentificador#01 "RUN"

* identifier[rnpi]
  * use = #official
  * value = "43212"
  * type = CSTipoIdentificador#13 "RNPI"

//registro de prestador activo
* active = true

//Nombre Prestador
* name
  * use = #official
  * family = "Soto"
  * family.extension[segundoApellido] = SegundoApellidoPrestadorCL2
  * given = "María"
  * given[1] = "Luisa"

//dos contactos, un celular y un email

* telecom
  * system = #phone
  * use = #mobile
  * value = "989789698"

* telecom[1]
  * system = #email
  * use = #work
  * value = "DraSoto@mimail.com"

//sexo registrado al nacer y fecha de nacimiento
* gender = #female
* birthDate = "1988-09-01"

// Una sola dirección

* address = AddressPrestadorCL2

* qualification[TituloProfesional]
  * identifier
    * value = "cert"
  * code 
    * text = "Profesional Médico Cirujano"

* qualification[EspecialidadMedica]
  * identifier
    * value = "esp"
  * code 
    * text = "Medicina Interna"

* qualification[Subespecialidad]
  * identifier
    * value = "subesp"
  * code 
    * text = "Medicina Familiar"

//un titulo y una especialidad
/*
* qualification[Cert].identifier.value = "cert"
* qualification[Cert].code.coding.system = "https://api.minsal.cl/v1/catalogos/profesiones/"
* qualification[Cert].code.coding.code = #2112  // endPoint definido por perfil
* qualification[Cert].code.coding.display =  //codigo de título profesional Universitario
* qualification[Cert].code.text = "Certificado(s)"

* qualification[Esp][0].identifier.value = "esp"
* qualification[Esp][0].code.coding.system = "https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/"
* qualification[Esp][0].code.coding.code = #122  // endPoint definido por perfil
* qualification[Esp][0].code.coding.display = "Cardiólogia"
* qualification[Esp][0].code.text = "Especialidad(es)" 

* qualification[Esp][+].identifier.value = "esp"
* qualification[Esp][=].code.coding.system = "https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/"
* qualification[Esp][=].code.coding.code = #1234  // endPoint definido por perfil
* qualification[Esp][=].code.coding.display = "Medicina interna"
* qualification[Esp][=].code.text = "Especialidad(es)" 
*/

Instance: AddressPrestadorCL2
InstanceOf: ClAddress
Usage: #inline

* use = #home
* line[0] = "Av la Merced, 662, depto 814"
* city.extension = ComunasClPrestadorCL2
* district.extension = ProvinciasClPrestadorCL2
* state.extension = RegionesClPrestadorCL2
* country.extension = CodigoPaisesPrestadorCL2

Instance: ComunasClPrestadorCL2
InstanceOf: ComunasCl
Usage: #inline

* valueCodeableConcept = CSCodComunasCL#13101 "Santiago Centro"

Instance: ProvinciasClPrestadorCL2
InstanceOf: ProvinciasCl
Usage: #inline

* valueCodeableConcept = CSCodProvinciasCL#131 "Santiago"

Instance: RegionesClPrestadorCL2
InstanceOf: RegionesCl
Usage: #inline

* valueCodeableConcept = CSCodRegionCL#13 "Metropolitana de Santiago"

Instance: CodigoPaisesPrestadorCL2
InstanceOf: CodigoPaises
Usage: #inline

* valueCodeableConcept = CSCodPaises#152 "Chile"

Instance: SegundoApellidoPrestadorCL2
InstanceOf: SegundoApellido
Usage: #inline

* valueString = "Gonzalez"
