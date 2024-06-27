Instance : EjemploPrestadorCL
Title : "Ejemplo de Recurso Prestador como base para un Core Nacional"
Description: "Ejemplo de un Prestador no Real con identificadores en Systemas con API\"s no disponibles"
InstanceOf : CorePrestadorCl

//Identificación por Cédula Chilena
* identifier[run]
  * use = #official
  * value = "8336277-3"
  * type = CSTipoIdentificador#01 "RUN"

//registro de prestador activo
* active = true

//Nombre Prestador
* name
  * use = #official
  * family = "Silva"
  * family.extension[segundoApellido] = SegundoApellidoPrestadorCL
  * given = "Johanna"
  * given[1] = "Rosa"

//dos contactos, un celular y un email

* telecom
  * system = #phone
  * use = #mobile
  * value = "9345666"

* telecom[1]
  * system = #email
  * use = #work
  * value = "DraSilva@mimail.com"

//sexo registrado al nacer y fecha de nacimiento
* gender = #female
* birthDate = "1974-08-12"

// Una sola dirección

* address = AddressPrestadorCL

* qualification[TituloProfesional]
  * identifier
    * value = "cert"
  * code 
    * text = "Profesional Médico Cirujano"

* qualification[EspecialidadMedica]
  * identifier
    * value = "esp"
  * code 
    * text = "Oncología"

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

Instance: AddressPrestadorCL
InstanceOf: ClAddress
Usage: #inline

* use = #home
* line[0] = "Av Los Chirimoyos, 32, casa 4"
* city.extension = ComunasClPrestadorCL
* district.extension = ProvinciasClPrestadorCL
* state.extension = RegionesClPrestadorCL
* country.extension = CodigoPaisesPrestadorCL

Instance: ComunasClPrestadorCL
InstanceOf: ComunasCl
Usage: #inline

* valueCodeableConcept = CSCodComunasCL#05602 "Algarrobo"

Instance: ProvinciasClPrestadorCL
InstanceOf: ProvinciasCl
Usage: #inline

* valueCodeableConcept = CSCodProvinciasCL#056 "San Antonio"

Instance: RegionesClPrestadorCL
InstanceOf: RegionesCl
Usage: #inline

* valueCodeableConcept = CSCodRegionCL#05 "Valparaíso"

Instance: CodigoPaisesPrestadorCL
InstanceOf: CodigoPaises
Usage: #inline

* valueCodeableConcept = CSCodPaises#152 "Chile"

Instance: SegundoApellidoPrestadorCL
InstanceOf: SegundoApellido
Usage: #inline

* valueString = "Reyes"
