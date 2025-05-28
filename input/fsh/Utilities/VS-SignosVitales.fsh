ValueSet:       VSSignosVitales
Id:             cl-core-vs-signos-vitales
Title:          "Set de Valores Signos Vitales"
Description:    "Este set de valores LOINC utilizados para identificar los signos vitales"

* insert SetCopyrightLOINC

* ^language = #es
* ^experimental = false
//* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"


* include codes from system $loinc where CATEGORY = #LP30605-7