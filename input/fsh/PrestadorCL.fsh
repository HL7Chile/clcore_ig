Profile:        PrestadorCL
Parent:         Practitioner
Id:             CorePrestadorCl
Title:          "CL Prestador"
Description:    "Este Perfil fue creado para cubrir la descripción de un Prestador a nivel Nacional"


* extension contains IdentidadDeGenero named IdentidadDeGenero 0..1 MS
* extension ^definition = "Extensión para almacenar la identidad de genero de cada paciente"

* extension contains SexoBiologico named SexoBiologico 0..1 MS
* extension ^definition = "Extensión para almacenar el sexo biologico del paciente"

* identifier  MS

* identifier 1..* 
* identifier ^short = "Identificación de los prestadores"
* identifier ^definition = "El identificador oficial para cada prestador en Chile es el Registro Nacional de Prestadores Institucionales (NRPI). Ademas existe el identificador nacional chileno, el Registro Único Nacional (RUN). Y por ultimo puede ingresar un numero de pasaporte y un ID extra para cada prestador."

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier contains run 0..1 MS and rnpi 0..1 MS and pasaporte 0..1 MS and otro 0..1 MS
* identifier.type from VSIdentificadores

* identifier[run]
  * use 1..1 MS
  * system 0..1 MS
  * value 1..1 MS
* identifier[run] ^short = "Identificador destinado a almacenar el número de RUN" 
* identifier[run] ^definition = "Corresponde al identificador (RUN) otorgado el Registro Civil de Chile"
//* identifier[run].use ^short = "Se define el uso de este identificador"
//* identifier[run].use ^definition = "Se definirá este uso siempre como \"official\" debido a que cualquier ID presentado para motivos de este perfil deb ser de este tipo"
//* identifier[run].use = #official
* identifier[run].system ^short = "endPoint que valida el RUN"
* identifier[run].system ^definition = "Define la url del endPoint a la cual apunta la API, para validar el RUN"
* identifier[run].system ^comment = "Se define el el endPoint al cual debe apuntar a la API, con el fin de validar que el numero de RUN ingresado exista y que sea correcto. Por momento se usará la url = \"http://api_run/run\""
* identifier[run].value ^short = "Número de RUN"
* identifier[run].value ^definition = "Valor del RUN en la Cédula de Identidad entregada por el Registro Civil, en formato sin puntos y con guión para diferencia el dígito verificador"
//* identifier[run].system = "http://registrocivil.cl/run"
* identifier[run].type.coding.code = #1

* identifier[rnpi]
  * use 1..1 MS
  * system 0..1 MS
  * value 1..1 MS
* identifier[rnpi] ^short = "Valor de RNPI" 
* identifier[rnpi] ^definition = "Valor de RNPI"
* identifier[rnpi].system ^short = "endPoint para validar los códigos"
* identifier[rnpi].system ^definition = "Define la url del endPoint a la cual apunta la API"
* identifier[rnpi].system ^comment = "Se define el endPoint al cual debe apuntar a la API"
* identifier[rnpi].value ^short = "Valor identificador"
* identifier[rnpi].value ^definition = "Valor identificador"
//* identifier[rnpi].system = "http://rnpi.superdesalud.gob.cl"
* identifier[rnpi].type.coding.code = #2

* identifier[pasaporte]
  * use 1..1 MS
  * system 0..1 MS
  * value 1..1 MS
* identifier[pasaporte] ^short = "Valor de PASAPORTE" 
* identifier[pasaporte] ^definition = "Valor de PASAPORTE"
* identifier[pasaporte].system ^short = "endPoint para validar los códigos"
* identifier[pasaporte].system ^definition = "Define la url del endPoint a la cual apunta la API"
* identifier[pasaporte].system ^comment = "Se define el endPoint al cual debe apuntar a la API"
* identifier[pasaporte].value ^short = "Valor identificador"
* identifier[pasaporte].value ^definition = "Valor identificador"
//* identifier[pasaporte].system = "http://pasaporte.com/validate"
* identifier[pasaporte].type.coding.code = #3

* identifier[otro]
  * use 1..1 MS
  * system 0..1 MS
  * value 1..1 MS
* identifier[otro] ^short = "Para otros identificadores que el notificador estime conveniente" 
* identifier[otro] ^definition = "Para otros identificadores que el notificador estime conveniente"
* identifier[otro].system ^short = "endPoint para validar los códigos"
* identifier[otro].system ^definition = "Define la url del endPoint a la cual apunta la API"
* identifier[otro].system ^comment = "Se define el endPoint al cual debe apuntar a la API"
* identifier[otro].value ^short = "Valor identificador"
* identifier[otro].value ^definition = "Valor identificador"
* identifier[otro].type.coding.code = #4

