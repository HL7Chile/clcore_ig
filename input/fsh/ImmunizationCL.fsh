Profile: ImmunizationCL
Parent: Immunization
Id: ImmunizationCL
Title: "CL Inmunización"
Description: "Definición de un evento de inmunización para las necesidades de interoperabilidad en Chile."

* ^version = "1.10.0"
* ^status = #active
* ^publisher = "HL7 Chile"

//* extension contains NombreCampanaCL named campana 0..1
* extension contains 
            ClaseVacuna named ClaseVacuna 0..1 MS and
            Campana named Campana 0..1 MS and
            Dosis named Dosis 0..1 MS and
            ProxFecha named ProxFecha 0..1 MS
            


* identifier MS
* identifier ^short = "Identificador(es) por los que se conoce este registro de Inmunización. En el caso del sistema público correspondería al ID del Registro de Inmunización"
* identifier ^definition = "Es el número de identificación del evento donde a un paciente se le administra una vacuna o registro de inmunización" 

* patient MS
* patient only Reference(PacienteCl)
* patient ^short = "Paciente inmunizado"
* patient ^definition = "El paciente que recibió o no recibió la inmunización"

* performer MS
* performer ^short = "Quién realizó la inmunización"
* performer ^definition = "Indica quién realizó el evento de inmunización"
* performer.actor MS
* performer.actor only Reference(PrestadorCL or OrganizacionCL)
* performer.actor ^short = "Prestador personal u organizacional que realizó la acción"
* performer.actor ^definition = "Prestador personal u organizacional que realizó la acción"

* programEligibility MS
* programEligibility ^short = "Indica la elegibilidad de un paciente para un programa de financiamiento"
* programEligibility ^definition = "Indica la elegibilidad de un paciente para un programa de financiamiento"
* programEligibility from VSNombreCampanaCL (example)

* vaccineCode MS
* vaccineCode ^short = "Vacuna que se administró o se iba a administrar"
* vaccineCode ^definition = "Vacuna que se administró o se iba a administrar. Se proporciona valores que utilizan en el RNI (Registro Nacional de Inmunizaciones)"
* vaccineCode from VSTiposVacunasCL (example)
* vaccineCode.text MS
  * ^short = "Nombre normalizado a nivel nacional de la vacuna"
//* vaccineCode.extension ^short = "Nombre de vacuna administrada"
//* vaccineCode.extension contains TiposVacunaCL named tipov 1..1 

* lotNumber 0..1 MS
* lotNumber ^short = "Número de lote de la vacuna"
* lotNumber ^definition = "Número de lote del producto de la vacuna"

* expirationDate MS
* expirationDate ^short = "Fecha de caducidad de la vacuna"
* expirationDate ^definition = "Fecha de vencimiento del lote de la vacuna"

* protocolApplied MS
* protocolApplied ^short = "Protocolo seguido por el proveedor"
* protocolApplied ^definition = "El protocolo (conjunto de recomendaciones) que sigue el proveedor que administró la dosis"

* occurrence[x] MS
* occurrence[x] ^short = "Momento de administración de la vacuna" 
* occurrence[x] ^definition = "Momento en la que se realiza la inmunización o se administra la vacuna"

* occurrenceDateTime ^short = "Fecha y hora de la administración"
* occurrenceString ^short = "Momento de la administración"

* recorded MS
* recorded ^short = "Cuando se realizo el regstro del la inmunización"
* recorded ^definition = "La fecha en que se registró por primera vez la ocurrencia de la inmunización, potencialmente significativamente después de la ocurrencia del evento"

* status MS
* status ^short = "completed | entered-in-error | not-done"
* status ^definition = "Indica el estado actual del evento de inmunización"
* status from http://hl7.org/fhir/ValueSet/immunization-status (required)

* statusReason  MS
* statusReason ^short = "Razón de no realizarse la inmunización"
* statusReason ^definition = "Indica la razón por la que no se realizó el evento de inmunización"
* statusReason from VSRazonNOTinm (example)
  * text MS
    * ^short = "Descripción de la razon por la cual noi se produjo la inmunizción"  
// * statusReason.extension ^short = "Motivo de no realizar la inmunización"
// * statusReason.extension contains RazonNOTinmunizacionCL named statusReason 0..1
* reportOrigin MS
  * ^short = "Fuente de registro"
  * ^definition = "También pude ser considerado como registro secundario"

* reaction MS
* reaction ^short = "Detalles de una reacción que proviene de la inmunización"
  * date ^short = "Cuándo comenzó la reacción"
  * date ^definition = "Fecha de reacción a la inmunización"
  * reported ^short = "Indica si se reporto reacción adversa a la vacuna"
  * reported ^definition = "Reporte de reacción adversa a la vacuna"

* location 0..1 MS
* location ^short = "Dónde se produjo la inmunización"
* location ^definition = "El lugar donde se produjo la administración de la vacuna"
* location only Reference(LocalizacionCL)

* programEligibility 0.. MS
  * ^short = "Corresponde al Id del criterio de elegibilidad de la vacuna administrada"
* programEligibility from http://hl7.org/fhir/ValueSet/immunization-program-eligibility (example)
  * coding.code 0.. MS
    * ^short = "Código identificador del criterio"
  * coding.display 0.. MS
    * ^short = "Descripción del programa asociado al identificador del criterio"

  
  



// * location.extension ^short = "Extensión para los Sistemas de Salud, por ejemplo: S.S Viña del mar Quillota"
// * location.extension contains ServicioSaludCL named ssalud 0..1 



