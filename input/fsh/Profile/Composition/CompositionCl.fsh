Profile: DocumentoCl
Parent: Composition
Id: DocumentoCl
Title: "CL Documento"
Description: "De un formato genérico para documento clínico en Chile."
* ^language = #es
//* ^version = "1.9.2"
* ^status = #active
* ^publisher = "HL7 Chile"
//* text MS
//* identifier MS

* identifier 0..1 MS
* identifier ^short = "Identificador local para recurso de documento que puede ser distinto para cada versión del mismo"
* identifier ^definition = "Identificador para el recurso que contiene documento, puede ser usado de manera local. Este idetificador es independiente de la versión del documento"
* status MS
* status ^short = "Estado, valores posibles: preliminary | final | amended | entered-in-error"
* status ^definition = "Estado del documento"
* status from http://hl7.org/fhir/ValueSet/composition-status (required)
* status ^binding.description = "Códigos requeridos por estándar"

//--- loinc que representa el tipo de documento ----
* type from VSTiposDocClinico (preferred)
* type MS
* type ^short = "Tipo de Documento según especificación de LOINC (Ej para Summarie IPS Loinc = #60591-5"
* type ^definition = "Especifica el tipo de documento al que refiere este Recurso. Si se desea ajustar a IPS debe ser un resumen con código LOINC 60591-5"


//* ---- Paciente ----- 
//* subject only Reference(PacienteCl)
* subject MS
* subject ^definition = "Recurso sobre el cual se ha generado este documento."
* subject ^short = "Recurso sobre el cual se ha generado este documento. Es deseable que el recurso cumpla con un perfil chileno."


* encounter 0..1 
* encounter only Reference(EncounterCL)
* encounter MS
* encounter ^definition = "Contexto en el cual se generó el documento."
* encounter ^short = "Contexto asistencial en el cual se generó Documento."


//* --- Fecha -----
* date MS
* date ^short = "Fecha en la cual se editó el documento"
* date ^definition = "Fecha de edición del documento, cuando este fue modificado por el autor"
//* encounter

//* --- Author : referencia a un practitioner----
* author only Reference(PrestadorCL or CoreRolClinicoCl or Device or PacienteCl or OrganizacionCL)
* author MS
* author ^short = "Quien Ha creado el documento"
* author ^definition = "Identifica al responsable de los datos ingresados al documento."


//* --- Titulo de documento -----
* title MS
* title ^short = "Título del documento generado"
* title ^definition = "Título oficial del documento para que pueda ser legible."

// Validador
* attester 0..* MS
* attester ^short = "Profesionales validadores del documento"
* attester ^definition = "Profesionales validadores del documento"
  * mode MS
  * mode ^short = "Labor del Validador personal|profesional|legal|official"
  * mode from http://hl7.org/fhir/ValueSet/composition-attestation-mode (required)
  * mode ^binding.description = "Códigos requeridos por FHIR"
  * time MS
  * time ^short = "Fecha y Hora de la validación"
  * time ^definition = "Fecha y Hora de la validación"
  * party MS
  * party only Reference(PacienteCl or RelatedPerson or PrestadorCL or CoreRolClinicoCl or OrganizacionCL)
  * party ^short = "Quien validó"
  * party ^definition = "Quien validó"

* custodian MS
  * ^short = "Organización que mantiene los documentos"
  * ^definition = "Referencia a la organización según perfil nacional"
* custodian only Reference(CoreOrganizacionCl)


* section 1.. MS

  * ^short = "Sección del documento"
  * ^definition = "Sección de notificación definida para el documento."

  * text MS
    * ^short = "Texto que describe el título o propósito de la sección."
    * ^definition = "Texto que describe el título o propósito de la sección."

  * code 0.. MS
  * code from http://hl7.org/fhir/ValueSet/doc-section-codes (example)
    * ^short = "Código que define el tipo de sección"
    * ^definition = "Código que define el tipo de sección"
  
  * text MS
    * ^short = "Texto que describe el contenido de la sección"
    * ^definition = "Texto que describe el contenido de la sección"

  * entry MS
    * ^short = "Recurso referenciado en esta sección"
    * ^definition = "Puede ser cualquier recurso en función de la sección que se está notificando"
