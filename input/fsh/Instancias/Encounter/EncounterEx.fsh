Instance : EjemploEncounterCL
Title : "Ejemplo de Recurso Encuentro"
Description: "Encuentro remoto ficticio del paciente"
InstanceOf : EncounterCL
Usage : #example

// Estado del encuentro
* status = #planned 

//Clase de encuentro, en este caso es Virtual
* class.code = #VR 
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.display = "Virtual"

* type 
  * coding[0] = CSTiposEncuentroCL#PR "Programada"
  * text = "Programada"

* serviceType
  * coding[0] = CSCodServicioCL#medGen "Medicina General"
  * text = "Medicina General"

* subject = Reference(PacienteCL)

* participant[0]
  * type
    * coding = 	http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ATND "attender"
    * text = "Atendedor"
  * individual = Reference(EjemploEspecialidadCL2)

//Periodo
* period
  * start = "2022-06-23T00:00:00-03:00"
  * end = "2022-06-23T00:50:00-03:00"

* diagnosis
  * condition = Reference(DiagnosticoEj2)

* serviceProvider = Reference(OrganizacionClEjemplo1)

// //Servicio entregado en el Encuentro
// * serviceType.coding.code = #nutINTA
// * serviceType.coding.system = "https://minsal.cl/fhir/HD/CodeSystem/CSCodigoServicio"


// //Razon de no realizarse
// * reasonCode.extension[reasonCode].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RazonNOrealizarse"
// * reasonCode.extension[reasonCode].valueCode = #pierdellam

// //Notas del encuentro entre Profesionales
// * extension[notas].valueString = "Encuentro exitoso"

// //Paciente referenciado
// * subject.reference = "Patient/11"

// //Participante principal
// * participant[partPrincipal].extension[especialidad].valueCoding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSEspecialidadesDeisCL"
// * participant[partPrincipal].extension[especialidad].valueCoding.code = #01
// * participant[partPrincipal].extension[especialidad].valueCoding.display = "Anatomía Patológica"
// * participant[partPrincipal].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
// * participant[partPrincipal].type.coding.code = #PPRF 
// * participant[partPrincipal].individual.reference = "Practitioner/3020"

// //Participante secundario
// * participant[partSecundario].type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
// * participant[partSecundario].type.coding.code = #SPRF
// * participant[partSecundario].extension[contact].valueContactPoint.value = "jose.12@gmail.com"
// * participant[partSecundario].extension[contact].valueContactPoint.system = #email

// //Periodo
// * period.start = "2022-06-23T00:00:00-03:00"
// * period.end = "2022-06-23T00:50:00-03:00"

// //Razón por la que se realiza el encuentro
// * reasonCode.text = "Consulta médica sobre nutrición de alimentos"

// //Diagnóstico

// * diagnosis.condition.display = "Condition IPS"

// //Organización que provee el Encuentro 
// * serviceProvider.reference = "Organization/f003"