* active MS


* name and name.use and name.family and name.given  MS 

* name.use ^short = "Uso del nombre del prestador"
* name.use ^definition = "Este es el uso que se le da al nombre del Prestador considerando que puede ser nombre oficial, temporal, seudonimo, entre otros, Pero por motivos legales este uso es Oficial "
* name.use = #official  
* name.family ^short = "Primer Apellido"
* name.family ^definition = "Se debe ingresar el primer apellido, segun indica su identificacion personal"
* name.family 1..1
* name.family.extension contains SegundoApellido named segundoApellido 0..1 MS
* name.family.extension ^short = "Extensión para el segundo apellido"



//* name.family.extension contains http://hl7.org/fhir/StructureDefinition/humanname-mothers-family named mothers-family 0..1 MS
//* name.family.extension ^short = "Extensión para apellido materno"
//* name.family.extension contains http://hl7.org/fhir/StructureDefinition/humanname-fathers-family named father-family 0..1 MS
//* name.family.extension ^short = "Extensión para apellido paterno"
* name.given 1..
 
* telecom and gender and birthDate  MS
* telecom ^definition = "Contacto del prestador"
* telecom.system ^short = "Debe utilizar \"phone\" o \"email\"."
* telecom.system MS 

* telecom.use MS
* telecom.use ^short = "Uso del contacto descrito. Puede usar \"home | work | temp | old | mobile\""

* telecom.value MS

* gender 0..1
* gender ^short = "Sexo Registral (male | female | other | unknown (requerido))"
* gender ^definition = "Sexo de nacimiento registrado"

* birthDate 0..1
* birthDate ^short = "Fecha de nacimiento del Paciente. El formato debe ser YYYY-MM-DD"
* birthDate ^definition = "Fecha de nacimiento del Paciente. El formato debe ser YYYY-MM-DD (Ej: 1996-08-21)"

* address only Address or ClAddress
* address MS

* qualification MS
* qualification ^short = "Certificados, títulos y/o Especialidad(es) obtenidas por el Prestador"
* qualification ^definition = "Certificados, titulos y/o especialidades que el Prestador pueda validar"

* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "identifier.value"
* qualification ^slicing.rules = #open
* qualification ^slicing.description = "Debido a que los profesisonales de la salud pueden tener titulo y ademas poseer especialidades, es que se ha realizado un slice, con el fin de poder diferenciarlos. El de Certificados tiene identifier.value el valor cert y el slice de especialidad el valor esp"


* qualification contains Cert 0..* MS and Esp 0..* MS and SubEsp 0..* MS

* qualification[Cert] ^short = "Especificación de los Títulos o Certificados Profesionales que tiene el Prestador"
* qualification[Cert] ^definition = "Listado de Títulos o Cetificados Profesionales que tiene el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
* qualification[Cert].identifier 1..1 MS
* qualification[Cert].identifier.value 1..1 MS
* qualification[Cert].identifier.value = "cert"
* qualification[Cert].identifier.value ^short = "Valor del tipo de calificación, en este caso cert"
* qualification[Cert].identifier.value ^definition = "Valor del tipo de calificación, en este caso cert"
* qualification[Cert].code MS
  * coding 0..1 MS
    * code 1..1 MS
    * system 0..1 MS
    * display 1..1 MS
  * text 0..1 MS
* qualification[Cert].code.text ^short = "Nombre del titulo entregado por la Super Intendencia de Salud"
* qualification[Cert].code.coding.system ^short = "El sistema sobre el cual se verificarán los titulos o certificados de los Prestadores"
* qualification[Cert].code.coding.system ^definition = "La url sobre la cual se encuentra el endPoint para el acceso a  los códigos de titulos y/o certificados de prestadores. El perfil especifica que se debe usar la siguiente url:  \"https://api.minsal.cl/v1/catalogos/profesiones/\""
* qualification[Cert].code.coding.display ^short = "Nombre del titulo o certificado agregado"
* qualification[Cert].code.coding.display ^definition = "Nombre del titulo o certificado agregado. Agregar un poco mas de informacion acerca del item que se esta agregando."
//* qualification[Cert].code.coding.code MS
* qualification[Cert].code.coding.code ^short = "Nombre del titulo o certificado agregado"
* qualification[Cert].code.coding.code ^definition = "Nombre del titulo o certificado agregado. Agregar un poco mas de informacion acerca del item que se esta agregando."
* qualification[Cert].issuer MS
* qualification[Cert].issuer.display MS
* qualification[Cert].issuer ^short = "Organizacion que entrega el certificado o título"
* qualification[Cert].issuer.display ^short = "Nombre de la organizacion que entrega certificado o título"
* qualification[Cert].issuer.display ^definition = "Nombre de la organizacion que entrega el certificado o título válido para ejercer como prestdor. En este elemento solo se puede agregar texto libre"