/*
//--------- Secciones 
* section contains
    sectionDiagnosticos 0.. MS and
    sectionMedicamentos 0.. MS and
    sectionAlergias 0.. MS and
    sectionObservacionEmbarazo 0.. MS and
    sectionObservacionSignosVitales 0.. MS 
    
  

//------ 1. Diagnosticos------------

* section[sectionDiagnosticos] ^short = "Sección Diagnósticos"
* section[sectionDiagnosticos] ^definition = "Descripción de lista de diagnósticos determinados en el paciente."

* section[sectionDiagnosticos].code MS 
* section[sectionDiagnosticos].code = $loinc#11450-4

* section[sectionDiagnosticos].title MS

* section[sectionDiagnosticos].entry MS
* section[sectionDiagnosticos].entry only Reference(Condition)

* section[sectionDiagnosticos].entry ^slicing.discriminator[0].type = #profile
* section[sectionDiagnosticos].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionDiagnosticos].entry ^slicing.rules = #open
* section[sectionDiagnosticos].entry ^short = "Diagnósticos conocidos actualmente de relevancia para determinaciones clínicas en el paciente."

//------ 2. Medicamentos------------

* section[sectionMedicamentos] ^short = "Sección Medicamentos"
* section[sectionMedicamentos] ^definition = "Descripción de lista de medicamentos activos, consumidos o pendientes del paciente."

* section[sectionMedicamentos].code MS 
* section[sectionMedicamentos].code = $loinc#10160-0

* section[sectionMedicamentos].title MS

* section[sectionMedicamentos].entry MS
* section[sectionMedicamentos].entry only Reference(MedicationStatement)

* section[sectionMedicamentos].entry ^slicing.discriminator[0].type = #profile
* section[sectionMedicamentos].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionMedicamentos].entry ^slicing.rules = #open
* section[sectionMedicamentos].entry ^short = "Referencia al Medicamento Prescrito al paciente."


//------ 3. Alergias------------

* section[sectionAlergias] ^short = "Sección Alergias y Reacciones Adversas"
* section[sectionAlergias] ^definition = "Descripción de lista de Alergias y Eventos Adversos del Paciente, su grado de criticidad."

* section[sectionAlergias].code MS 
* section[sectionAlergias].code = $loinc#48765-2

* section[sectionAlergias].title 1.. MS

* section[sectionAlergias].entry 1.. MS
* section[sectionAlergias].entry only Reference(AllergyIntolerance)

* section[sectionAlergias].entry ^slicing.discriminator[0].type = #profile
* section[sectionAlergias].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionAlergias].entry ^slicing.rules = #open
* section[sectionAlergias].entry ^short = "Alergias e Intolerancia descrita"

//------ 4. Embarazos------------

* section[sectionObservacionEmbarazo] ^short = "Sección Antecedentes de Embarazo"
* section[sectionObservacionEmbarazo] ^definition = "Descripción de las condiciones clínicas de los embarazos."

* section[sectionObservacionEmbarazo].code MS 
* section[sectionObservacionEmbarazo].code = $loinc#10162-6

* section[sectionObservacionEmbarazo].title MS

* section[sectionObservacionEmbarazo].entry MS
* section[sectionObservacionEmbarazo].entry only Reference(Observation)

* section[sectionObservacionEmbarazo].entry ^slicing.discriminator[0].type = #profile
* section[sectionObservacionEmbarazo].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionObservacionEmbarazo].entry ^slicing.rules = #open
* section[sectionObservacionEmbarazo].entry ^short = "Descripción del antecedente de embarzo"

//------ 4. Signos Vitales y Mediciones Fisiológicas------------

* section[sectionObservacionSignosVitales] ^short = "Sección de Signos Vitales Medidos"
* section[sectionObservacionSignosVitales] ^definition = "Descripción de las mediciones fisiológicas hechas al paciente"

* section[sectionObservacionSignosVitales].code MS 
* section[sectionObservacionSignosVitales].code = $loinc#8716-3

* section[sectionObservacionSignosVitales].title MS

* section[sectionObservacionSignosVitales].entry MS
* section[sectionObservacionSignosVitales].entry only Reference(Observation)

* section[sectionObservacionSignosVitales].entry ^slicing.discriminator[0].type = #profile
* section[sectionObservacionSignosVitales].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionObservacionSignosVitales].entry ^slicing.rules = #open
* section[sectionObservacionSignosVitales].entry ^short = "Descripción del los signos vitales y mediciones desarrolladas"



*/
