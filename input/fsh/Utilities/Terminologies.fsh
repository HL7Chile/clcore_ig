ValueSet: VSContactoRelacion
Id: VSContactoRelacion
Title: "Códigos de relación del contacto con el paciente"
Description: "Códigos de relación del contacto con el paciente"
* ^language = #es
* ^experimental = false
//* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-07-25T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
//* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement" 

* ^experimental = false //dependera del uso que le den al codesystem

* codes from system http://terminology.hl7.org/CodeSystem/v2-0131
* codes from system CSOtrosContactos




CodeSystem: CSOtrosContactos
Id: CSOtrosContactos
Title: "Códigos de otros contactos del paciente"
Description: "Códigos de contactos adicionales usados en Chile para paciente"
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^language = #es

* #tut "Tutor Legal" "Tutor Legal"
* #nr "No Registrdo" "No Registrdo"



ValueSet: VSOtrosContactos
Id: VSOtrosContactos
Title: "Códigos de otros contactos del paciente"
Description: "Códigos de contactos adicionales usados en Chile para paciente"
* ^experimental = false

* ^language = #es
* ^status = #active
* ^date = "2022-07-25T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement" 

* ^experimental = false //dependera del uso que le den al codesystem

* codes from system CSOtrosContactos

CodeSystem: CSClaseVacuna
Id: CSClaseVacuna
Title: "Códigos de clases de Vacuna"
Description: "Códigos de clase de vacuna"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #programatica "Vacuna Programática" "Vacuna Programática" 
* #internacional "Vacuna Internacional" "Vacuna Internacional"
* #campaña "Vacunación Campaña" "Vacunación Campaña"


ValueSet: VSClaseVacuna
Id: VSClaseVacuna
Title: "Códigos de clases de Vacuna"
Description: "Códigos de clase de vacuna"
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2022-07-25T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement" 

* ^experimental = false //dependera del uso que le den al codesystem

* codes from system CSClaseVacuna

ValueSet: VSCodMadurez
Id: VSCodMadurez
Title: "Códigos de grado de madurez del artefacto"
Description: "Códigos de grado de madurez del artefacto"

* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2022-07-25T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement" 

* ^experimental = false //dependera del uso que le den al codesystem

* codes from system CSCodMadurez

CodeSystem: CSCodMadurez
Id: CSCodMadurez
Title: "Códigos de grado de madurez del artefacto"
Description: "Códigos de grado de madurez del artefacto"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "1" "Madurez 1"
* #2 "2" "Madurez 2"
* #3 "3" "Madurez 3"
* #4 "4" "Madurez 4"
* #N "N" "Madurez Normativa"

/*
ValueSet: VSDiagnosticosSCT
Id: VSDiagnosticosSCT
Title: "Diagnósticos SNOMED y Ausente o Desconocido"
Description: "Diagnósticos definidos en Snomed-CT."
* ^language = #es
* ^experimental = false //dependera del uso que le den al codesystem

* ^status = #active
* ^date = "2022-07-25T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement" 

* ^experimental = false //dependera del uso que le den al codesystem

// * codes from system https://hl7.org/fhir/uv/ips/STU1.1/CodeSystem-absent-unknown-uv-ips.html
* include codes from system http://snomed.info/sct where concept descendent-of #404684003
//* include codes from valueset http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-problems-uv-ips

*/
ValueSet: VSTiposDocumentos
Id: VSTiposDocumentos
Title: "Tipos de Documentos"
Description: "Tipos de Documentos para identificación según tabla HL7 V3 y CodeSystem local."
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
//* ^caseSensitive = true
* ^experimental = false //dependera del uso que le den al codesystem

* codes from system CSCodigoDNI
* codes from system http://terminology.hl7.org/CodeSystem/v2-0203|5.0.0
* codes from system CSTipoIdentificador


CodeSystem: CSCodigoDNI
Id: CSCodigoDNI
Title: "Códigos de Documentos DNI para LATAM y el Caribe"
Description: "Códigos para los DNI de países de America Latina y el Caribe según indicaciones de VS HL7 de V3"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #NNBLZ "Belice" "Belice"
* #NNCRI "Costa Rica" "Costa Rica"
* #NNSLV "El Salvador" "El Salvador"
* #NNGTM "Guatemala" "Guatemala"
* #NNHND "Honduras" "Honduras"
* #NNMEX "México" "México"
* #NNNIC "Nicaragua" "Nicaragua"
* #NNPAN "Panamá" "Panamá"
* #NNARG "Argentina" "Argentina"
* #NNBOL "Bolivia" "Bolivia"
* #NNBRA "Brasil" "Brasil"
* #NNCOL "Colombia" "Colombia"
* #NNECU "Ecuador" "Ecuador"
* #NNGUY "Guyana" "Guyana"
* #NNPRY "Paraguay" "Paraguay"
* #NNPER "Perú" "Perú"
* #NNSUR "Surinam" "Surinam"
* #NNURY "Uruguay" "Uruguay"
* #NNVEN "Venezuela" "Venezuela"
* #NNCHL "Chile" "Chile"
* #NNATG "Antigua y Barbuda" "Antigua y Barbuda"
* #NNBHS "Bahamas" "Bahamas"
* #NNBRB "Barbados" "Barbados"
* #NNCUB "Cuba" "Cuba"
* #NNDMA "Dominica" "Dominica"
* #NNGRD "Granada" "Granada"
* #NNHTI "Haití" "Haití"
* #NNJAM "Jamaica" "Jamaica"
* #NNDOM "República Dominicana" "República Dominicana"
* #NNKNA "San Cristóbal y Nieves" "San Cristóbal y Nieves"
* #NNLCA "Santa Lucía" "Santa Lucía"
* #NNVCT "San Vicente y las Granadinas" "San Vicente y las Granadinas"
* #NNTTO "Trinidad y Tobago" "Trinidad y Tobago"


// ValueSet: CodPaises
// Id: CodPais
// Title: "Códigos de Países"
// Description: "Codigos definidos para la identificación de países segun norma ISO3166-N"
// * ^experimental = false
// * ^version = "1.0.0"
// * ^status = #active
// * ^date = "2022-01-18T00:00:00-03:00"
// * ^contact.name = "HL7 Chile"
// * ^contact.telecom.system = #email
// * ^contact.telecom.value = "chair@hl7chile.cl"
// * ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
// * ^copyright = "All content on ISO Online is copyright protected. The copyright is owned by ISO. Any use of the content, including copying of it in whole or in part, for example to another Internet site, is prohibited and would require written permission from ISO."

// * include codes from system CSCodPaises

// CodeSystem: CSCodPaises
// Id: CodPais
// Title: "Códigos de Países"
// Description: "Codigos definidos para la identificación de países segun norma ISO3166-N"
// * ^experimental = false
// * ^caseSensitive = true
// * ^version = "1.0.0"
// * ^status = #active
// * ^date = "2022-01-18T00:00:00-03:00"
// * ^contact.name = "HL7 Chile"
// * ^contact.telecom.system = #email
// * ^contact.telecom.value = "chair@hl7chile.cl"
// * ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
// * ^copyright = "All content on ISO Online is copyright protected. The copyright is owned by ISO. Any use of the content, including copying of it in whole or in part, for example to another Internet site, is prohibited and would require written permission from ISO."

