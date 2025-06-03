Profile:        CLCoreTemperaturaCorporal
Parent:         CLCoreSignosVitalesPerfil  
Id:             cl-core-temperatura-corporal
Title:          "CL Temperatura Corporal"
Description:    """
El Perfil de Observación de la Temperatura Corporal de la Core CL, hereda del Perfil de CL Signos Vitales. Este perfil establece expectativas mínimas para el recurso *Observation* para registrar, buscar y obtener observaciones de la temperatura con códigos LOINC estándar y unidades de medida UCUM. Especifica qué elementos centrales adicionales, extensiones, vocabularios y conjuntos de valores DEBEN estar presentes en el recurso y restringe cómo se utilizan los elementos. Proporcionar la base para el desarrollo de estándares para casos de uso específicos promueve la interoperabilidad y la adopción.
"""
* code 1..1 MS
* code = $loinc#8302-2
* value[x] only Quantity
* valueQuantity MS
  * value 1..1 MS
    * ^short = "Valor numerico"
  * unit 1..1 MS
    * ^short = "unidad representativa"
  * system 1..1 MS
    * ^short = "Sistema definido en el código de la unidad"
  * system = $ucum
  * code 1..1 MS
    * ^short = "Respuestas codificadas de las unidades UCUM comunes para el conjunto de valores de signos vitales."
  * code from $ucum-temperatura (required)