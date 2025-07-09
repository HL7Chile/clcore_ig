Profile:        CLMuestra
Parent:         Specimen
Id:             cl-core-muestra
Title:          "CL Perfil de Muestra"
Description:    """
El **CL Perfil Muestra** hereda del recurso [Specimen](https://hl7.org/fhir/R4/specimen.html) de FHIR; consulte dicho recurso para conocer su alcance y definiciones de uso.
Este perfil establece las expectativas mínimas para el recurso Specimen con el fin de registrar, buscar y recuperar información sobre sustancias asociadas a un paciente que están siendo muestreadas o analizadas (como un hisopado nasofaríngeo, sangre total o suero).
Especifica qué elementos centrales, extensiones, vocabularios y conjuntos de valores DEBEN estar presentes y restringe cómo deben utilizarse dichos elementos.
Establecer esta base mínima para el desarrollo de estándares en casos de uso específicos promueve la interoperabilidad y la adopción.
"""

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* identifier MS

* subject 1..1 MS
  * ^short = "Paciente de la muestra" 
* subject only Reference(PacienteCl)

* receivedTime 1..1 MS
  * ^short = "Fecha de recepción de la muestra"
  
* type MS
  * ^short = "Tipo de material que forma el espécimen."
* type from VsTipoEspecimenCL (example)
// * type ^binding.extension[0].extension[0].url = "purpose"
// * type ^binding.extension[=].extension[=].valueCode = #candidate
// * type ^binding.extension[=].extension[+].url = "valueSet"
// * type ^binding.extension[=].extension[=].valueCanonical = Canonical(TipoEspecimenVS)
// * type ^binding.extension[=].extension[+].url = "documentation"
// * type ^binding.extension[=].extension[=].valueMarkdown = "Set de Valores de los Tipos de Especimen"
// * type ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* type ^binding.description = "Set de Valores para los tipos de muestras que puedan ser obtenidos"

* collection MS
  * ^short = "Datos de la colección de la muestra"
  * collector MS
    * ^short = "Profesional que recolecta la muestra"
  * collector only Reference(PrestadorCL or CoreRolClinicoCl)
  * collected[x] MS
  * collected[x] only dateTime
    * ^short = "Fecha y hora de la colección de la muestra"
  * bodySite MS
  * method MS
  * fastingStatus[x] from http://terminology.hl7.org/ValueSet/v2-0916|2.0.0 (extensible)

* note 0..* MS
  * ^short = "Nota de texto libre para describir la muestra, por ejemplo el detalle de topografico"
  * text MS 
    * ^short = "Nota de texto libre"
