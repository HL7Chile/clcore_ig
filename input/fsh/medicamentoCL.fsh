Profile: CoreMedicamentoCl
Parent: Medication
Title: "Medicamento Core CL"
Description: "Descriopción Medicamento"

//* extension contains NombreComercial named NombreComercial 0..1 MS

* extension contains NombreComercial named NombreComercial 0..1 MS

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^short = "Slices definidos para la identificación del fármaco"
* identifier ^definition = "Slice definidos en base al elemento value, el cual debe ser especifico para cada uno de los slices definidos"
* identifier ^comment = "Slice definidos en base al elemento value. Sólo se pueden usar los discriminadores definidos para los dos slices generados"
* identifier contains 
             ISP 0..1 MS and 
             IdComer 0..1 and 
             TFCDId 0..1 MS and 
             TFCCId 0..1 MS and 
             Otro 0..1

* identifier[ISP] ^short = "Número Registro ISP del fármaco"
* identifier[ISP] ^definition = "Número Registro ISP del fármaco"
  * value 0..1 MS
    * ^short = "Valor del número de registro"
  * system 0..1 MS
  * system = "http://ISP.cl/registro"
    * ^short = "URL de validación"

* identifier[IdComer] ^short = "Identificador asignado por el laboratorio fabricante"

  * value 0..1 MS
    * ^short = "Valor del identificador"
  * system 0..1 MS
  * system = "http://fab.cl/registro"
    * ^short = "URL de validación"

* identifier[TFCDId] ^short = "Descripción de identificación por medio de DescriptionId según TFC"
* identifier[TFCDId] ^definition = "La extensión de SNOMED definida como sistema de identificación de fármacos para Chile, denominada TFC es la que se define en este slice para DescriptionId"
* identifier[TFCDId] ^short = "Identificador de Descripción del fármaco"
* identifier[TFCDId] ^definition = "Este identificador se obtiene a travez del TFC por medio de un identificador de Descripción del fármaco"
  * use = #official
  * use ^short = "usual | official | temp | secondary | old"
  * use ^definition = "Para este caso se fuerza a que su uso sea \"official\""
  * system   = "http://minsal.cl/semantikos/description-id"
  * system ^short  = "El system debe tener el siguiente valor \"http://minsal.cl/semantikos/description-id\""
  * system ^definition  = "http://minsal.cl/semantikos/description-id DEBE ser usada para este slice. Estos EndPoint deberán estar disponibles pronto"
  * value ^short = "Valor del código"
  * value ^definition = "Valor del código"

* identifier[TFCCId] ^short = "Descripción de identificación por medio de ConceptId según TFC"
* identifier[TFCCId] ^definition = "La extensión de SNOMED definida como sistema de identificación de fármacos para Chile, denominada TFC es la que se define en este slice para ConceptId"
* identifier[TFCCId] ^short = "Identificador de Descripción del fármaco"
* identifier[TFCCId] ^definition = "Este identificador se obtiene a travez del TFC por medio de un identificador de Descripción del fármaco"
  * use = #official
  * use ^short = "usual | official | temp | secondary | old"
  * use ^definition = "Para este caso se fuerza a que su uso sea \"official\""
  * system   = "http://minsal.cl/semantikos/concept-id"
  * system ^short  = "El system debe tener el siguiente valor: \"http://minsal.cl/semantikos/concept-id\""
  * system ^definition  = "http://minsal.cl/semantikos/concept-id DEBE ser usada para este slice. Estos EndPoint deberán estar disponibles pronto"
  * value ^short = "Valor del código"
  * value ^definition = "Valor del código"

* identifier[Otro] ^short = "Otro identificador asignado"
* identifier[Otro] ^definition = "Cualquier otro identificador que se haya asignado al fármaco"
  * value 0..1 MS
    * ^short = "Valor del identificador"
  * system 0..1 MS
  * system = "http://take.cl/registro"
    * ^short = "URL de validación"

* ingredient 0..* MS
* ingredient ^short = "Componentes del medicamento"
  * itemReference 0..1 MS
  * itemReference ^short = "Componente del fármaco, se usará texto"
    * display 0..1 MS
    * display ^short = "descripción del componente"
  * isActive 0..1 MS
  * isActive ^short = "Determinación si el componente es componente activo o no"
  * strength 0..1 MS
  * strength ^short = "Potencia del componente"
    * numerator 0..1 MS
    * numerator ^short = "Numerador de la potencia"
      * value ^short = "Valor del Numerador"
      * unit ^short = "Unidad"
    * denominator 0..1 MS
    * denominator ^short = "Numerador de la potencia"
      * value ^short = "Valor del Numerador"
      * unit ^short = "Unidad"

* form 0..1 MS
* form ^short = "Forma farmacéutica"
* form  from http://hl7.org/fhir/ValueSet/medication-form-codes (example)

* manufacturer 0..1 MS
* manufacturer ^short = "Laboratorio"
  * reference 0..1 MS
  * display 0..1 MS
  * display ^short = "Nombre del laboratorio farmacéutico"