Instance : EjemplValidacionProvCl
Title : "Ejemplo de la Validación de un documento por medio del Autor"
Description: "Ejemplo de un documento, en la cual el prestador que la ha desarollado genera una validación por medio de una firma" 
InstanceOf : ProvenanceCl
Usage: #example

* target = Reference(DocumentoEjemplo1)

* recorded =  "2022-08-07T10:30:00-03:00"

* activity.coding.system = "http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion"
* activity.coding.code = #LA
* activity.coding.display = "legally authenticated"

* agent.type.coding.system = "http://terminology.hl7.org/CodeSystem/provenance-participant-type"   
* agent.type.coding.code = #author
* agent.type.coding.display = "author"
* agent.who = Reference(EjemploEspecialidadCL2)

* signature.type.system = "urn:iso-astm:E1762-95:2013"
* signature.type.code = #1.2.840.10065.1.12.1.1
* signature.when = "2022-08-07T10:30:00-03:00"

* signature.who = Reference(EjemploEspecialidadCL2)

* signature.sigFormat = #application/signature+xml
* signature.data = "Base64=="