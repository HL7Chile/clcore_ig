Profile: CoreMedicamentoCl
Parent: Medication
Id: CoreMedicamentoCl
Title: "CL Medicamento"
Description: "Descripción de un Medicamento"
//* ^language = #es
//* extension contains NombreComercial named NombreComercial 0..1 MS

* extension contains NombreComercial named NombreComercial 0..1 MS



* identifier 0..* MS
  * ^short = "Identificador de Medicamento"
  * use 0..1 MS
    * ^short = "usual | official | temp | secondary | old"
  * system 0..1 MS
    * ^short = "Sistema de identificación"
  * value 0..1 MS
    * ^short = "Valor del identificador"

* code 0..1 MS
* code ^short = "Código que identifica este medicamento"
* code from http://hl7.org/fhir/ValueSet/medication-codes (example)

* ingredient 0..* MS
* ingredient ^short = "Componentes del medicamento"
  * item[x] MS
  * item[x] ^short = "Componente del fármaco"
  * itemCodeableConcept MS
  * itemCodeableConcept from http://hl7.org/fhir/ValueSet/medication-codes (example)
  * itemReference MS
  * itemReference only Reference(Substance or CoreMedicamentoCl)
  * isActive 0..1 MS
  * isActive ^short = "Determinación si el componente es componente activo o no"
  * strength 0..1 MS
  * strength ^short = "Potencia del componente"
    * numerator 0..1 MS
    * numerator ^short = "Valor del Numerador"
      * value ^short = "Valor del Numerador"
      * unit ^short = "Unidad del Numerador"
      * unit ^comment = "El valor de la unidad del numerador debe ser el mismo que el del denominador"
    * denominator 0..1 MS
    * denominator ^short = "Valor del Denominador"
      * value ^short = "Valor del Denominador"
      * unit ^short = "Unidad del Denominador"
      * unit ^comment = "El valor de la unidad del denominador debe ser el mismo que el del numerador"

* form 0..1 MS
* form ^short = "Forma farmacéutica"
* form  from http://hl7.org/fhir/ValueSet/medication-form-codes (example)

* manufacturer 0..1 MS
* manufacturer ^short = "Laboratorio"
* manufacturer only Reference(CoreOrganizacionCl)
  * reference 0..1 MS
  * display 0..1 MS
  * display ^short = "Nombre del laboratorio farmacéutico"