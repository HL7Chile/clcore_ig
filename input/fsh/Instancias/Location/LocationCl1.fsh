Instance : LocalizacionEjemploCL1
Title : "Ejemplo Localización Farmacia"
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

* address = AddressLocation

* position.longitude = 42.2565
* position.latitude = -71.550261

* hoursOfOperation.daysOfWeek = #mon
* hoursOfOperation.daysOfWeek = #tue
* hoursOfOperation.daysOfWeek = #wed
* hoursOfOperation.daysOfWeek = #thu
* hoursOfOperation.daysOfWeek = #fri
* hoursOfOperation.daysOfWeek = #sat
* hoursOfOperation.allDay = false
* hoursOfOperation.openingTime = 09:00:00
* hoursOfOperation.openingTime = 19:00:00

Instance: AddressLocation
InstanceOf: ClAddress
Usage: #inline
* line = "Calle 10 Norte, 1240, Viña del Mar"
* city = "Viña del Mar"
* city.extension = ComunasClLocation
* district = "Valparaíso"
* district.extension = ProvinciasClLocation
* state = "Valparaíso"
* state.extension = RegionesClLocation
* country = "Chile"
* country.extension = CodigoPaisesLocation

Instance: ComunasClLocation
InstanceOf: ComunasCl
Usage: #inline

* valueCodeableConcept = CSCodComunasCL#05109 "Viña del Mar"

Instance: ProvinciasClLocation
InstanceOf: ProvinciasCl
Usage: #inline

* valueCodeableConcept = CSCodProvinciasCL#051 "Valparaíso"

Instance: RegionesClLocation
InstanceOf: RegionesCl
Usage: #inline

* valueCodeableConcept = CSCodRegionCL#05 "Valparaíso"

Instance: CodigoPaisesLocation
InstanceOf: CodigoPaises
Usage: #inline

* valueCodeableConcept = CSCodPaises#152 "Chile"