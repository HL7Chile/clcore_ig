Instance : AllergyIntoleranceEj
Title : "Ejemplo de Recurso AllergyIntolerance Core"
Description: "AllergyIntolerance ficticio"
InstanceOf : CoreAletgiaIntCl
Usage : #example

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* type = #allergy
* category = #medication
* criticality = #high
* code
  * coding = SCT#387517004
  * text = "Paracetamol"
* patient = Reference(PacienteCL)
* onsetDateTime = "2014-10-08"
* reaction 
  * manifestation
    * coding = SCT#15919481000119106
    * text = "anafilaxis causada por analgésico"
  * severity = #severe