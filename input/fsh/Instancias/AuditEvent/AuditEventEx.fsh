Instance: AuditEventEx
InstanceOf: AuditEventCl
Title : "Ejemplo de un Audit-Event Search."
Description: "Log de Audición de una operacion Search."
Usage: #example
* type = http://terminology.hl7.org/CodeSystem/audit-event-type#rest "Restful Operation"
* subtype = http://hl7.org/fhir/restful-interaction#search "search"
* action = #E
* recorded = "2021-08-22T23:42:24Z"
* outcome = #0
* agent[0]
  * type
    * coding = http://terminology.hl7.org/CodeSystem/extra-security-role-type#humanuser "human user"
    * text = "Usuario Humano"
  * who
    * identifier.
      * value = "95"
  * altId = "601847123"
  * name = "Grahame Grieve"
  * requestor = true
  * network
    * address = "Workstation1.ehr.familyclinic.com"
    * type = #1
* source 
  * observer = Reference(EjemploPrestadorCL)

* entity
  * what = Reference(OrganizacionClEjemplo1)