// * #004 "Afghanistan"
// * #008 "Albania"
// * #010 "Antarctica"
// * #012 "Algeria"
// * #016 "American Samoa"
// * #020 "Andorra"
// * #024 "Angola"
// * #028 "Antigua and Barbuda"
// * #031 "Azerbaijan"
// * #032 "Argentina"
// * #036 "Australia"
// * #040 "Austria"
// * #044 "Bahamas"
// * #048 "Bahrain"
// * #050 "Bangladesh"
// * #051 "Armenia"
// * #052 "Barbados"
// * #056 "Belgium"
// * #060 "Bermuda"
// * #064 "Bhutan"
// * #068 "Bolivia, Plurinational State of"
// * #070 "Bosnia and Herzegovina"
// * #072 "Botswana"
// * #074 "Bouvet Island"
// * #076 "Brazil"
// * #084 "Belize"
// * #086 "British Indian Ocean Territory"
// * #090 "Solomon Islands"
// * #092 "Virgin Islands, British"
// * #096 "Brunei Darussalam"
// * #100 "Bulgaria"
// * #104 "Myanmar"
// * #108 "Burundi"
// * #112 "Belarus"
// * #116 "Cambodia"
// * #120 "Cameroon"
// * #124 "Canada"
// * #132 "Cabo Verde"
// * #136 "Cayman Islands"
// * #140 "Central African Republic"
// * #144 "Sri Lanka"
// * #148 "Chad"
// * #152 "Chile"
// * #156 "China"
// * #158 "Taiwan, Province of China"
// * #162 "Christmas Island"
// * #166 "Cocos (Keeling) Islands"
// * #170 "Colombia"
// * #174 "Comoros"
// * #175 "Mayotte"
// * #178 "Congo"
// * #180 "Congo, the Democratic Republic of the"
// * #184 "Cook Islands"
// * #188 "Costa Rica"
// * #191 "Croatia"
// * #192 "Cuba"
// * #196 "Cyprus"
// * #203 "Czechia"
// * #204 "Benin"
// * #208 "Denmark"
// * #212 "Dominica"
// * #214 "Dominican Republic"
// * #218 "Ecuador"
// * #222 "El Salvador"
// * #226 "Equatorial Guinea"
// * #231 "Ethiopia"
// * #232 "Eritrea"
// * #233 "Estonia"
// * #234 "Faroe Islands"
// * #238 "Falkland Islands (Malvinas)"
// * #239 "South Georgia and the South Sandwich Islands"
// * #242 "Fiji"
// * #246 "Finland"
// * #248 "Eland Islands"
// * #250 "France"
// * #254 "French Guiana"
// * #258 "French Polynesia"
// * #260 "French Southern Territories"
// * #262 "Djibouti"
// * #266 "Gabon"
// * #268 "Georgia"
// * #270 "Gambia"
// * #275 "Palestine, State of"
// * #276 "Germany"
// * #288 "Ghana"
// * #292 "Gibraltar"
// * #296 "Kiribati"
// * #300 "Greece"
// * #304 "Greenland"
// * #308 "Grenada"
// * #312 "Guadeloupe"
// * #316 "Guam"
// * #320 "Guatemala"
// * #324 "Guinea"
// * #328 "Guyana"
// * #332 "Haiti"
// * #334 "Heard Island and McDonald Islands"
// * #336 "Holy See"
// * #340 "Honduras"
// * #344 "Hong Kong"
// * #348 "Hungary"
// * #352 "Iceland"
// * #356 "India"
// * #360 "Indonesia"
// * #364 "Iran, Islamic Republic of"
// * #368 "Iraq"
// * #372 "Ireland"
// * #376 "Israel"
// * #380 "Italy"
// * #384 "Ctte d'Ivoire"
// * #388 "Jamaica"
// * #392 "Japan"
// * #398 "Kazakhstan"
// * #400 "Jordan"
// * #404 "Kenya"
// * #408 "Korea, Democratic People's Republic of"
// * #410 "Korea, Republic of"
// * #414 "Kuwait"
// * #417 "Kyrgyzstan"
// * #418 "Lao People's Democratic Republic"
// * #422 "Lebanon"
// * #426 "Lesotho"
// * #428 "Latvia"
// * #430 "Liberia"
// * #434 "Libya"
// * #438 "Liechtenstein"
// * #440 "Lithuania"
// * #442 "Luxembourg"
// * #446 "Macao"
// * #450 "Madagascar"
// * #454 "Malawi"
// * #458 "Malaysia"
// * #462 "Maldives"
// * #466 "Mali"
// * #470 "Malta"
// * #474 "Martinique"
// * #478 "Mauritania"
// * #480 "Mauritius"
// * #484 "Mexico"
// * #492 "Monaco"
// * #496 "Mongolia"
// * #498 "Moldova, Republic of"
// * #499 "Montenegro"
// * #500 "Montserrat"
// * #504 "Morocco"
// * #508 "Mozambique"
// * #512 "Oman"
// * #516 "Namibia"
// * #520 "Nauru"
// * #524 "Nepal"
// * #528 "Netherlands"
// * #531 "Curagao"
// * #533 "Aruba"
// * #534 "Sint Maarten (Dutch part)"
// * #535 "Bonaire, Sint Eustatius and Saba"
// * #540 "New Caledonia"
// * #548 "Vanuatu"
// * #554 "New Zealand"
// * #558 "Nicaragua"
// * #562 "Niger"
// * #566 "Nigeria"
// * #570 "Niue"
// * #574 "Norfolk Island"
// * #578 "Norway"
// * #580 "Northern Mariana Islands"
// * #581 "United States Minor Outlying Islands"
// * #583 "Micronesia, Federated States of"
// * #584 "Marshall Islands"
// * #585 "Palau"
// * #586 "Pakistan"
// * #591 "Panama"
// * #598 "Papua New Guinea"
// * #600 "Paraguay"
// * #604 "Peru"
// * #608 "Philippines"
// * #612 "Pitcairn"
// * #616 "Poland"
// * #620 "Portugal"
// * #624 "Guinea-Bissau"
// * #626 "Timor-Leste"
// * #630 "Puerto Rico"
// * #634 "Qatar"
// * #638 "Riunion"
// * #642 "Romania"
// * #643 "Russian Federation"
// * #646 "Rwanda"
// * #652 "Saint Barthilemy"
// * #654 "Saint Helena, Ascension and Tristan da Cunha"
// * #659 "Saint Kitts and Nevis"
// * #660 "Anguilla"
// * #662 "Saint Lucia"
// * #663 "Saint Martin (French part)"
// * #666 "Saint Pierre and Miquelon"
// * #670 "Saint Vincent and the Grenadines"
// * #674 "San Marino"
// * #678 "Sao Tome and Principe"
// * #682 "Saudi Arabia"
// * #686 "Senegal"
// * #688 "Serbia"
// * #690 "Seychelles"
// * #694 "Sierra Leone"
// * #702 "Singapore"
// * #703 "Slovakia"
// * #704 "Viet Nam"
// * #705 "Slovenia"
// * #706 "Somalia"
// * #710 "South Africa"
// * #716 "Zimbabwe"
// * #724 "Spain"
// * #728 "South Sudan"
// * #729 "Sudan"
// * #732 "Western Sahara"
// * #740 "Suriname"
// * #744 "Svalbard and Jan Mayen"
// * #748 "Swaziland"
// * #752 "Sweden"
// * #756 "Switzerland"
// * #760 "Syrian Arab Republic"
// * #762 "Tajikistan"
// * #764 "Thailand"
// * #768 "Togo"
// * #772 "Tokelau"
// * #776 "Tonga"
// * #780 "Trinidad and Tobago"
// * #784 "United Arab Emirates"
// * #788 "Tunisia"
// * #792 "Turkey"
// * #795 "Turkmenistan"
// * #796 "Turks and Caicos Islands"
// * #798 "Tuvalu"
// * #800 "Uganda"
// * #804 "Ukraine"
// * #807 "Macedonia, the former Yugoslav Republic of"
// * #818 "Egypt"
// * #826 "United Kingdom"
// * #831 "Guernsey"
// * #832 "Jersey"
// * #833 "Isle of Man"
// * #834 "Tanzania, United Republic of"
// * #840 "United States of America"
// * #850 "Virgin Islands, U.S."
// * #854 "Burkina Faso"
// * #858 "Uruguay"
// * #860 "Uzbekistan"
// * #862 "Venezuela, Bolivarian Republic of"
// * #876 "Wallis and Futuna"
// * #882 "Samoa"
// * #887 "Yemen"
// * #894 "Zambia"

ValueSet: VSEspecialidadesCL
Id: VSEspecialidadesCL
Title: "Códigos de Especialidades"
Description: "Códigos de especialidades médicas descritas según DEIS, la CONACEM y CONACEO"
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSEspecialidadesDeisCL
* codes from system CSEspecialidadOdontologica
* codes from system CSEspecialidadFarma
* codes from system EspecialidadesConacemConaceoCS

CodeSystem: CSEspecialidadesDeisCL
Id: CSEspecialidadesDeisCL
Title: "Códigos de Especialidades"
Description: "Códigos de especialidades médicas descritas según DEIS"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"


* #1 "Anatomía Patológica" "Anatomía Patológica"
* #2 "Anestesiología" "Anestesiología"
* #3 "Cardiología" "Cardiología"
* #4 "Cirugía General" "Cirugía General"
* #5 "Cirugía de Cabeza, Cuello y Maxilofacial" "Cirugía de Cabeza, Cuello y Maxilofacial"
* #6 "Cirugía Cardiovascular" "Cirugía Cardiovascular"
* #7 "Cirugía  de Tórax" "Cirugía  de Tórax"
* #8 "Cirugía Plástica y Reparadora" "Cirugía Plástica y Reparadora"
* #9 "Cirugía Pediátrica" "Cirugía Pediátrica"
* #10 "Cirugía Vascular Periférica" "Cirugía Vascular Periférica"
* #11 "Coloproctología" "Coloproctología"
* #12 "Dermatología" "Dermatología"
* #13 "Diabetología" "Diabetología"
* #14 "Endocrinología Adulto" "Endocrinología Adulto"
* #15 "Endocrinología Pediatrica" "Endocrinología Pediatrica"
* #16 "Enfermedades Respiratorias del Adulto (Broncopulmonar)" "Enfermedades Respiratorias del Adulto (Broncopulmonar)"
* #17 "Enfermedades Respiratorias Pediátricas(Broncopulmonar Pediátrico)" "Enfermedades Respiratorias Pediátricas(Broncopulmonar Pediátrico)"
* #18 "Gastroenterología Adulto" "Gastroenterología Adulto"
* #19 "Gastroenterología Pediátrica" "Gastroenterología Pediátrica"
* #20 "Genética Clínica" "Genética Clínica"
* #21 "Geriatría" "Geriatría"
* #22 "Ginecología Pediátrica y de la Adolescencia" "Ginecología Pediátrica y de la Adolescencia"
* #23 "Hematología" "Hematología"
* #24 "Imagenología" "Imagenología"
* #25 "Infectología" "Infectología"
* #26 "Inmunología" "Inmunología"
* #27 "Laboratorio Clínico" "Laboratorio Clínico"
* #28 "Medicina Familiar" "Medicina Familiar"
* #29 "Medicina Física y Rehabilitación (Fisiatria Adulto)" "Medicina Física y Rehabilitación (Fisiatria Adulto)"
* #30 "Medicina Interna" "Medicina Interna"
* #31 "Medicina Intensiva Adulto" "Medicina Intensiva Adulto"
* #32 "Medicina Intensiva Pediátrica" "Medicina Intensiva Pediátrica"
* #33 "Medicina Legal" "Medicina Legal"
* #34 "Medicina Materno Infantil" "Medicina Materno Infantil"
* #35 "Medicina Nuclear" "Medicina Nuclear"
* #36 "Medicina de Urgencia" "Medicina de Urgencia"
* #37 "Nefrología Adulto" "Nefrología Adulto"
* #38 "Nefrología Pediátrico" "Nefrología Pediátrico"
* #39 "Neonatología" "Neonatología"
* #40 "Neurocirugía" "Neurocirugía"
* #41 "Neurología Adulto" "Neurología Adulto"
* #42 "Neurología Pediátrica" "Neurología Pediátrica"
* #43 "Obstetricia y Ginecología" "Obstetricia y Ginecología"
* #44 "Oftalmología" "Oftalmología"
* #45 "Oncología Médica" "Oncología Médica"
* #46 "Otorrinolaringología" "Otorrinolaringología"
* #47 "Pediatría" "Pediatría"
* #48 "Psiquiatría Adulto" "Psiquiatría Adulto"
* #49 "Psiquiatría Pediátrica y de la Adolescencia" "Psiquiatría Pediátrica y de la Adolescencia"
* #50 "Radioterapia Oncológica" "Radioterapia Oncológica"
* #51 "Reumatología" "Reumatología"
* #52 "Salud Pública" "Salud Pública"
* #53 "Traumatología y Ortopedia" "Traumatología y Ortopedia"
* #54 "Urología" "Urología"
* #55 "Cardiología Pediátrica" "Cardiología Pediátrica"
* #56 "Cirugía Digestiva" "Cirugía Digestiva"
* #57 "Cirugía Plástica y Reparadora Pediátrica" "Cirugía Plástica y Reparadora Pediátrica"
* #58 "Ginecología" "Ginecología"
* #59 "Hemato-Oncología Pediátrica" "Hemato-Oncología Pediátrica"
* #60 "Infectología Pediátrica" "Infectología Pediátrica"
* #61 "Medicina Familiar del Niño" "Medicina Familiar del Niño"
* #62 "Medicina Física y Rehabilitación Pediátrica (Fisiatría Pediátrica)" "Medicina Física y Rehabilitación Pediátrica (Fisiatría Pediátrica)"
* #63 "Nutriólogo" "Nutriólogo"
* #64 "Nutriólogo Pediátrico" "Nutriólogo Pediátrico"
* #65 "Reumatología Pediátrica" "Reumatología Pediátrica"
* #66 "Obstetricia" "Obstetricia"
* #67 "Traumatología y Ortopedia Pediátrica" "Traumatología y Ortopedia Pediátrica"
* #68 "Urología Pediátrica" "Urología Pediátrica"


