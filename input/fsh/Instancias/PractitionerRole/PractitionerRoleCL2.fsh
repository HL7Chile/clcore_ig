
Instance :    EjemploEspecialidadCL2
Title :       "Ejemplo de Especialidad Medicina Familiar"
Description:  "Define la especialidad de medicina familiar que cumnple un profesional en un establecimiento de salud"
InstanceOf :  CoreRolClinicoCl

* active = true

* practitioner = Reference(EjemploPrestadorCL2)
* organization = Reference(OrganizacionClEjemplo1)

* specialty = CSEspecialidadesDeisCL#28 "Medicina Familiar"
* specialty.text = "Medicina Familiar"
