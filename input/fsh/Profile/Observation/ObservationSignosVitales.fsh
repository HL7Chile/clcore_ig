Profile:     CLCoreSignosVitalePerfil 
Parent:      $vitalsigns
Id:          cl-core-signos-vitales
Title:       "Perfil de Signos Vitales CL Core"
Description: """
Este perfil está basado en el [FHIR Vital Signs Profile](https://hl7.org/fhir/R4/observation-vitalsigns.html) y definiendo *indicaciones* *adiccionales* en el recurso Observation que representa las observaciones de signos vitales. Esto especifica cuales son los elementos principales, extensiones, vocabularios y set de valores que **DEBE** estar presentes en el recurso y restricciones. Proveendo un piso para estandarizar los desarrollos para casos de uso especificos fomentando la interoperabilidad y su adopción. 
"""
* status 1..1 MS
* category ^short = "Clasificación del tipo de Observación"
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[1].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.rules = #open
* category ^slicing.ordered = false
* category contains CatSV 1..1 MS
* category[CatSV]
  * coding
    * system = "http://terminology.hl7.org/CodeSystem/observation-category"
    * code = #vital-signs
* code 1..1 MS
* code from VSSignosVitales (extensible)
  * ^binding.description = "Códigos de identificación simple para el nombre de una observación"	