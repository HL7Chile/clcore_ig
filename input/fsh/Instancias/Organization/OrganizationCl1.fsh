Instance : OrganizacionClEjemplo1
Title : "Ejemplo Organización Prestadora de Salud"
Description: "CESFAM Rio Bueno (Ficticio) con ID DEIS no real"
InstanceOf : CoreOrganizacionCl
Usage : #example

* active = true
* identifier
  * system = "https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes/resource/2c44d782-3365-44e3-aefb-2c8b8363a1bc"
  * value = "111372"

* name = "Centro de Salud Familiar Arauco"	
* alias = "Cesfam Arauco"
	
* address = AddressOrganization
	
Instance: AddressOrganization
InstanceOf: ClAddress
Usage: #inline

* line[0] = "Sepúlveda Leyton 3288"
* city = "Santiago Centro"
* city.extension = ComunasClOrganization
* district = "Santiago"
* district.extension = ProvinciasClOrganization
* state = "Metropolitana de Santiago"
* state.extension = RegionesClOrganization
* country = "Chile"
* country.extension = CodigoPaisesOrganization

Instance: ComunasClOrganization
InstanceOf: ComunasCl
Usage: #inline

* valueCodeableConcept = CSCodComunasCL#13101 "Santiago Centro"

Instance: ProvinciasClOrganization
InstanceOf: ProvinciasCl
Usage: #inline

* valueCodeableConcept = CSCodProvinciasCL#131 "Santiago"

Instance: RegionesClOrganization
InstanceOf: RegionesCl
Usage: #inline

* valueCodeableConcept = CSCodRegionCL#13 "Metropolitana de Santiago"

Instance: CodigoPaisesOrganization
InstanceOf: CodigoPaises
Usage: #inline

* valueCodeableConcept = CSCodPaises#152 "Chile"