ValueSet: VSCodigosRegionesCL
Id: VSCodigosRegionesCL
Title: "Códigos de Regiones en Chile"
Description:  "Códigos de Regiones para Chile según Códigos Únicos Territoriales Actualizados, por Decreto exento No 817 del Ministerio del Interior"
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSCodRegionCL

CodeSystem: CSCodRegionCL
Id: CSCodRegionCL
Title: "Códigos de Regiones en Chile"
Description:  "Códigos de Regiones para Chile según Códigos Únicos Territoriales Actualizados, por Decreto exento No 817 del Ministerio del Interior"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #15 "Arica y Parinacota" "Arica y Parinacota"
* #01 "Tarapacá" "Tarapacá"
* #02 "Antofagasta" "Antofagasta"
* #03 "Atacama" "Atacama"
* #04 "Coquimbo" "Coquimbo"
* #05 "Valparaíso" "Valparaíso"
* #13 "Metropolitana de Santiago" "Metropolitana de Santiago"
* #06 "Del Libertador Gral. Bernardo O'Higgins" "Del Libertador Gral. Bernardo O'Higgins"
* #07 "Del Maule" "Del Maule"
* #08 "Del Biobío" "Del Biobío"
* #09 "De la Araucanía" "De la Araucanía"
* #14 "De los Ríos" "De los Ríos"
* #10 "De los Lagos" "De los Lagos"
* #11 "Aysén del Gral. Carlos Ibáñez del Campo" "Aysén del Gral. Carlos Ibáñez del Campo"
* #12 "Magallanes y de la Antártica Chilena" "Magallanes y de la Antártica Chilena"
* #16 "Ñuble" "Ñuble"

ValueSet: VSCodigosProvinciasCL
Id: VSCodigosProvinciasCL
Title: "Códigos de Provincias en Chile"
Description:  "Códigos de Provincias para Chile según Códigos Únicos Territoriales Actualizados, por Decreto exento No 817 del Ministerio del Interior"
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSCodProvinciasCL

CodeSystem: CSCodProvinciasCL
Id: CSCodProvinciasCL
Title: "Códigos de Provincias en Chile"
Description:  "Códigos de Provincias para Chile según Códigos Únicos Territoriales Actualizados, por Decreto exento No 817 del Ministerio del Interior"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #122 "Antártica Chilena" "Antártica Chilena"
* #021 "Antofagasta"  "Antofagasta"
* #082 "Arauco" "Arauco"
* #151 "Arica" "Arica"
* #112 "Aysén" "Aysén"
* #083 "Biobío" "Biobío"
* #061 "Cachapoal" "Cachapoal"
* #113 "Capitán Prat" "Capitán Prat"
* #062 "Cardenal Caro" "Cardenal Caro"
* #072 "Cauquenes" "Cauquenes"
* #091 "Cautín" "Cautín"
* #133 "Chacabuco" "Chacabuco"
* #032 "Chañaral" "Chañaral"
* #102 "Chiloé" "Chiloé"
* #042 "Choapa" "Choapa"
* #111 "Coihaique" "Coihaique"
* #063 "Colchagua" "Colchagua"
* #081 "Concepción" "Concepción"
* #031 "Copiapó" "Copiapó"
* #132 "Cordillera" "Cordillera"
* #073 "Curicó" "Curicó"
* #161 "Diguillín" "Diguillín"
* #022 "El Loa" "El Loa"
* #041 "Elqui" "Elqui"
* #114 "General Carrera" "General Carrera"
* #033 "Huasco" "Huasco"
* #011 "Iquique" "Iquique"
* #052 "Isla de Pascua" "Isla de Pascua"
* #162 "Itata" "Itata"
* #043 "Limarí" "Limarí"
* #074 "Linares" "Linares"
* #101 "Llanquihue" "Llanquihue"
* #053 "Los Andes" "Los Andes"
* #121 "Magallanes" "Magallanes"
* #134 "Maipo" "Maipo"
* #092 "Malleco" "Malleco"
* #058 "Marga Marga" "Marga Marga"
* #135 "Melipilla" "Melipilla"
* #103 "Osorno" "Osorno"
* #104 "Palena" "Palena"
* #152 "Parinacota" "Parinacota"
* #054 "Petorca" "Petorca"
* #163 "Punilla" "Punilla"
* #055 "Quillota" "Quillota"
* #142 "Ranco" "Ranco"
* #056 "San Antonio" "San Antonio"
* #057 "San Felipe de Aconcagua" "San Felipe de Aconcagua"
* #131 "Santiago" "Santiago"
* #136 "Talagante" "Talagante"
* #071 "Talca" "Talca"
* #014 "Tamarugal" "Tamarugal"
* #123 "Tierra del Fuego" "Tierra del Fuego"
* #023 "Tocopilla" "Tocopilla"
* #124 "Última Esperanza" "Última Esperanza"
* #141 "Valdivia" "Valdivia"
* #051 "Valparaíso" "Valparaíso" 


ValueSet: VSCodigosComunaCL
Id: VSCodigosComunaCL
Title: "Códigos de Comunas en Chile"
Description:  "Códigos de Comunas para Chile según Códigos Únicos Territoriales Actualizados, por Decreto exento No 817 del Ministerio del Interior"
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSCodComunasCL

CodeSystem: CSCodComunasCL
Id: CSCodComunasCL
Title: "Códigos de Comunas en Chile"
Description:  "Códigos de Comunas para Chile según Códigos Únicos Territoriales Actualizados, por Decreto exento No 817 del Ministerio del Interior"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^caseSensitive = true
* ^experimental = false //dependera del uso que le den al codesystem

