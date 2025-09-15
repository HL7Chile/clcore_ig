Profile:     CLCorePresionEnSangre
Parent:      CLCoreSignosVitalesPerfil 
Id:          cl-core-presion-en-sangre
Title:       "CL Presion En Sangre"
Description: """
El perfil de presión arterial de la CL Core hereda del perfil de CL Signos Vitales. Este perfil establece expectativas mínimas para que el recurso de observación registre, busque y obtenga observaciones de presión arterial diastólica y sistólica con códigos LOINC estándar y unidades de medida UCUM. Especifica qué elementos principales adicionales, extensiones, vocabularios y conjuntos de valores **DEBEN** estar presentes en el recurso y restringe cómo se usan los elementos. Proporcionar el espacio para el desarrollo de estándares para casos de uso específicos promueve la interoperabilidad y la adopción.
"""
* code 1..1 MS
* code = $loinc#85354-9

* component MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
  * ^slicing.description = "Diferentes componentes de la presión arterial"
  * ^slicing.ordered = false

* component contains
  sistolica 1..1 MS and
  diastolica 1..1 MS

* component[sistolica]
  * code 1..1 MS
  * code = $loinc#8480-6
  * value[x] 1..1 MS 
  * value[x] only Quantity
  * valueQuantity
    * value 1..1 MS
    * unit 1..1 MS
    * system 1..1 MS
      * ^short = "Sistema definido en el código de la unidad"
    * system = $ucum
    * code 1..1 MS
      * ^short = "Respuestas codificadas de las unidades UCUM comunes para el conjunto de valores de signos vitales."
    * code = #mm[Hg]

* component[diastolica]
  * code 1..1 MS
  * code = $loinc#8462-4
  * value[x] 1..1 MS 
  * value[x] only Quantity
  * valueQuantity
    * value 1..1 MS
    * unit 1..1 MS
    * system 1..1 MS
      * ^short = "Sistema definido en el código de la unidad"
    * system = $ucum
    * code 1..1 MS
      * ^short = "Respuestas codificadas de las unidades UCUM comunes para el conjunto de valores de signos vitales."
    * code = #mm[Hg]