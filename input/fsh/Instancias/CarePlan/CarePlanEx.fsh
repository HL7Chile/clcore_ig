Instance:       cl-core-care-plan-ejemplo
InstanceOf:     ClCarePlanPerfil
Usage:          #example
Title:          "Ejemplo de Plan de Cuidado"
Description:    "Ejemplo de un plan de cuidado para un paciente con una condición crónica, que incluye intervenciones y seguimiento por parte del equipo de salud."

* status = #active
* intent = #plan
* subject = Reference(PacienteCL)
* careTeam = Reference(cl-core-care-team-ejemplo)
* category = http://snomed.info/sct#736252007
* note
  * text = "Descartamos la necesidad de un plan de cuidado para el paciente. Solo cuidados de rutina y seguimiento anual."