* #05602 "Algarrobo" "Algarrobo"
* #13502 "Alhué" "Alhué"
* #08314 "Alto Biobío" "Alto Biobío"
* #03302 "Alto del Carmen" "Alto del Carmen"
* #01107 "Alto Hospicio" "Alto Hospicio"
* #10202 "Ancud" "Ancud"
* #04103 "Andacollo" "Andacollo"
* #09201 "Angol" "Angol"
* #12202 "Antartica" "Antartica"
* #02101 "Antofagasta" "Antofagasta"
* #08302 "Antuco" "Antuco"
* #08202 "Arauco" "Arauco"
* #15101 "Arica" "Arica"
* #11201 "Aysén" "Aysén"
* #13402 "Buin" "Buin"
* #16102 "Bulnes" "Bulnes"
* #05402 "Cabildo" "Cabildo"
* #12201 "Cabo de Hornos" "Cabo de Hornos"
* #08303 "Cabrero" "Cabrero"
* #02201 "Calama" "Calama"
* #10102 "Calbuco" "Calbuco"
* #03102 "Caldera" "Caldera"
* #05502 "Calera" "Calera"
* #13403 "Calera de Tango" "Calera de Tango"
* #05302 "Calle Larga" "Calle Larga"
* #15102 "Camarones" "Camarones"
* #01402 "Camiña" "Camiña"
* #04202 "Canela" "Canela"
* #08203 "Cañete" "Cañete"
* #09102 "Carahue" "Carahue"
* #05603 "Cartagena" "Cartagena"
* #05102 "Casablanca" "Casablanca"
* #10201 "Castro" "Castro"
* #05702 "Catemu" "Catemu"
* #07201 "Cauquenes" "Cauquenes"
* #13102 "Cerrillos" "Cerrillos"
* #13103 "Cerro Navia" "Cerro Navia"
* #10401 "Chaitén" "Chaitén"
* #03201 "Chañaral" "Chañaral"
* #07202 "Chanco" "Chanco"
* #06302 "Chépica" "Chépica"
* #08103 "Chiguayante" "Chiguayante"
* #11401 "Chile Chico" "Chile Chico"
* #16101 "Chillán" "Chillán"
* #16103 "Chillán Viejo" "Chillán Viejo"
* #06303 "Chimbarongo" "Chimbarongo"
* #09121 "Cholchol" "Cholchol"
* #10203 "Chonchi" "Chonchi"
* #11202 "Cisnes" "Cisnes"
* #16202 "Cobquecura" "Cobquecura"
* #10103 "Cochamó" "Cochamó"
* #11301 "Cochrane" "Cochrane"
* #06102 "Codegua" "Codegua"
* #16203 "Coelemu" "Coelemu"
* #11101 "Coihaique" "Coihaique"
* #16302 "Coihueco" "Coihueco"
* #06103 "Coinco" "Coinco"
* #07402 "Colbún" "Colbún"
* #01403 "Colchane" "Colchane"
* #13301 "Colina" "Colina"
* #09202 "Collipulli" "Collipulli"
* #06104 "Coltauco" "Coltauco"
* #04302 "Combarbalá" "Combarbalá"
* #08101 "Concepción" "Concepción"
* #13104 "Conchalí" "Conchalí"
* #05103 "Concón" "Concón"
* #07102 "Constitución" "Constitución"
* #08204 "Contulmo" "Contulmo"
* #03101 "Copiapó" "Copiapó"
* #04102 "Coquimbo" "Coquimbo"
* #08102 "Coronel" "Coronel"
* #14102 "Corral" "Corral"
* #09103 "Cunco" "Cunco"
* #09203 "Curacautín" "Curacautín"
* #13503 "Curacaví" "Curacaví"
* #10204 "Curaco de Vélez" "Curaco de Vélez"
* #08205 "Curanilahue" "Curanilahue"
* #09104 "Curarrehue" "Curarrehue"
* #07103 "Curepto" "Curepto"
* #07301 "Curicó" "Curicó"
* #10205 "Dalcahue" "Dalcahue"
* #03202 "Diego de Almagro" "Diego de Almagro"
* #06105 "Doñihue" "Doñihue"
* #13105 "El Bosque" "El Bosque"
* #16104 "El Carmen" "El Carmen"
* #13602 "El Monte" "El Monte"
* #05604 "El Quisco" "El Quisco"
* #05605 "El Tabo" "El Tabo"
* #07104 "Empedrado" "Empedrado"
* #09204 "Ercilla" "Ercilla"
* #13106 "Estacin Central" "Estacin Central"
* #08104 "Florida" "Florida"
* #09105 "Freire" "Freire"
* #03303 "Freirina" "Freirina"
* #10104 "Fresia" "Fresia"
* #10105 "Frutillar" "Frutillar"
* #10402 "Futaleufú" "Futaleufú"
* #14202 "Futrono" "Futrono"
* #09106 "Galvarino" "Galvarino"
* #15202 "General Lagos" "General Lagos"
* #09107 "Gorbea" "Gorbea"
* #06106 "Graneros" "Graneros"
* #11203 "Guaitecas" "Guaitecas"
* #05503 "Hijuelas" "Hijuelas"
* #10403 "Hualaihué" "Hualaihué"
* #07302 "Hualañé" "Hualañé"
* #08112 "Hualpén" "Hualpén"
* #08105 "Hualqui" "Hualqui"
* #01404 "Huara" "Huara"
* #03304 "Huasco" "Huasco"
* #13107 "Huechuraba" "Huechuraba"
* #04201 "Illapel" "Illapel"
* #13108 "Independencia" "Independencia"
* #01101 "Iquique" "Iquique"
* #13603 "Isla de Maipo" "Isla de Maipo"
* #05201 "Isla de Pascua" "Isla de Pascua"
* #05104 "Juan Fernández" "Juan Fernández"
* #13109 "La Cisterna" "La Cisterna"
* #05504 "La Cruz" "La Cruz"
* #06202 "La Estrella" "La Estrella"
* #13110 "La Florida" "La Florida"
* #13111 "La Granja" "La Granja"
* #04104 "La Higuera" "La Higuera"
* #05401 "La Ligua" "La Ligua"
* #13112 "La Pintana" "La Pintana"
* #13113 "La Reina" "La Reina"
* #04101 "La Serena" "La Serena"
* #14201 "La Unión" "La Unión"
* #14203 "Lago Ranco" "Lago Ranco"
* #11102 "Lago Verde" "Lago Verde"
* #12102 "Laguna Blanca" "Laguna Blanca"
* #08304 "Laja" "Laja"
* #13302 "Lampa" "Lampa"
* #14103 "Lanco" "Lanco"
* #06107 "Las Cabras" "Las Cabras"
* #13114 "Las Condes" "Las Condes"
* #09108 "Lautaro" "Lautaro"
* #08201 "Lebu" "Lebu"
* #07303 "Licantén" "Licantén"
* #05802 "Limache" "Limache"
* #07401 "Linares" "Linares"
* #06203 "Litueche" "Litueche"
* #05703 "Llaillay" "Llaillay"
* #10107 "Llanquihue" "Llanquihue"
* #13115 "Lo Barnechea" "Lo Barnechea"
* #13116 "Lo Espejo" "Lo Espejo"
* #13117 "Lo Prado" "Lo Prado"
* #06304 "Lolol" "Lolol"
* #09109 "Loncoche" "Loncoche"
* #07403 "Longaví" "Longaví"
* #09205 "Lonquimay" "Lonquimay"
* #08206 "Los Álamos" "Los Álamos"
* #05301 "Los Andes" "Los Andes"
* #08301 "Los Ángeles" "Los Ángeles"
* #14104 "Los Lagos" "Los Lagos"
* #10106 "Los Muermos" "Los Muermos"
* #09206 "Los Sauces" "Los Sauces"
* #04203 "Los Vilos" "Los Vilos"
* #08106 "Lota" "Lota"
* #09207 "Lumaco" "Lumaco"
* #06108 "Machalí" "Machalí"
* #13118 "Macul" "Macul"
* #14105 "Máfil" "Máfil"
* #13119 "Maipú" "Maipú"
* #06109 "Malloa" "Malloa"
* #06204 "Marchihue" "Marchihue"
* #02302 "María Elena" "María Elena"
* #13504 "María Pinto" "María Pinto"
* #14106 "Mariquina" "Mariquina"
* #07105 "Maule" "Maule"
* #10108 "Maullín" "Maullín"
* #02102 "Mejillones" "Mejillones"
* #09110 "Melipeuco" "Melipeuco"
* #13501 "Melipilla" "Melipilla"
* #07304 "Molina" "Molina"
* #04303 "Monte Patria" "Monte Patria"
* #06110 "Mostazal" "Mostazal"
* #08305 "Mulchén" "Mulchén"
* #08306 "Nacimiento" "Nacimiento"
* #06305 "Nancagua" "Nancagua"
* #12401 "Natales" "Natales"
* #06205 "Navidad" "Navidad"
* #08307 "Negrete" "Negrete"
* #16204 "Ninhue" "Ninhue"
* #16303 "Ñiquén" "Ñiquén"
* #05506 "Nogales" "Nogales"
* #09111 "Nueva Imperial" "Nueva Imperial"
* #13120 "ÑuÑoa" "ÑuÑoa"
* #06111 "Olivar" "Olivar"
* #02202 "Ollagüe" "Ollagüe"
* #05803 "Olmué" "Olmué"
* #10301 "Osorno" "Osorno"
* #04301 "Ovalle" "Ovalle"
* #11302 "O'Higgins" "O'Higgins"
* #13604 "Padre Hurtado" "Padre Hurtado"
* #09112 "Padre las Casas" "Padre las Casas"
* #04105 "Paiguano" "Paiguano"
* #14107 "Paillaco" "Paillaco"
* #13404 "Paine" "Paine"
* #10404 "Palena" "Palena"
* #06306 "Palmilla" "Palmilla"
* #14108 "Panguipulli" "Panguipulli"
* #05704 "Panquehue" "Panquehue"
* #05403 "Papudo" "Papudo"
* #06206 "Paredones" "Paredones"
* #07404 "Parral" "Parral"
* #13121 "Pedro Aguirre Cerda" "Pedro Aguirre Cerda"
* #07106 "Pelarco" "Pelarco"
* #07203 "Pelluhue" "Pelluhue"
* #16105 "Pemuco" "Pemuco"
* #13605 "Peñaflor" "Peñaflor"
* #13122 "Peñalolén" "Peñalolén"
* #07107 "Pencahue" "Pencahue"
* #08107 "Penco" "Penco"
* #06307 "Peralillo" "Peralillo"
* #09113 "Perquenco" "Perquenco"
* #05404 "Petorca" "Petorca"
* #06112 "Peumo" "Peumo"
* #01405 "Pica" "Pica"
* #06113 "Pichidegua" "Pichidegua"
* #06201 "Pichilemu" "Pichilemu"
* #16106 "Pinto" "Pinto"
* #13202 "Pirque" "Pirque"
* #09114 "Pitrufquén" "Pitrufquén"
* #06308 "Placilla" "Placilla"
* #16205 "Portezuelo" "Portezuelo"
* #12301 "Porvenir" "Porvenir"
* #01401 "Pozo Almonte" "Pozo Almonte"
* #12302 "Primavera" "Primavera"
* #13123 "Providencia" "Providencia"
* #05105 "Puchuncaví" "Puchuncaví"
* #09115 "Pucón" "Pucón"
* #13124 "Pudahuel" "Pudahuel"
* #13201 "Puente Alto" "Puente Alto"
* #10101 "Puerto Montt" "Puerto Montt"
* #10302 "Puerto Octay" "Puerto Octay"
* #10109 "Puerto Varas" "Puerto Varas"
* #06309 "Pumanque" "Pumanque"
* #04304 "Punitaqui" "Punitaqui"
* #12101 "Punta Arenas" "Punta Arenas"
* #10206 "Puqueldón" "Puqueldón"
* #09208 "Purén" "Purén"
* #10303 "Purranque" "Purranque"
* #05705 "Putaendo" "Putaendo"
* #15201 "Putre" "Putre"
* #10304 "Puyehue" "Puyehue"
* #10207 "Queilén" "Queilén"
* #10208 "Quellón" "Quellón"
* #10209 "Quemchi" "Quemchi"
* #08308 "Quilaco" "Quilaco"
* #13125 "Quilicura" "Quilicura"
* #08309 "Quilleco" "Quilleco"
* #16107 "Quillón" "Quillón"
* #05501 "Quillota" "Quillota"
* #05801 "Quilpué" "Quilpué"
* #10210 "Quinchao" "Quinchao"
* #06114 "Quinta de Tilcoco" "Quinta de Tilcoco"
* #13126 "Quinta Normal" "Quinta Normal"
* #05107 "Quintero" "Quintero"
* #16201 "Quirihue" "Quirihue"
* #06101 "Rancagua" "Rancagua"
* #16206 "Ránquil" "Ránquil"
* #07305 "Rauco" "Rauco"
* #13127 "Recoleta" "Recoleta"
* #09209 "Renaico" "Renaico"
* #13128 "Renca" "Renca"
* #06115 "Rengo" "Rengo"
* #06116 "Requínoa" "Requínoa"
* #07405 "Retiro" "Retiro"
* #05303 "Rinconada" "Rinconada"
* #14204 "Río Bueno" "Río Bueno"
* #07108 "Río Claro" "Río Claro"
* #04305 "Río Hurtado" "Río Hurtado"
* #11402 "Río Ibáñez" "Río Ibáñez"
* #10305 "Río Negro" "Río Negro"
* #12103 "Río Verde" "Río Verde"
* #07306 "Romeral" "Romeral"
* #09116 "Saavedra" "Saavedra"
* #07307 "Sagrada Familia" "Sagrada Familia"
* #04204 "Salamanca" "Salamanca"
* #05601 "San Antonio" "San Antonio"
* #13401 "San Bernardo" "San Bernardo"
* #16301 "San Carlos" "San Carlos"
* #07109 "San Clemente" "San Clemente"
* #05304 "San Esteban" "San Esteban"
* #16304 "San Fabián" "San Fabián"
* #05701 "San Felipe" "San Felipe"
* #06301 "San Fernando" "San Fernando"
* #12104 "San Gregorio" "San Gregorio"
* #16108 "San Ignacio" "San Ignacio"
* #07406 "San Javier" "San Javier"
* #13129 "San Joaquín" "San Joaquín"
* #13203 "San José de Maipo" "San José de Maipo"
* #10306 "San Juan de la Costa" "San Juan de la Costa"
* #13130 "San Miguel" "San Miguel"
* #16305 "San Nicolás" "San Nicolás"
* #10307 "San Pablo" "San Pablo"
* #13505 "San Pedro" "San Pedro"
* #02203 "San Pedro de Atacama" "San Pedro de Atacama"
* #08108 "San Pedro de la Paz" "San Pedro de la Paz"
* #07110 "San Rafael" "San Rafael"
* #13131 "San Ramón" "San Ramón"
* #08310 "San Rosendo" "San Rosendo"
* #06117 "San Vicente" "San Vicente"
* #08311 "Santa Bárbara" "Santa Bárbara"
* #06310 "Santa Cruz" "Santa Cruz"
* #08109 "Santa Juana" "Santa Juana"
* #05706 "Santa María" "Santa María"
* #13101 "Santiago Centro" "Santiago Centro"
* #05606 "Santo Domingo" "Santo Domingo"
* #02103 "Sierra Gorda" "Sierra Gorda"
* #13601 "Talagante" "Talagante"
* #07101 "Talca" "Talca"
* #08110 "Talcahuano" "Talcahuano"
* #02104 "Taltal" "Taltal"
* #09101 "Temuco" "Temuco"
* #07308 "Teno" "Teno"
* #09117 "Teodoro Schmidt" "Teodoro Schmidt"
* #03103 "Tierra Amarilla" "Tierra Amarilla"
* #13303 "Tiltil" "Tiltil"
* #12303 "Timaukel" "Timaukel"
* #08207 "Tirúa" "Tirúa"
* #02301 "Tocopilla" "Tocopilla"
* #09118 "Toltén" "Toltén"
* #08111 "Tomé" "Tomé"
* #12402 "Torres del Paine" "Torres del Paine"
* #11303 "Tortel" "Tortel"
* #09210 "Traiguén" "Traiguén"
* #16207 "Treguaco" "Treguaco"
* #08312 "Tucapel" "Tucapel"
* #14101 "Valdivia" "Valdivia"
* #03301 "Vallenar" "Vallenar"
* #05101 "Valparaíso" "Valparaíso"
* #07309 "Vichuqué" "Vichuqué"
* #09211 "Victoria" "Victoria"
* #04106 "Vicuña" "Vicuña"
* #09119 "Vilcún" "Vilcún"
* #07407 "Villa Alegre" "Villa Alegre"
* #05804 "Villa Alemana" "Villa Alemana"
* #09120 "Villarrica" "Villarrica"
* #05109 "Viña del Mar" "Viña del Mar"
* #13132 "Vitacura" "Vitacura"
* #07408 "Yerbas Buenas" "Yerbas Buenas"
* #08313 "Yumbel" "Yumbel"
* #16109 "Yungay" "Yungay"
* #05405 "Zapallar" "Zapallar"

