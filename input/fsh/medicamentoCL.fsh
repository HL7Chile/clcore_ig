Profile:        MedicamentoCL
Parent:         Medication
Id:             CoreMedicamentoCl
Title:          "CL Medicamento"
Description:    "Este Perfil ha sido desarrollado para cubrir las necesidades de definición de un medicamento."

* ^version = "1.10.0"
* ^status = #active
* ^publisher = "HL7 Chile"

* identifier MS
* identifier ^short  = "Identificadores de fármacos"

* code MS
* code ^short = "Códificación de para describir un fármaco"

// * identifier ^slicing.discriminator.type = #value
// * identifier ^slicing.discriminator.path = "system"
// * identifier ^slicing.rules = #open
// * identifier ^short = "Slices definidos para la identificación del fármaco, ya sea por Descripción o por concepto"
// * identifier ^definition = "Slice defindos en base a el elemento value, el cual debe ser especifico para cada uno de los slices definidos"
// * identifier ^comment = "Slice defindos en base a el elemento value. Sólo  se pueden usar los discriminadores definidos para los dos slices generados"
// * identifier contains DescripcionId 0..1 MS and ConceptId 0..1 MS

// * identifier[DescripcionId] ^short = "Identificador de Descripción del fármaco"
// * identifier[DescripcionId] ^definition = "Este identificador se obtiene a travez del TFC por medio de un identificador de Descripción del fármaco"
// * identifier[DescripcionId].use = #official
// * identifier[DescripcionId].use ^short = "usual | official | temp | secondary | old"
// * identifier[DescripcionId].use ^definition = "Para este caso se fuerza a que su uso sea \"official\""
// * identifier[DescripcionId].system   = "http://minsal.cl/semantikos/description-id"
// * identifier[DescripcionId].system ^short  = "El system debe tener el siguiente valor \"http://minsal.cl/semantikos/description-id\""
// * identifier[DescripcionId].system ^definition  = "http://minsal.cl/semantikos/description-id DEBE ser usada para este slice. Estos EndPoint deberán estar disponibles pronto"
// * identifier[DescripcionId].value ^short = "Valor del código"
// * identifier[DescripcionId].value ^definition = "Valor del código"

// * identifier[ConceptId] ^short = "Este identificador se obtiene a travez del TFC por medio de un identificador de concepto" 
// * identifier[ConceptId] ^definition = "Este identificador se obtiene a travez del TFC por medio de un identificador del ConceptId del fármaco según SNOMED-CT"
// * identifier[ConceptId].use = #official
// * identifier[ConceptId].use ^short = "usual | official | temp | secondary | old"
// * identifier[ConceptId].use ^definition = "Para este caso se fuerza a que su uso sea \"official\""
// * identifier[ConceptId].system  = "http://minsal.cl/semantikos/concept-id"
// * identifier[ConceptId].system ^short = "El system debe tener el siguiente valor: \"http://minsal.cl/semantikos/concept-id\""
// * identifier[ConceptId].system ^definition  = "http://minsal.cl/semantikos/concept-id DEBE ser usada para este slice. Estos EndPoint deberán estar disponibles pronto"
// * identifier[ConceptId].value ^short = "Valor del código"
// * identifier[ConceptId].value ^definition = "Valor del código"

// * code.text ^short = "Descripción del Fármaco según TFC. Se fuerza en este momento TFC"
// * code.text ^short = "Esto código define el fármaco que contiene el recurso. El código corresponde al determinado en la Termnología Frarmaceutica Chilena (TFC)"

// * code.coding.system ^short = "En principio el endPoint puede ser este, pero cada sistema localmente puede generar su TFC. \"http://minsal.cl/semantikos/description-id\""
// * code.coding.system  ^definition = "Si bien se dispondrá públicamente de un endPoint en el Servidor Semantikos del MINSAL, la BD de la TFC es libre distribución por lo que puede ser levantada Localmente "
// * code.coding.code ^short = "Código del farmaco desplegado por la TFC"
// * code.coding.code ^definition = "Código del farmaco desplegado por la TFC"
// * code.coding.display ^short = "descripción del farmaco entregada por la TFC"
// * code.coding.display ^definition = "descripción del farmaco entregada por la TFC"
