Instance : MedicamentoCl
Title : "Ejemplo de comprimido Tareg - D 160"
Description: "Medicamento comprimido Tareg -D160 referemciado como medicamento en la TFC, considerando el de 25 comprimidos"
InstanceOf : CoreMedicamentoCl

	
* identifier[0]
  * use = #official
  * system = "http://minsal.cl/semantikos/description-id"
  * value = "1991971000167110"

* identifier[1]
  * use = #official
  * system = "http://minsal.cl/semantikos/concept-id"
  * value = "840851000167103"

* code.text = "Tareg - D 160 / 25 comprimido recubierto (Novartis)"
* manufacturer = Reference (EjemploLaboratorio1)