ValueSet: VSTiposDocClinico
Id: VSTiposDocClinico
Title: "Tipos de Documentos Clínicos"
Description: "Tipos de Documentos clínicos para Composition. Se trae todo Loinc, se requerirá un VS específico"
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2022-05-21T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"

* codes from system http://loinc.org

/*
CodeSystem: CSRazonNOencuentroCL
Id: CSRazonNOT
Title: "Razones Cancelación Atención Remota"
Description: "Códigos de las razones por la cual un encuentro remoto no pudo realizarse según indicaciones del Ministerio de Salud"
* ^experimental = false
* ^caseSensitive = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-05-22T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #pierdeLlam	"El participante pierde la llamada"
* #finaLlam "El participante finalizó la llamada abruptamente"
* #problConex "El participante tuvo problemas de conexión a internet"
* #medproblConex "Tuve problemas de conexión a internet"
* #otros "Otros / texto libre"
*/

ValueSet: VSTiposVacunasCL
Id: VSTiposVacunas
Title: "Tipos de Vacunas RNI"
Description: "Tipos de Vacunas utilizadas en Chile según CodeSystem local"
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2022-06-05T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSTiposVacunaCL

CodeSystem: CSTiposVacunaCL
Id: CSCodigoVacunas
Title: "Códigos de Vacunas RNI"
Description: "Códigos de las vacunas o inmunizaciones según indicaciones del Ministerio de Salud"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2022-06-05T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #actacelPriv	"Actacel (sector privado)"	"Actacel (sector privado)"
* #antirr	"Antirrábica"	"Antirrábica"
* #antirrPriv	"Antirrábica (sector privado)"	"Antirrábica (sector privado)"
* #antitifoInyPriv	"Antitifoidea inyectable (sector privado)"	"Antitifoidea inyectable (sector privado)"
* #bcgMat	"BCG MATERNIDAD"	"BCG MATERNIDAD"
* #bcg_mat	"BCG_maternidad"	"BCG_maternidad"
* #fiebreAmar	"Fiebre Amarilla"	"Fiebre Amarilla"
* #hep_A	"Hepatítis A"	"Hepatítis A"
* #hep_A_adult	"Hepatitis A adulto"	"Hepatitis A adulto"
* #hep_A_adultPriv	"Hepatitis A adulto (sector privado)"	"Hepatitis A adulto (sector privado)"
* #hep_A_ped	"Hepatitis A pediátrica"	"Hepatitis A pediátrica"
* #hep_A_pedPriv	"Hepatitis A pediátrica (sector privado)"	"Hepatitis A pediátrica (sector privado)"
* #hep_A-B_adultPriv	"Hepatitis A-B adulto (sector privado)"	"Hepatitis A-B adulto (sector privado)"
* #hep_A-B_pedPriv	"Hepatitis A-B pediátrica (sector privado)"	"Hepatitis A-B pediátrica (sector privado)"
* #hep_B_adult	"Hepatitis B adulto"	"Hepatitis B adulto"
* #hep_B_adultPriv	"Hepatitis B adulto (sector privado)"	"Hepatitis B adulto (sector privado)"
* #hep_B_dializAdult	"Hepatitis B dializados adulto"	"Hepatitis B dializados adulto"
* #hep_B_dializPed	"Hepatitis B dializados pediátrica"	"Hepatitis B dializados pediátrica"
* #hep_B_ped	"Hepatitis B pediátrica"	"Hepatitis B pediátrica"
* #hep_B_pedPriv	"Hepatitis B pediátrica (sector privado)"	"Hepatitis B pediátrica (sector privado)"
* #hep_B_maternidad	"Hepatitis B_maternidad"	"Hepatitis B_maternidad"
* #herpesZPriv	"Herpes Zoster (sector privado)"	"Herpes Zoster (sector privado)"
* #hexavalent	"Hexavalente"	"Hexavalente"
* #hezavalentPriv	"Hexavalente (sector privado)"	"Hexavalente (sector privado)"
* #inmAntitetanic	"INMUNOGLOBULINA ANTITETANICA"	"INMUNOGLOBULINA ANTITETANICA"
* #inmAntiVaricela	"Inmunoglobulina anti varicela"	"Inmunoglobulina anti varicela"
* #inmAntirrabica	"Inmunoglobulina antirrábica"	"Inmunoglobulina antirrábica"
* #inmAntirrabicaPriv	"Inmunoglobulina antirrábica (sector privado)"	"Inmunoglobulina antirrábica (sector privado)"
* #inmAntitetanica	"Inmunoglobulina Antitetánica"	"Inmunoglobulina Antitetánica"
* #inmEstandarH_A	"Inmunoglobulina estandar (Hep. A)"	"Inmunoglobulina estandar (Hep. A)"
* #inmEstandarSaramp	"Inmunoglobulina estandar (Sarampión)"	"Inmunoglobulina estandar (Sarampión)"
* #inmEstandarVaric	"Inmunoglobulina estandar (Varicela)"	"Inmunoglobulina estandar (Varicela)"
* #inmHepat_B	"Inmunoglobulina Hepatitis B"	"Inmunoglobulina Hepatitis B"
* #neumococicaConj10V	"Neumocócica conjugada 10V"	"Neumocócica conjugada 10V"
* #neomococicaConj10VPriv	"Neumocócica conjugada 10V (sector privado)"	"Neumocócica conjugada 10V (sector privado)"
* #neumococicaConj13V	"Neumocócica conjugada 13V"	"Neumocócica conjugada 13V"
* #neumococicaConj13VPriv	"Neumocócica conjugada 13V (sector privado)"	"Neumocócica conjugada 13V (sector privado)"
* #neumococicaPolisac23V	"Neumocócica polisacárida 23V"	"Neumocócica polisacárida 23V"
* #neumococicaPolisac23VPriv	"Neumocócica polisacárida 23V (sector privado)"	"Neumocócica polisacárida 23V (sector privado)"
* #pentavalente	"Pentavalente"	"Pentavalente"
* #polioInactIny	"Polio inactivada inyectable"	"Polio inactivada inyectable"
* #polioInactInyPriv	"Polio inactivada inyectable (sector privado)"	"Polio inactivada inyectable (sector privado)"
* #polioOralBival_boPV	"Polio oral bivalente (bOPV)"	"Polio oral bivalente (bOPV)"
* #polioOralTrival	"Polio oral trivalente"	"Polio oral trivalente"
* #rotavirus	"Rotavirus"	"Rotavirus"
* #rotavirusPriv	"Rotavirus (sector privado)"	"Rotavirus (sector privado)"
* #saramp_rube_paper	"Sarampión-Rubeóla-Paperas"	"Sarampión-Rubeóla-Paperas"
* #toxoideDTPriv	"Toxoide DT (sector privado)"	"Toxoide DT (sector privado)"
* #toxoideDTEscol	"TOXOIDE DT ESCOLAR"	"TOXOIDE DT ESCOLAR"
* #toxoideDTProfil	"TOXOIDE DT PROFILAXIS"	"TOXOIDE DT PROFILAXIS"
* #vacunaAntiten	"VACUNA ANTITETÁNICA"	"VACUNA ANTITETÁNICA"
* #vacunaAntitenPriv	"Vacuna Antitetánica (sector privado)"	"Vacuna Antitetánica (sector privado)"
* #vacunaBCG	"VACUNA BCG"	"VACUNA BCG"
* #vacunaBexsero	"VACUNA BEXSERO"	"VACUNA BEXSERO"
* #vacunaBexseroPriv	"VACUNA BEXSERO (Sector privado)"	"VACUNA BEXSERO (Sector privado)"
* #vacunaDPT	"VACUNA DPT"	"VACUNA DPT"
* #vacunadpTaPriv	"Vacuna dpTa (sector privado)"	"Vacuna dpTa (sector privado)"
* #vacunadtPa	"Vacuna dTpa"	"Vacuna dTpa"
* #vacunaHepat_AyB	"VACUNA HEPATITIS A Y B"	"VACUNA HEPATITIS A Y B"
* #vacunaHIB	"VACUNA HIB"	"VACUNA HIB"
* #vacunaHIBPriv	"Vacuna HIB (sector privado)"	"Vacuna HIB (sector privado)"
* #vacunaInfluTrival	"VACUNA INFLUENZA TRIVALENTE"	"VACUNA INFLUENZA TRIVALENTE"
* #vacunaMenacPriv	"VACUNA MENACTRA (Sector privado)"	"VACUNA MENACTRA (Sector privado)"
* #vacunaMenveo	"VACUNA MENVEO"	"VACUNA MENVEO"
* #vacunaMenveoPriv	"VACUNA MENVEO (Sector privado)"	"VACUNA MENVEO (Sector privado)"
* #vacunaNeumoco7V	"VACUNA NEUMOCOCICA 7 V"	"VACUNA NEUMOCOCICA 7 V"
* #vacunaNimenrix	"VACUNA NIMENRIX"	"VACUNA NIMENRIX"
* #vacunaNimenrixPriv	"VACUNA NIMENRIX (sector privado)"	"VACUNA NIMENRIX (sector privado)"
* #vacunaPoliomielInact	"VACUNA POLIOMIELITIS INACTIVADA"	"VACUNA POLIOMIELITIS INACTIVADA"
* #vacunaSRPt3VMonodos	"VACUNA SRP (TRES VIRICA) MONODOSIS"	"VACUNA SRP (TRES VIRICA) MONODOSIS"
* #vacunaSRP3VMultidos	"VACUNA SRP (TRES VIRICA) MULTIDOSIS"	"VACUNA SRP (TRES VIRICA) MULTIDOSIS"
* #vacunaSRPTrivMonodos	"Vacuna SRP (trivirica) Monodosis"	"Vacuna SRP (trivirica) Monodosis"
* #vacunaSRPTrivMultidos	"Vacuna SRP (trivirica) Multidosis"	"Vacuna SRP (trivirica) Multidosis"
* #varicela	"Varicela"	"Varicela"
* #varicelaPriv	"Varicela (sector privado)"	"Varicela (sector privado)"
* #VPHBivalPriv	"VPH Bivalente (sector privado)"	"VPH Bivalente (sector privado)"
* #VPHNonavalPriv	"VPH Nonavalente (sector privado)"	"VPH Nonavalente (sector privado)"
* #VPHTetraval	"VPH Tetravalente"	"VPH Tetravalente"
* #VPHTretavalPriv	"VPH Tetravalente (sector privado)"	"VPH Tetravalente (sector privado)"

