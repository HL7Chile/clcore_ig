Profile:        CLImagingStudy
Parent:         ImagingStudy
Id:             cl-core-imaging-study
Title:          "CL Perfil Estudio de Imagenología"
Description:    "Describe un estudio de imagenología realizado en un paciente, incluyendo información sobre el procedimiento, la serie de imágenes"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* identifier MS
  * ^short = "Identificador del Estudio de Imagenología"
  * ^definition = "Identificador único del Estudio de Imagenología"
* status MS
  * ^definition = "Estado del Estudio de Imagenología"

* subject only Reference(PacienteCl)
* subject 1..1 
  * ^short = "Paciente al que se le realizó el Estudio de Imagenología"
  * ^definition = "Paciente al que se le realizó el Estudio de Imagenología"
* started MS
  * ^short = "Fecha y hora de inicio del Estudio de Imagenología"
  * ^definition = "Fecha y hora de inicio del Estudio de Imagenología"
* procedureCode MS
  * ^short = "Código del procedimiento de imagenología realizado"
  * ^definition = "Código que representa el procedimiento de imagenología realizado"

* reasonCode MS
  * ^short = "Código que representa la razón del Estudio de Imagenología"
  * ^definition = "Código que representa la razón del Estudio de Imagenología"

* series MS
  * ^short = "Serie de imágenes del Estudio de Imagenología"
  * ^definition = "Serie de imágenes del Estudio de Imagenología"
  * uid 1..1 MS
    * ^short = "Identificador único de la serie de imágenes"
    * ^definition = "Identificador único de la serie de imágenes"
  * modality 1..1 MS
    * ^short = "Modalidad de la serie de imágenes"
    * ^definition = "Modalidad de la serie de imágenes"
  * instance MS
    * ^short = "Número de la serie de imágenes"
    * ^definition = "Número de la serie de imágenes"
    * uid 1..1 MS
      * ^short = "Identificador único de la imagen"
      * ^definition = "Identificador único de la imagen"
    * sopClass 1..1 MS
      * ^short = "Clase de objeto de la imagen"
      * ^definition = "Clase de objeto de la imagen"
