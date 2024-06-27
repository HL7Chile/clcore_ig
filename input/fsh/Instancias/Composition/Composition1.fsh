Instance: DocumentoEjemplo1
InstanceOf: DocumentoCl
Usage: #example
Title: "Ejemplo de Cabecera de Documento"
Description: "Este es el ejemplo de la cabecera de un documento"

* identifier
  * value = "2b2f3f16-12c4-40b1-97ec-c0e091412960"

* status = #preliminary
* type 
  * coding = http://loinc.org#11503-0 "Medical records"
  * text = "Registro Médico"
* subject = Reference(PacienteCL)
* encounter = Reference(EjemploEncounterCL)
* date = "2022-08-07T10:30:00-03:00"
* author = Reference(EjemploEspecialidadCL2)
* title = "Registro Médico de Una Condición al Paciente"
* custodian = Reference(OrganizacionClEjemplo1)
* section[0]
  * code
    * coding = http://loinc.org#70004-7 "Diagnostic study note"
    * text = "Diagnostico Estudio"
  * text
    * status = #additional
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Paciente presenta recaída sin confirmar de faringoamigdalitis, se realizará más estudios para confirmar</p></div>"
  * entry = Reference(DiagnosticoEj2)

* section[1]
  * code
    * coding = http://loinc.org#57852-6 "Problem list Narrative - Reported"
    * text = "Listado de problemas"
  * text
    * status = #additional
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Adicionalmente el paciente ya poseía un diagnostico prevío de hipertensión</p></div>"
    
  * entry = Reference(DiagnosticoEj)