ValueSet: VSNombreCampanaCL
Id: VSNombreCampana
Title: "Campañas de Vacunación"
Description: "Campañas de Inmunización utilizada en Chile según CodeSystem local"
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2022-06-05T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSNombreCampanaCL

CodeSystem: CSNombreCampanaCL
Id: CSNombreCampana
Title: "Campañas Inmunización"
Description: "Códigos de las campañas de vacunas o inmunizaciones según indicaciones del Ministerio de Salud"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2022-06-05T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"


* #campanSARSCov_2_AstraZ	"Campaña SARS-CoV-2 (AstraZeneca)"	"Campaña SARS-CoV-2 (AstraZeneca)"
* #campanSARSCov_2_Cansino	"Campaña SARS-CoV-2 (CanSino)"	"Campaña SARS-CoV-2 (CanSino)"
* #campanSARSCov_2_Intern	"Campaña SARS-CoV-2 (Internacional)"	"Campaña SARS-CoV-2 (Internacional)"
* #campanSARSCov_2_Janssen	"Campaña SARS-CoV-2 (Janssen)"	"Campaña SARS-CoV-2 (Janssen)"
* #campanSARSCov_2_Moderna	"Campaña SARS-CoV-2 (Moderna)"	"Campaña SARS-CoV-2 (Moderna)"
* #campanSARSCov_2_Pfizer	"Campaña SARS-CoV-2 (Pfizer)"	"Campaña SARS-CoV-2 (Pfizer)"
* #campanSARSCov_2_Sinovac	"Campaña SARS-CoV-2 (Sinovac)"	"Campaña SARS-CoV-2 (Sinovac)"
* #campanSRP20_40	"Campaña SRP 20 - 24 años"	"Campaña SRP 20 - 24 años"
* #estratCapullo	"Estrategia Capullo"	"Estrategia Capullo"
* #estratCapullo2013	"Estrategia Capullo 2013"	"Estrategia Capullo 2013"
* #estratMeningocócica	"Estrategia Meningocócica"	"Estrategia Meningocócica"
* #hepatiA	"Hepatitis A"	"Hepatitis A"
* #hepatiA2012	"Hepatitis A 2012"	"Hepatitis A 2012"
* #hepatiApost_Terr	"Hepatitis A post-terremoto"	"Hepatitis A post-terremoto"
* #hepatiAar_Tar_Bio	"Hepatitis A, Arica-Tarapacá-Bíobío"	"Hepatitis A, Arica-Tarapacá-Bíobío"
* #hepatiABrote_Conting	"Hepatitis A,Brote/Contingencia"	"Hepatitis A,Brote/Contingencia"
* #influenza2010	"Influenza 2010"	"Influenza 2010"
* #influenza2011	"Influenza 2011"	"Influenza 2011"
* #influenza2012	"Influenza 2012"	"Influenza 2012"
* #influenza2013	"Influenza 2013"	"Influenza 2013"
* #influenza2014	"Influenza 2014"	"Influenza 2014"
* #influenza2015	"Influenza 2015"	"Influenza 2015"
* #influenza2016	"Influenza 2016"	"Influenza 2016"
* #influenza2017	"Influenza 2017"	"Influenza 2017"
* #influenza2018	"Influenza 2018"	"Influenza 2018"
* #influenza2019	"Influenza 2019"	"Influenza 2019"
* #influenza2020	"Influenza 2020"	"Influenza 2020"
* #influenza2021	"Influenza 2021"	"Influenza 2021"
* #influenza2022	"Influenza 2022"	"Influenza 2022"
* #sarampRubeoPaperas	"Sarampión-Rubeóla-Paperas"	"Sarampión-Rubeóla-Paperas"
* #SRPCampanSeguim2015	"SRP - Campaña de Seguimiento - 2015"	"SRP - Campaña de Seguimiento - 2015"
* #SRPFuncSaludyPuestosFronteriz	"SRP - Funcionarios de salud y Puestos Fronterizos"	"SRP - Funcionarios de salud y Puestos Fronterizos"
* #SRPCampanSeguim2020	"SRP- Campaña de seguimiento- 2020"	"SRP- Campaña de seguimiento- 2020"
* #SRPdelViajero	"SRP del viajero"	"SRP del viajero"
* #tosConvul_brote_conting	"Tos Convulsiva Brote-Contingencia"	"Tos Convulsiva Brote-Contingencia"
* #vacunaFiebAmar	"Vacuna Fiebre Amarilla"	"Vacuna Fiebre Amarilla"