//especialidades
* qualification[Esp] ^short = "Especificación de la o las  especialidades que posea el prestador"
* qualification[Esp] ^definition = "Listado de especialidades que posee el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
* qualification[Esp].identifier 1..1 MS
* qualification[Esp].identifier.value 1..1 MS
* qualification[Esp].identifier.value = "esp"
* qualification[Esp].identifier.value ^short = "Valor del tipo de calificación, en este caso esp"
* qualification[Esp].identifier.value ^definition = "Valor del tipo de calificación, en este caso esp"
* qualification[Esp].code MS
  * coding 0..1 MS
    * code 1..1 MS
    * system 0..1 MS
    * display 1..1 MS
  * text 0..1 MS
* qualification[Esp].code.text ^short = "Nombre de la especialidad entregada por la Super Intendencia de Salud"
* qualification[Esp].code.coding.system MS
* qualification[Esp].code.coding.system ^short = "El sistema sobre el cual se verificarán las especialidades de los Prestadores"
* qualification[Esp].code.coding.system ^definition = "la url sobre la cual se encuentra el endPoint para el acceso a  los códigos de especialidades de prestadores. El perfil especifica  \"https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/\""
* qualification[Esp].code.text ^short = "Texto libre de la especialidad del profesional"
* qualification[Esp].code.coding.display ^short = "Nombre de la especialidad"
* qualification[Esp].code.coding.display ^definition = "Nombre la especialidad agregada. Agregar un poco mas de informacion acerca del item que se esta agregando."
* qualification[Esp].issuer MS 
* qualification[Esp].issuer.display MS
* qualification[Esp].issuer ^short = "Organizacion que entrega el certificado o título"
* qualification[Esp].issuer.display ^short = "Nombre de la organizacion que entrega certificado o título"
* qualification[Esp].issuer.display ^definition = "Nombre de la organizacion que entrega el certificado o título válido para ejercer como prestdor. En este elemento solo se puede agregar texto libre"

//subespecialidades
* qualification[SubEsp] ^short = "Especificación de la o las subespecialidades que posea el prestador"
* qualification[SubEsp] ^definition = "Listado de subespecialidades que posee el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
* qualification[SubEsp].identifier 1..1 MS
* qualification[SubEsp].identifier.value 1..1 MS
* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].identifier.value ^short = "Valor del tipo de calificación, en este caso subesp"
* qualification[SubEsp].identifier.value ^definition = "Valor del tipo de calificación, en este caso subesp"
* qualification[SubEsp].code MS
  * coding 0..1 MS
    * code 1..1 MS
    * system 0..1 MS
    * display 1..1 MS
  * text 0..1 MS
* qualification[SubEsp].code.text ^short = "Nombre del titulo entregado por la Super Intendencia de Salud"
* qualification[SubEsp].code.coding.system ^short = "El sistema sobre el cual se verificarán las especialidades de los Prestadores"
* qualification[SubEsp].code.coding.system ^definition = "la url sobre la cual se encuentra el endPoint para el acceso a  los códigos de especialidades de prestadores."
* qualification[SubEsp].code.text ^short = "Texto libre de la subespecialidad del profesional"
* qualification[SubEsp].code.coding.display ^short = "Nombre de la subespecialidad"
* qualification[SubEsp].code.coding.display ^definition = "Nombre la subespecialidad agregada. Agregar un poco mas de informacion acerca del item que se esta agregando."
* qualification[SubEsp].issuer MS
* qualification[SubEsp].issuer.display MS
* qualification[SubEsp].issuer ^short = "Organizacion que entrega el certificado o título"
* qualification[SubEsp].issuer.display ^short = "Nombre de la organizacion que entrega certificado o título"
* qualification[SubEsp].issuer.display ^definition = "Nombre de la organizacion que entrega el certificado o título válido para ejercer como prestdor. En este elemento solo se puede agregar texto libre"
