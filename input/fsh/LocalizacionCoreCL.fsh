Profile:        LocalizacionCL
Parent:         Location
Id:             CoreLocalizacionCl
Title:          "CL Localización"
Description:    "Este perfil determina la ubicación especifica para un evento, objeto o Infraestructura específica. Este perfil permite vinlcular la localización especifica con una organización o espacio físico específico"

* ^version = "1.9.0"
* ^status = #active
* ^publisher = "HL7 Chile"
//Identifier
* identifier and identifier.system and identifier.value MS 
* identifier 0..* 
  * ^short = "Corresponde a un numero de identificación de la locación indicada"
  * ^definition = "Es el número de identificación la localización de Recinto, Edificio, ubicación, etc"


* status  MS
* status from http://hl7.org/fhir/ValueSet/location-status
  * ^binding.description = "Códigos del estado de la localización de HL7 FHIR" 
  * ^short = "active | suspended | inactive"
  * ^definition = "Determina el estado de la localización conforme a los códigos definidos por el estándar. Existen los estados de \"activo | suspendido | inactivo\""

* name and alias MS

  * ^short = "Nombre oficial de la localizacion"
  * ^definition = "Nombre de la localizacion, ya sea del edificio, del la zona gegráfica como un parque o de un sector específico llamado de cierta forma" 

* alias ^short = "Nombre de fantasía de la localización"
* alias ^definition = "Nombre no oficial del sector, que puede ser identificado de manera polular para contar con una referencia de la comunidad"

* type and type.coding.code MS
* type ^short = "Tipo de la localización, según V3 Value SetServiceDeliveryLocationRoleType (Extensible)"
* type ^definition = "Indica el tipo o función que se ejecuta en la locacalización"


* telecom MS
* telecom ^short = "Detalles de contacto de la ubicación"
* telecom ^definition = "Detalles de contacto para la ubicación comunmente el o los mas usados (Ej: Teléfono fijo, móvil, email, etc.)"


* address MS
* address only Address or ClAddress

* position 0..1
* position and position.longitude and position.latitude MS
* position ^short = "Geoposisionamiento del objeto, infraestructura o evento en longitud y latitud"
* position ^definition = "La localización geográfica absoluta de la Ubicación, expresada utilizando el datum WGS84 (Este es el mismo sistema de coordenadas utilizado en KML)"
* position.longitude ^short = "Longitud valor decimal en WGS84 datum (World Geodetic System 1984)"
* position.longitude ^definition = "Longitud. El dominio del valor y la interpretación son los mismos que para el texto del elemento longitud en KML"
* position.latitude ^short = "Latitud valor decimal en formato WGS84 datum (World Geodetic System 1984)"
* position.latitude ^definition = "Latitud. El dominio del valor y la interpretación son los mismos que para el texto del elemento latitud en KML"


* managingOrganization  MS
* managingOrganization ^short = "Organización a la cual la ubicación pertenece, si es el caso. Esta relación se hace en base a una referencia a una Orgaización"
* managingOrganization ^definition = "La organización responsable de la localización."
* managingOrganization ^comment = "Se puede usar para indicar la organzación jerárquica superior. Siempre debe existir una Organizacion jerarquicamente sobre la localizacion y en caso de no existir esta jerquia, se debe crear la organizacion, con los mismos datos del location."


* hoursOfOperation MS
* hoursOfOperation ^short = "Horario de atención de la localizacion."
* hoursOfOperation ^definition = "¿Qué días/horas de la semana suele estar abierto este local?."

* availabilityExceptions MS
* availabilityExceptions ^short = "Descripción de Excepciones de ubicación habilitada."
* availabilityExceptions ^definition = "Una descripción de los casos en los que la apertura de los lugares es diferente a la normal, por ejemplo, la disponibilidad de los días festivos. Una descripción sucinta de todas las posibles excepciones a la disponibilidad normal del centro, tal y como se detalla en el horario de apertura."