ValueSet: VSRazonNOTinmCL
Id: VSRazonNOTinm
Title: "Razones no Inmunización"
Description: "Razones por la que no se lleva a cabo la administración de una vacuna o registro de una inmunización según CodeSystem local"
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2022-06-08T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSRazonNOinmunizacionCL

CodeSystem: CSRazonNOinmunizacionCL
Id: CSRazonNOTinm
Title: "Razones no Inmunización"
Description: "Códigos de las razones por la cual el registro de inmunización no pudo realizarse según indicaciones del Ministerio de Salud"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2022-06-10T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #solicitudPaci "Solicitud del paciente" "Solicitud del paciente"
* #otras "Otras" "Otras"
* #contraindicación "Contraindicación" "Contraindicación"
* #solicitudPad "Solicitud de los Padres" "Solicitud de los Padres"


/*
ValueSet: VSCodigosServiciosSaludCL
Id: VSCodigosServiciosSalud
Title: "Servicos de Salud en Chile"
Description:  "Códigos de Servicios de Salud que existen en Chile"
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-06-10T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSCodSSaludCL

CodeSystem: CSCodSSaludCL
Id: CSCodSSalud
Title: "Servicios de Salud Chile"
Description:  "Códigos del Sistema Nacional de Servicios de Salud"
* ^experimental = false
* ^caseSensitive = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-06-10T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #SSA "Servicio de Salud Arica"
* #SSAN "Servicio de Salud Antofagasta"
* #SSAT "Servicio de Salud Atacama"
* #SSC "Servicio de Salud Coquimbo"
* #SSVSA "Servicio de Salud Valparaíso-San Antonio"
* #SSVQ "Servicio de Salud Viña del Mar-Quillota"
* #SSAC "Servicio de Salud Aconcagua"
* #SSMN "Servicio de Salud Metropolitano Norte (SSMN)"
* #SSMOC "Servicio de Salud Metropolitano Occidente (SSMOC)"
* #SSMC "Servicio de Salud Metropolitano Central (SSMC)"
* #SSMS "Servicio de Salud Metropolitano Sur (SSMS)"
* #SSMO "Servicio de Salud Metropolitano Oriente (SSMO)"
* #SSMSO "Servicio de Salud Metropolitano Sur Oriente (SSMSO)"
* #SSOH "Servicio de Salud Libertador B. OHiggins"
* #SSM "Servicio de Salud del Maule"
* #SSÑ "Servicio de Salud Ñuble"
* #SSCO "Servicio de Salud Concepción"
* #SSAR "Servicio de Salud Arauco"
* #SST "Servicio de Salud Talcahuano"
* #SSB "Servicio de Salud Bíobío"
* #SSARN "Servicio de Salud Araucanía Norte"
* #SSAS "Servicio de Salud Araucanía Sur"
* #SSV "Servicio de Salud Valdivia"
* #SSO "Servicio de Salud Osorno"
* #SSR "Servicio de Salud Reloncaví"
* #SSCH "Servicio de Salud Chiloé"
* #SSAY "Servicio de Salud Aysén"
* #SSMA "Servicio de Salud Magallanes"
*/

ValueSet: VSCodigoslenguaje
Id: VSCodigoslenguaje
Title: "Codigos Lenguaje"
Description:  "Códigos de leguaje"
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2022-06-10T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system urn:ietf:bcp:47

// CodeSystem: CSCodigoslenguaje
// Id: CSCodigoslenguaje
// Title: "Codigos Lenguaje"
// Description:  "Codigoslenguaje"
// * ^experimental = false
// * ^caseSensitive = true
// * ^version = "1.0.0"
// * ^status = #active
// * ^date = "2022-06-10T00:00:00-03:00"
// * ^contact.name = "HL7 Chile"
// * ^contact.telecom.system = #email
// * ^contact.telecom.value = "chair@hl7chile.cl"
// * ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

// * #ar-SA "Arabic" "Saudi Arabia, Arabic (Saudi Arabia)"
// * #bn-BD "Bangla" "Bangladesh, Bangla (Bangladesh)"
// * #bn-IN "Bangla" "India, Bangla (India)"
// * #cs-CZ "Czech" "Czech Republic, Czech (Czech Republic)"
// * #da-DK "Danish" "Denmark, Danish (Denmark)"
// * #de-AT "German" "Austria, Austrian German"
// * #de-CH "German" "Switzerland, Swiss German"
// * #de-DE "German" "Germany, Standard German (as spoken in Germany)"
// * #el-GR "Greek" "Greece, Modern Greek"
// * #en-AU "English" "Australia, Australian English"
// * #en-CA "English" "Canada, Canadian English"
// * #en-GB "English" "United Kingdom, British English"
// * #en-IE "English" "Ireland, Irish English"
// * #en-IN "English" "India, Indian English"
// * #en-NZ "English" "New Zealand, New Zealand English"
// * #en-US "English" "United States, US English"
// * #en-ZA "English" "South Africa, English (South Africa)"
// * #es-AR "Spanish" "Argentina, Argentine Spanish"
// * #es "Spanish" "Chile, Chilean Spanish"
// * #es-CO "Spanish" "Columbia, Colombian Spanish"
// * #es-ES "Spanish" "Spain, Castilian Spanish (as spoken in Central-Northern Spain)"
// * #es-MX "Spanish" "Mexico, Mexican Spanish"
// * #es-US "Spanish" "United States, American Spanish"
// * #fi-FI "Finnish" "Finland, Finnish (Finland)"
// * #fr-BE "French" "Belgium, Belgian French"
// * #fr-CA "French" "Canada, Canadian French"
// * #fr-CH "French" "Switzerland, Swiss French"
// * #fr-FR "French" "France, Standard French (especially in France)"
// * #he-IL "Hebrew" "Israel, Hebrew (Israel)"
// * #hi-IN "Hindi" "India, Hindi (India)"
// * #hu-HU "Hungarian" "Hungary, Hungarian (Hungary)"
// * #id-ID "Indonesian" "Indonesia, Indonesian (Indonesia)"
// * #it-CH "Italian" "Switzerland, Swiss Italian"
// * #it-IT "Italian" "Italy, Standard Italian (as spoken in Italy)"
// * #jp-JP "Japanese" "Japan, Japanese (Japan)"
// * #ko-KR "Korean" "Republic of Korea, Korean (Republic of Korea)"
// * #nl-BE "Dutch" "Belgium, Belgian Dutch"
// * #nl-NL "Dutch" "The Netherlands, Standard Dutch (as spoken in The Netherlands)"
// * #no-NO "Norwegian" "Norway, Norwegian (Norway)"
// * #pl-PL "Polish" "Poland, Polish (Poland)"
// * #pt-BR "Portugese" "Brazil, Brazilian Portuguese"
// * #pt-PT "Portugese" "Portugal, European Portuguese (as written and spoken in Portugal)"
// * #ro-RO "Romanian" "Romania, Romanian (Romania)"
// * #ru-RU "Russian" "Russian Federation, Russian (Russian Federation)"
// * #sk-SK "Slovak" "Slovakia, Slovak (Slovakia)"
// * #sv-SE "Swedish" "Sweden, Swedish (Sweden)"
// * #ta-IN "Tamil" "India, Indian Tamil"
// * #ta-LK "Tamil" "Sri Lanka, Sri Lankan Tamil"
// * #th-TH "Thai" "Thailand, Thai (Thailand)"
// * #tr-TR "Turkish" "Turkey, Turkish (Turkey)"
// * #zh-CN "Chinese" "China, Mainland China, simplified characters"
// * #zh-HK "Chinese" "Hond Kong, Hong Kong, traditional characters"
// * #zh-TW "Chinese" "Taiwan, Taiwan, traditional characters"


ValueSet: VSTiposEncuentroCL
Id: VSTiposEncuentroCL
Title: "Tipos de Encuentro"
Description: "Códigos de Encuentros según MINSAL"
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2022-05-21T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSTiposEncuentroCL

CodeSystem: CSTiposEncuentroCL
Id: CSTiposEncuentroCL
Title: "Tipos de Encuentro"
Description: "Códigos de Encuentros según MINSAL"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2022-05-21T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #PR "Programada" "Programada"
* #SP "Espontánea" "Espontánea"
* #CO "Comité" "Comité"


ValueSet: VSTiposServicioCL
Id: VSTiposServicio
Title: "Tipos de Servicios Remotos"
Description: "Tipos de Servicios para encuentro remoto según CodeSystem local"
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2022-05-22T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSCodServicioCL

CodeSystem: CSCodServicioCL
Id: CSCodigoServicio
Title: "Tipos de Servicios Remotos"
Description: "Códigos para los Servicios realizados en un encuentro remoto según indicaciones del Ministerio de Salud"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2022-05-22T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #nutINTA	"Nutrición INTA" "Nutrición INTA"
* #medINTA	"Medicina INTA" "Medicina INTA"
* #medInt	"Medicina Interna" "Medicina Interna"
* #saludMDigital "Salud Mental Digital" "Salud Mental Digital"
* #medGen	"Medicina General" "Medicina General"
* #derm	"Dermatología" "Dermatología"
* #telDiabetes	"Telemedicina Diabetes" "Telemedicina Diabetes"
* #telRehab	"Tele rehabilitación" "Tele rehabilitación"
* #otorrin	"Otorrinolaringología" "Otorrinolaringología"
* #neurInf	"Neurología Infantil" "Neurología Infantil"
* #atencUrgAPS	"Atención de Urgencia APS" "Atención de Urgencia APS"
* #vih	"VIH" "VIH"
* #geri	"Geriatría" "Geriatría"
* #gine	"Ginecología" "Ginecología"

