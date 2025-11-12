Instance : AllergyIntoleranceEj
Title : "Ejemplo de Recurso AllergyIntolerance Core"
Description: "AllergyIntolerance ficticio"
InstanceOf : CoreAlergiaIntCl
Usage : #example

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* type = #allergy
* category = #medication
* criticality = #high
* code
  * coding = SCT#896008
  * text = "Ice"
* patient = Reference(PacienteCL)
* onsetDateTime = "2014-10-08"
* reaction 
  * manifestation
    * coding = SCT#3644009
    * text = "Macerated skin"
  * severity = #severe