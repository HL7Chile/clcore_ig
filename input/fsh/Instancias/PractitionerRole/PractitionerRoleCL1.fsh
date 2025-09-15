
Instance :    EjemploEspecialidadCL
Title :       "Ejemplo de Recurso de especialidad"
Description:  "Define la especialidad que cumnple en un establecimiento de salud"
InstanceOf :  CoreRolClinicoCl

* active = true

* practitioner = Reference(EjemploPrestadorCL)
* organization = Reference(OrganizacionClEjemplo1)

* specialty = CSEspecialidadesDeisCL#45 "Oncología Médica"
* specialty.text = "Oncología"