/*
ValueSet: VSContactoSecundario
Id: VSContactosec
Title: "Contacto participantes"
Description: "Contacto telefónico o correo de los participantes"
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-05-25T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* include codes from system ContactPointSystem
	
*/

ValueSet: VSRazonNOencuentro
Id: VSRazonNOT
Title: "Razones no Atención Remota"
Description: "Razones por la que no se lleva a cabo un encuentro remoto según CodeSystem local"
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2022-05-22T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSrazonnoencuentro

CodeSystem: CSrazonnoencuentro
Id: csrazonnoencuentro
Title: "Razón Encuentro Remoto no Realizado"
Description: "Códigos de las razones por la cual un encuentro remoto no pudo realizarse según indicaciones del Ministerio de Salud"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2022-05-22T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #pierdellam "Participante pierde llamada" "Indica la pérdida de una llamada con el paciete"
* #finallam "El participante finalizó la llamada abruptamente" "Indica la finalización de una llamada de forma abrupta"
* #problcon "El participante tuvo problemas de conexión a internet" "Indica que existieron problemas de conexión a internet para conectarse con el médico"
* #medicoproblcon "Tuve problemas de conexión a internet" "Indica problemas de conexión a internet que tuvo el médico"
* #otros "Otros, texto libre" "Cualquier otro motivo"

ValueSet: VSTipoIdentificador
Id: VSTipoIdentificador
Title: "Tipo Identificador"
Description: "Tipo Identificador"
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2023-07-03T00:00:00-03:00"
* ^contact.name = "MINSAL TIC/Interoperabilidad"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "interoperabilidad@minsal.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSTipoIdentificador

CodeSystem: CSTipoIdentificador
Id: CSTipoIdentificador
Title: "Tipo Identificador"
Description: "Tipo Identificador"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2023-07-03T00:00:00-03:00"
* ^contact.name = "MINSAL TIC/Interoperabilidad"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "interoperabilidad@minsal.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #01 "RUN" "Rol Único Nacional"
* #02 "RUN Provisorio" "RUN provisorio (Artículo 44)"
* #03 "RUN Madre" "RUN Madre (para recién nacido)"
* #04 "Número Folio" "Número Folio Comprobante de Parto chileno"
* #05 "PPN" "Pasaporte"
* #06 "Documento de identificación del país de origen" "Documento de identificación del país de origen"
* #07 "Acta de nacimiento del país de origen" "Acta de nacimiento del país de origen"
* #08 "NIP" "Número de Identificación Provisorio (NIP)"
* #09 "NIC" "Número Identificatorio para cotizar (NIC)"
* #10 "IPA" "Identificación Provisoria del Apoderado (IPA)"
* #11 "IPE" "Identificación Provisoria del Escolar (IPE)"
* #12 "Número de Ficha Clínica Sistema Local" "Número de Ficha Clínica Sistema Local"
* #13 "RNPI" "Registro Nacional de Prestadores Individuales"
* #14 "OTRO" "Otro tipo de identificador"

ValueSet: VSIdentidaddeGenero
Id: VSIdentidaddeGenero
Title: "Identidad de Genero"
Description: "Identidad de Genero"
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2023-01-15"
* ^contact.name = "MINSAL CHILE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "minsal@minsal.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSIdentidaddeGenero

CodeSystem: CSIdentidaddeGenero
Id: CSIdentidaddeGenero
Title: "Identidad de Genero"
Description: "Identidad de Genero"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2023-01-15"
* ^contact.name = "MINSAL CHILE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "minsal@minsal.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "Masculino" "Masculino"
* #2 "Femenina" "Femenina"
* #3 "Transgénero Masculino" "Transgénero Masculino"
* #4 "Transgénero Femenina" "Transgénero Femenina"
* #5 "No binarie" "No binarie"
* #6 "Otra" "Otra"
* #7 "No Revelado" "No Revelado"

ValueSet: VSSexoListadoDeis
Id: VSSexoListadoDeis
Title: "Sexo Listado Deis"
Description: "Sexo Listado Deis"
* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2023-01-15"
* ^contact.name = "MINSAL CHILE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "minsal@minsal.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSSexoListadoDeis

CodeSystem: CSSexoListadoDeis
Id: CSSexoListadoDeis
Title: "Sexo Listado Deis"
Description: "Sexo Listado Deis"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2023-01-15"
* ^contact.name = "MINSAL CHILE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "minsal@minsal.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "Hombre" "Hombre"
* #2 "Mujer" "Mujer"
* #3 "Intersexual" "Intersexual"
* #93 "No Informado" "No Informado"
* #99 "Desconocido" "Desconocido"

/*
ValueSet: VSPrevision
Id: VSPrevision
Title: "Prevision"
Description: "Prevision"
* ^experimental = false
* ^version = "0.1"
* ^status = #active
* ^date = "2023-01-15"
* ^contact.name = "MINSAL CHILE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "minsal@minsal.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSPrevision

CodeSystem: CSPrevision
Id: CSPrevision
Title: "Prevision"
Description: "Prevision"
* ^experimental = false
* ^caseSensitive = true
* ^version = "0.9"
* ^status = #active
* ^date = "2023-01-15"
* ^contact.name = "MINSAL CHILE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "minsal@minsal.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #01	"FONASA" 
* #02	"ISAPRE"  
* #03	"CAPREDENA" 
* #04	"DIPRECA" 
* #05	"SISA" 
* #96	"NINGUNA"
* #99	"DESCONOCIDO"
*/

CodeSystem:  EspecialidadesConacemConaceoCS
Id:          EspecialidadesConacemConaceoCS
Title:       "Códigos de Especialidades de CONACEM y CONACEO"
Description: "Códigos a usar para las Especialidades provenientes de La Corporación Nacional Autónoma de Certificación de Especialidades Médicas (CONACEM) y de La Corporación Nacional Autónoma de Certificación de Especialidades Odontológicas (CONACEO) de Chile"
* ^language = #es

* ^caseSensitive = true
* ^experimental = true
* ^status = #active
* ^publisher = "HL7 Chile"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile" 

* #1 "Adolescencia" "Adolescencia"
* #14 "Dermatología y Venerología" "Dermatología y Venerología"
* #16 "Endocrinología" "Endocrinología"
* #18 "Enfermedades Respiratorias" "Enfermedades Respiratorias"
* #19 "Enfermedades Respiratorias Pediátricas" "Enfermedades Respiratorias Pediátricas"
* #20 "Gastroenterología" "Gastroenterología"
* #24 "Ginecología Oncológica" "Ginecología Oncológica"
* #30 "Inmunología Clínica" "Inmunología Clínica"
* #32 "Mastología" "Mastología"
* #34 "Medicina Física y Rehabilitación" "Medicina Física y Rehabilitación"
* #35 "Medicina Intensiva" "Medicina Intensiva"
* #39 "Medicina Materno Fetal" "Medicina Materno Fetal"
* #41 "Medicina Paliativa Del Adulto" "Medicina Paliativa Del Adulto"
* #42 "Medicina Reproductiva" "Medicina Reproductiva"
* #43 "Nefrología" "Nefrología"
* #44 "Nefrología Pediátrica" "Nefrología Pediátrica"
* #47 "Neurología" "Neurología"
* #49 "Neurorradiología" "Neurorradiología"
* #50 "Nutrición Clínica del Adulto" "Nutrición Clínica del Adulto"
* #51 "Nutrición Clínica Pediátrica" "Nutrición Clínica Pediátrica"
* #58 "Psiquiatría" "Psiquiatría"
* #59 "Psiquiatría Infantil y de la Adolescencia" "Psiquiatría Infantil y de la Adolescencia"
* #3 "Imagenología Maxilofacial" "Imagenología Maxilofacial"
* #8 "Patología Oral y Maxilofacial" "Patología Oral y Maxilofacial"

CodeSystem: CSEspecialidadOdontologica
Id: CSEspecialidadOdontologica
Title: "Especialidad Odontologica"
Description: "Especialidad de Odontologica"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2023-01-15"
* ^contact.name = "MINSAL CHILE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "minsal@minsal.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "Cirugía y Traumatología Buco Maxilofacial" "Cirugía y Traumatología Buco Maxilofacial"
* #2 "Cirugía Bucal" "Cirugía Bucal"
* #3 "Endodoncia" "Endodoncia"
* #4 "Imagenología Oral y Maxilofacial" "Imagenología Oral y Maxilofacial"
* #5 "Implantología Buco Maxilofacial" "Implantología Buco Maxilofacial"
* #6 "Odontología legal" "Odontología legal"
* #7 "Odontopediatría" "Odontopediatría"
* #8 "Ortodoncia y Ortopedia Dento Máxilo Facial" "Ortodoncia y Ortopedia Dento Máxilo Facial"
* #9 "Patología Oral" "Patología Oral"
* #10 "Periodoncia" "Periodoncia"
* #11 "Rehabilitación Oral" "Rehabilitación Oral"
* #12 "Salud Pública" "Salud Pública"
* #13 "Somato-Prótesis" "Somato-Prótesis"
* #14 "Trastornos Temporomandibulares Y Dolor Orofacial" "Trastornos Temporomandibulares Y Dolor Orofacial"

CodeSystem: CSEspecialidadFarma
Id: CSEspecialidadFarma
Title: "Especialidad Farmacia"
Description: "Especialidad de Farmacia"
* ^language = #es
* ^experimental = false
* ^caseSensitive = true

* ^status = #active
* ^date = "2023-01-15"
* ^contact.name = "MINSAL CHILE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "minsal@minsal.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "Farmacia Clínica" "Farmacia Clínica"
* #2 "Farmacia Hospitalaria" "Farmacia Hospitalaria"
* #3 "Laboratorio Clínico" "Laboratorio Clínico"
* #4 "Salud Pública" "Salud Pública"
* #5 "Laboratorio Forense" "Laboratorio Forense"