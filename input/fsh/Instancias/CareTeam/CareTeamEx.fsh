Instance:       cl-core-care-team-ejemplo
InstanceOf:     ClCareTeamPerfil
Usage:          #example
Title:          "Ejemplo de Equipo de Cuidados"
Description:    "Ejemplo de un equipo de cuidados conformados por el médico tratante y un especialista, que trabajan juntos para el cuidado de un paciente con una condición crónica."

* status = #active
* subject = Reference(PacienteCL)
* participant
  * role = http://snomed.info/sct#309295000 
  * member = Reference(EjemploPrestadorCL)
* participant[1]
  * role = http://snomed.info/sct#309394004 
  * member = Reference(EjemploPrestadorCL2)