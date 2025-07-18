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

* #1 "1" "Nivel 1"
* #2 "2" "Nivel 2"
* #3 "3" "Nivel 3"
* #4 "4" "Nivel 4"
* #N "N" "Nivel Normativo"


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
* http://snomed.info/sct#160245001 

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


/*
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


* #1 "Anatomía Patológica"
* #2 "Anestesiología"
* #3 "Cardiología"
* #4 "Cirugía General"
* #5 "Cirugía de Cabeza, Cuello y Maxilofacial"
* #6 "Cirugía Cardiovascular"
* #7 "Cirugía  de Tórax"
* #8 "Cirugía Plástica y Reparadora"
* #9 "Cirugía Pediátrica"
* #10 "Cirugía Vascular Periférica"
* #11 "Coloproctología"
* #12 "Dermatología"
* #13 "Diabetología"
* #14 "Endocrinología Adulto"
* #15 "Endocrinología Pediatrica"
* #16 "Enfermedades Respiratorias del Adulto (Broncopulmonar)"
* #17 "Enfermedades Respiratorias Pediátricas(Broncopulmonar Pediátrico)"
* #18 "Gastroenterología Adulto"
* #19 "Gastroenterología Pediátrica"
* #20 "Genética Clínica"
* #21 "Geriatría"
* #22 "Ginecología Pediátrica y de la Adolescencia"
* #23 "Hematología"
* #24 "Imagenología"
* #25 "Infectología"
* #26 "Inmunología"
* #27 "Laboratorio Clínico"
* #28 "Medicina Familiar"
* #29 "Medicina Física y Rehabilitación (Fisiatria Adulto)"
* #30 "Medicina Interna"
* #31 "Medicina Intensiva Adulto"
* #32 "Medicina Intensiva Pediátrica"
* #33 "Medicina Legal"
* #34 "Medicina Materno Infantil"
* #35 "Medicina Nuclear"
* #36 "Medicina de Urgencia"
* #37 "Nefrología Adulto"
* #38 "Nefrología Pediátrico"
* #39 "Neonatología"
* #40 "Neurocirugía"
* #41 "Neurología Adulto"
* #42 "Neurología Pediátrica"
* #43 "Obstetricia y Ginecología"
* #44 "Oftalmología"
* #45 "Oncología Médica"
* #46 "Otorrinolaringología"
* #47 "Pediatría"
* #48 "Psiquiatría Adulto"
* #49 "Psiquiatría Pediátrica y de la Adolescencia"
* #50 "Radioterapia Oncológica"
* #51 "Reumatología"
* #52 "Salud Pública"
* #53 "Traumatología y Ortopedia"
* #54 "Urología"
* #55 "Cardiología Pediátrica"
* #56 "Cirugía Digestiva"
* #57 "Cirugía Plástica y Reparadora Pediátrica"
* #58 "Ginecología"
* #59 "Hemato-Oncología Pediátrica"
* #60 "Infectología Pediátrica"
* #61 "Medicina Familiar del Niño"
* #62 "Medicina Física y Rehabilitación Pediátrica (Fisiatría Pediátrica)"
* #63 "Nutriólogo"
* #64 "Nutriólogo Pediátrico"
* #65 "Reumatología Pediátrica"
* #66 "Obstetricia"
* #67 "Traumatología y Ortopedia Pediátrica"
* #68 "Urología Pediátrica"


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

* #15 "Arica y Parinacota"
* #01 "Tarapacá"
* #02 "Antofagasta"
* #03 "Atacama"
* #04 "Coquimbo"
* #05 "Valparaíso"
* #13 "Metropolitana de Santiago"
* #06 "Del Libertador Gral. Bernardo O'Higgins"
* #07 "Del Maule"
* #08 "Del Biobío"
* #09 "De la Araucanía"
* #14 "De los Ríos"
* #10 "De los Lagos"
* #11 "Aysén del Gral. Carlos Ibáñez del Campo"
* #12 "Magallanes y de la Antártica Chilena"
* #16 "Ñuble"

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

* #122 "Antártica Chilena"
* #021 "Antofagasta"
* #082 "Arauco"
* #151 "Arica"
* #112 "Aysén"
* #083 "Biobío"
* #061 "Cachapoal"
* #113 "Capitán Prat"
* #062 "Cardenal Caro"
* #072 "Cauquenes"
* #091 "Cautín"
* #133 "Chacabuco"
* #032 "Chañaral"
* #102 "Chiloé"
* #042 "Choapa"
* #111 "Coihaique"
* #063 "Colchagua"
* #081 "Concepción"
* #031 "Copiapó"
* #132 "Cordillera"
* #073 "Curicó"
* #161 "Diguillín"
* #022 "El Loa"
* #041 "Elqui"
* #114 "General Carrera"
* #033 "Huasco"
* #011 "Iquique"
* #052 "Isla de Pascua"
* #162 "Itata"
* #043 "Limarí"
* #074 "Linares"
* #101 "Llanquihue"
* #053 "Los Andes"
* #121 "Magallanes"
* #134 "Maipo"
* #092 "Malleco"
* #058 "Marga Marga"
* #135 "Melipilla"
* #103 "Osorno"
* #104 "Palena"
* #152 "Parinacota"
* #054 "Petorca"
* #163 "Punilla"
* #055 "Quillota"
* #142 "Ranco"
* #056 "San Antonio"
* #057 "San Felipe de Aconcagua"
* #131 "Santiago"
* #136 "Talagante"
* #071 "Talca"
* #014 "Tamarugal"
* #123 "Tierra del Fuego"
* #023 "Tocopilla"
* #124 "última Esperanza"
* #141 "Valdivia"
* #051 "Valparaíso"


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

* #05602 "Algarrobo"
* #13502 "Alhué"
* #08314 "Alto Biobío"
* #03302 "Alto del Carmen"
* #01107 "Alto Hospicio"
* #10202 "Ancud"
* #04103 "Andacollo"
* #09201 "Angol"
* #12202 "Antartica"
* #02101 "Antofagasta"
* #08302 "Antuco"
* #08202 "Arauco"
* #15101 "Arica"
* #11201 "Aysén"
* #13402 "Buin"
* #16102 "Bulnes"
* #05402 "Cabildo"
* #12201 "Cabo de Hornos"
* #08303 "Cabrero"
* #02201 "Calama"
* #10102 "Calbuco"
* #03102 "Caldera"
* #05502 "Calera"
* #13403 "Calera de Tango"
* #05302 "Calle Larga"
* #15102 "Camarones"
* #01402 "Camiña"
* #04202 "Canela"
* #08203 "Cañete"
* #09102 "Carahue"
* #05603 "Cartagena"
* #05102 "Casablanca"
* #10201 "Castro"
* #05702 "Catemu"
* #07201 "Cauquenes"
* #13102 "Cerrillos"
* #13103 "Cerro Navia"
* #10401 "Chaitén"
* #03201 "Chañaral"
* #07202 "Chanco"
* #06302 "Chépica"
* #08103 "Chiguayante"
* #11401 "Chile Chico"
* #16101 "Chillán"
* #16103 "Chillán Viejo"
* #06303 "Chimbarongo"
* #09121 "Cholchol"
* #10203 "Chonchi"
* #11202 "Cisnes"
* #16202 "Cobquecura"
* #10103 "Cochamó"
* #11301 "Cochrane"
* #06102 "Codegua"
* #16203 "Coelemu"
* #11101 "Coihaique"
* #16302 "Coihueco"
* #06103 "Coinco"
* #07402 "Colbún"
* #01403 "Colchane"
* #13301 "Colina"
* #09202 "Collipulli"
* #06104 "Coltauco"
* #04302 "Combarbalá"
* #08101 "Concepción"
* #13104 "Conchalí"
* #05103 "Concón"
* #07102 "Constitución"
* #08204 "Contulmo"
* #03101 "Copiapó"
* #04102 "Coquimbo"
* #08102 "Coronel"
* #14102 "Corral"
* #09103 "Cunco"
* #09203 "Curacautín"
* #13503 "Curacaví"
* #10204 "Curaco de Vélez"
* #08205 "Curanilahue"
* #09104 "Curarrehue"
* #07103 "Curepto"
* #07301 "Curicó"
* #10205 "Dalcahue"
* #03202 "Diego de Almagro"
* #06105 "Doñihue"
* #13105 "El Bosque"
* #16104 "El Carmen"
* #13602 "El Monte"
* #05604 "El Quisco"
* #05605 "El Tabo"
* #07104 "Empedrado"
* #09204 "Ercilla"
* #13106 "Estacin Central"
* #08104 "Florida"
* #09105 "Freire"
* #03303 "Freirina"
* #10104 "Fresia"
* #10105 "Frutillar"
* #10402 "Futaleufú"
* #14202 "Futrono"
* #09106 "Galvarino"
* #15202 "General Lagos"
* #09107 "Gorbea"
* #06106 "Graneros"
* #11203 "Guaitecas"
* #05503 "Hijuelas"
* #10403 "Hualaihué"
* #07302 "Hualañé"
* #08112 "Hualpén"
* #08105 "Hualqui"
* #01404 "Huara"
* #03304 "Huasco"
* #13107 "Huechuraba"
* #04201 "Illapel"
* #13108 "Independencia"
* #01101 "Iquique"
* #13603 "Isla de Maipo"
* #05201 "Isla de Pascua"
* #05104 "Juan Fernández"
* #13109 "La Cisterna"
* #05504 "La Cruz"
* #06202 "La Estrella"
* #13110 "La Florida"
* #13111 "La Granja"
* #04104 "La Higuera"
* #05401 "La Ligua"
* #13112 "La Pintana"
* #13113 "La Reina"
* #04101 "La Serena"
* #14201 "La Unión"
* #14203 "Lago Ranco"
* #11102 "Lago Verde"
* #12102 "Laguna Blanca"
* #08304 "Laja"
* #13302 "Lampa"
* #14103 "Lanco"
* #06107 "Las Cabras"
* #13114 "Las Condes"
* #09108 "Lautaro"
* #08201 "Lebu"
* #07303 "Licantén"
* #05802 "Limache"
* #07401 "Linares"
* #06203 "Litueche"
* #05703 "Llaillay"
* #10107 "Llanquihue"
* #13115 "Lo Barnechea"
* #13116 "Lo Espejo"
* #13117 "Lo Prado"
* #06304 "Lolol"
* #09109 "Loncoche"
* #07403 "Longaví"
* #09205 "Lonquimay"
* #08206 "Los Álamos"
* #05301 "Los Andes"
* #08301 "Los Ángeles"
* #14104 "Los Lagos"
* #10106 "Los Muermos"
* #09206 "Los Sauces"
* #04203 "Los Vilos"
* #08106 "Lota"
* #09207 "Lumaco"
* #06108 "Machalí"
* #13118 "Macul"
* #14105 "Máfil"
* #13119 "Maipú"
* #06109 "Malloa"
* #06204 "Marchihue"
* #02302 "María Elena"
* #13504 "María Pinto"
* #14106 "Mariquina"
* #07105 "Maule"
* #10108 "Maullín"
* #02102 "Mejillones"
* #09110 "Melipeuco"
* #13501 "Melipilla"
* #07304 "Molina"
* #04303 "Monte Patria"
* #06110 "Mostazal"
* #08305 "Mulchén"
* #08306 "Nacimiento"
* #06305 "Nancagua"
* #12401 "Natales"
* #06205 "Navidad"
* #08307 "Negrete"
* #16204 "Ninhue"
* #16303 "Ñiquén"
* #05506 "Nogales"
* #09111 "Nueva Imperial"
* #13120 "ÑuÑoa"
* #06111 "Olivar"
* #02202 "Ollagüe"
* #05803 "Olmué"
* #10301 "Osorno"
* #04301 "Ovalle"
* #11302 "O'Higgins"
* #13604 "Padre Hurtado"
* #09112 "Padre las Casas"
* #04105 "Paiguano"
* #14107 "Paillaco"
* #13404 "Paine"
* #10404 "Palena"
* #06306 "Palmilla"
* #14108 "Panguipulli"
* #05704 "Panquehue"
* #05403 "Papudo"
* #06206 "Paredones"
* #07404 "Parral"
* #13121 "Pedro Aguirre Cerda"
* #07106 "Pelarco"
* #07203 "Pelluhue"
* #16105 "Pemuco"
* #13605 "Peñaflor"
* #13122 "Peñalolén"
* #07107 "Pencahue"
* #08107 "Penco"
* #06307 "Peralillo"
* #09113 "Perquenco"
* #05404 "Petorca"
* #06112 "Peumo"
* #01405 "Pica"
* #06113 "Pichidegua"
* #06201 "Pichilemu"
* #16106 "Pinto"
* #13202 "Pirque"
* #09114 "Pitrufquén"
* #06308 "Placilla"
* #16205 "Portezuelo"
* #12301 "Porvenir"
* #01401 "Pozo Almonte"
* #12302 "Primavera"
* #13123 "Providencia"
* #05105 "Puchuncaví"
* #09115 "Pucón"
* #13124 "Pudahuel"
* #13201 "Puente Alto"
* #10101 "Puerto Montt"
* #10302 "Puerto Octay"
* #10109 "Puerto Varas"
* #06309 "Pumanque"
* #04304 "Punitaqui"
* #12101 "Punta Arenas"
* #10206 "Puqueldón"
* #09208 "Purén"
* #10303 "Purranque"
* #05705 "Putaendo"
* #15201 "Putre"
* #10304 "Puyehue"
* #10207 "Queilén"
* #10208 "Quellón"
* #10209 "Quemchi"
* #08308 "Quilaco"
* #13125 "Quilicura"
* #08309 "Quilleco"
* #16107 "Quillón"
* #05501 "Quillota"
* #05801 "Quilpué"
* #10210 "Quinchao"
* #06114 "Quinta de Tilcoco"
* #13126 "Quinta Normal"
* #05107 "Quintero"
* #16201 "Quirihue"
* #06101 "Rancagua"
* #16206 "Ránquil"
* #07305 "Rauco"
* #13127 "Recoleta"
* #09209 "Renaico"
* #13128 "Renca"
* #06115 "Rengo"
* #06116 "Requínoa"
* #07405 "Retiro"
* #05303 "Rinconada"
* #14204 "Río Bueno"
* #07108 "Río Claro"
* #04305 "Río Hurtado"
* #11402 "Río Ibáñez"
* #10305 "Río Negro"
* #12103 "Río Verde"
* #07306 "Romeral"
* #09116 "Saavedra"
* #07307 "Sagrada Familia"
* #04204 "Salamanca"
* #05601 "San Antonio"
* #13401 "San Bernardo"
* #16301 "San Carlos"
* #07109 "San Clemente"
* #05304 "San Esteban"
* #16304 "San Fabián"
* #05701 "San Felipe"
* #06301 "San Fernando"
* #12104 "San Gregorio"
* #16108 "San Ignacio"
* #07406 "San Javier"
* #13129 "San Joaquín"
* #13203 "San José de Maipo"
* #10306 "San Juan de la Costa"
* #13130 "San Miguel"
* #16305 "San Nicolás"
* #10307 "San Pablo"
* #13505 "San Pedro"
* #02203 "San Pedro de Atacama"
* #08108 "San Pedro de la Paz"
* #07110 "San Rafael"
* #13131 "San Ramón"
* #08310 "San Rosendo"
* #06117 "San Vicente"
* #08311 "Santa Bárbara"
* #06310 "Santa Cruz"
* #08109 "Santa Juana"
* #05706 "Santa María"
* #13101 "Santiago Centro"
* #05606 "Santo Domingo"
* #02103 "Sierra Gorda"
* #13601 "Talagante"
* #07101 "Talca"
* #08110 "Talcahuano"
* #02104 "Taltal"
* #09101 "Temuco"
* #07308 "Teno"
* #09117 "Teodoro Schmidt"
* #03103 "Tierra Amarilla"
* #13303 "Tiltil"
* #12303 "Timaukel"
* #08207 "Tirúa"
* #02301 "Tocopilla"
* #09118 "Toltén"
* #08111 "Tomé"
* #12402 "Torres del Paine"
* #11303 "Tortel"
* #09210 "Traiguén"
* #16207 "Treguaco"
* #08312 "Tucapel"
* #14101 "Valdivia"
* #03301 "Vallenar"
* #05101 "Valparaíso"
* #07309 "Vichuqué"
* #09211 "Victoria"
* #04106 "Vicuña"
* #09119 "Vilcún"
* #07407 "Villa Alegre"
* #05804 "Villa Alemana"
* #09120 "Villarrica"
* #05109 "Viña del Mar"
* #13132 "Vitacura"
* #07408 "Yerbas Buenas"
* #08313 "Yumbel"
* #16109 "Yungay"
* #05405 "Zapallar"
*/

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
* insert SetCopyrightSCTHL7

* codes from system CSTiposVacunaCL
//* codes from system http://snomed.info/sct where concept in #661000325101
* include codes from system http://snomed.info/sct where concept in #661000325101

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

* #actacelPriv "Actacel (sector privado)" "Actacel (sector privado)"
* #antirr "Antirrábica" "Antirrábica"
* #antirrPriv "Antirrábica (sector privado)" "Antirrábica (sector privado)"
* #antitifoInyPriv "Antitifoidea inyectable (sector privado)" "Antitifoidea inyectable (sector privado)"
* #bcgMat "BCG MATERNIDAD" "BCG MATERNIDAD"
* #bcg_mat "BCG_maternidad" "BCG_maternidad"
* #fiebreAmar "Fiebre Amarilla" "Fiebre Amarilla"
* #hep_A "Hepatítis A" "Hepatítis A"
* #hep_A_adult "Hepatitis A adulto" "Hepatitis A adulto"
* #hep_A_adultPriv "Hepatitis A adulto (sector privado)" "Hepatitis A adulto (sector privado)"
* #hep_A_ped "Hepatitis A pediátrica" "Hepatitis A pediátrica"
* #hep_A_pedPriv "Hepatitis A pediátrica (sector privado)" "Hepatitis A pediátrica (sector privado)"
* #hep_A-B_adultPriv "Hepatitis A-B adulto (sector privado)" "Hepatitis A-B adulto (sector privado)"
* #hep_A-B_pedPriv "Hepatitis A-B pediátrica (sector privado)" "Hepatitis A-B pediátrica (sector privado)"
* #hep_B_adult "Hepatitis B adulto" "Hepatitis B adulto"
* #hep_B_adultPriv "Hepatitis B adulto (sector privado)" "Hepatitis B adulto (sector privado)"
* #hep_B_dializAdult "Hepatitis B dializados adulto" "Hepatitis B dializados adulto"
* #hep_B_dializPed "Hepatitis B dializados pediátrica" "Hepatitis B dializados pediátrica"
* #hep_B_ped "Hepatitis B pediátrica" "Hepatitis B pediátrica"
* #hep_B_pedPriv "Hepatitis B pediátrica (sector privado)" "Hepatitis B pediátrica (sector privado)"
* #hep_B_maternidad "Hepatitis B_maternidad" "Hepatitis B_maternidad"
* #herpesZPriv "Herpes Zoster (sector privado)" "Herpes Zoster (sector privado)"
* #hexavalent "Hexavalente" "Hexavalente"
* #hezavalentPriv "Hexavalente (sector privado)" "Hexavalente (sector privado)"
* #inmAntitetanic "INMUNOGLOBULINA ANTITETANICA" "INMUNOGLOBULINA ANTITETANICA"
* #inmAntiVaricela "Inmunoglobulina anti varicela" "Inmunoglobulina anti varicela"
* #inmAntirrabica "Inmunoglobulina antirrábica" "Inmunoglobulina antirrábica"
* #inmAntirrabicaPriv "Inmunoglobulina antirrábica (sector privado)" "Inmunoglobulina antirrábica (sector privado)"
* #inmAntitetanica "Inmunoglobulina Antitetánica" "Inmunoglobulina Antitetánica"
* #inmEstandarH_A "Inmunoglobulina estandar (Hep. A)" "Inmunoglobulina estandar (Hep. A)"
* #inmEstandarSaramp "Inmunoglobulina estandar (Sarampión)" "Inmunoglobulina estandar (Sarampión)"
* #inmEstandarVaric "Inmunoglobulina estandar (Varicela)" "Inmunoglobulina estandar (Varicela)"
* #inmHepat_B "Inmunoglobulina Hepatitis B" "Inmunoglobulina Hepatitis B"
* #neumococicaConj10V "Neumocócica conjugada 10V" "Neumocócica conjugada 10V"
* #neomococicaConj10VPriv "Neumocócica conjugada 10V (sector privado)" "Neumocócica conjugada 10V (sector privado)"
* #neumococicaConj13V "Neumocócica conjugada 13V" "Neumocócica conjugada 13V"
* #neumococicaConj13VPriv "Neumocócica conjugada 13V (sector privado)" "Neumocócica conjugada 13V (sector privado)"
* #neumococicaPolisac23V "Neumocócica polisacárida 23V" "Neumocócica polisacárida 23V"
* #neumococicaPolisac23VPriv "Neumocócica polisacárida 23V (sector privado)" "Neumocócica polisacárida 23V (sector privado)"
* #pentavalente "Pentavalente" "Pentavalente"
* #polioInactIny "Polio inactivada inyectable" "Polio inactivada inyectable"
* #polioInactInyPriv "Polio inactivada inyectable (sector privado)" "Polio inactivada inyectable (sector privado)"
* #polioOralBival_boPV "Polio oral bivalente (bOPV)" "Polio oral bivalente (bOPV)"
* #polioOralTrival "Polio oral trivalente" "Polio oral trivalente"
* #rotavirus "Rotavirus" "Rotavirus"
* #rotavirusPriv "Rotavirus (sector privado)" "Rotavirus (sector privado)"
* #saramp_rube_paper "Sarampión-Rubeóla-Paperas" "Sarampión-Rubeóla-Paperas"
* #toxoideDTPriv "Toxoide DT (sector privado)" "Toxoide DT (sector privado)"
* #toxoideDTEscol "TOXOIDE DT ESCOLAR" "TOXOIDE DT ESCOLAR"
* #toxoideDTProfil "TOXOIDE DT PROFILAXIS" "TOXOIDE DT PROFILAXIS"
* #vacunaAntiten "VACUNA ANTITETÁNICA" "VACUNA ANTITETÁNICA"
* #vacunaAntitenPriv "Vacuna Antitetánica (sector privado)" "Vacuna Antitetánica (sector privado)"
* #vacunaBCG "VACUNA BCG" "VACUNA BCG"
* #vacunaBexsero "VACUNA BEXSERO" "VACUNA BEXSERO"
* #vacunaBexseroPriv "VACUNA BEXSERO (Sector privado)" "VACUNA BEXSERO (Sector privado)"
* #vacunaDPT "VACUNA DPT" "VACUNA DPT"
* #vacunadpTaPriv "Vacuna dpTa (sector privado)" "Vacuna dpTa (sector privado)"
* #vacunadtPa "Vacuna dTpa" "Vacuna dTpa"
* #vacunaHepat_AyB "VACUNA HEPATITIS A Y B" "VACUNA HEPATITIS A Y B"
* #vacunaHIB "VACUNA HIB" "VACUNA HIB"
* #vacunaHIBPriv "Vacuna HIB (sector privado)" "Vacuna HIB (sector privado)"
* #vacunaInfluTrival "VACUNA INFLUENZA TRIVALENTE" "VACUNA INFLUENZA TRIVALENTE"
* #vacunaMenacPriv "VACUNA MENACTRA (Sector privado)" "VACUNA MENACTRA (Sector privado)"
* #vacunaMenveo "VACUNA MENVEO" "VACUNA MENVEO"
* #vacunaMenveoPriv "VACUNA MENVEO (Sector privado)" "VACUNA MENVEO (Sector privado)"
* #vacunaNeumoco7V "VACUNA NEUMOCOCICA 7 V" "VACUNA NEUMOCOCICA 7 V"
* #vacunaNimenrix "VACUNA NIMENRIX" "VACUNA NIMENRIX"
* #vacunaNimenrixPriv "VACUNA NIMENRIX (sector privado)" "VACUNA NIMENRIX (sector privado)"
* #vacunaPoliomielInact "VACUNA POLIOMIELITIS INACTIVADA" "VACUNA POLIOMIELITIS INACTIVADA"
* #vacunaSRPt3VMonodos "VACUNA SRP (TRES VIRICA) MONODOSIS" "VACUNA SRP (TRES VIRICA) MONODOSIS"
* #vacunaSRP3VMultidos "VACUNA SRP (TRES VIRICA) MULTIDOSIS" "VACUNA SRP (TRES VIRICA) MULTIDOSIS"
* #vacunaSRPTrivMonodos "Vacuna SRP (trivirica) Monodosis" "Vacuna SRP (trivirica) Monodosis"
* #vacunaSRPTrivMultidos "Vacuna SRP (trivirica) Multidosis" "Vacuna SRP (trivirica) Multidosis"
* #varicela "Varicela" "Varicela"
* #varicelaPriv "Varicela (sector privado)" "Varicela (sector privado)"
* #VPHBivalPriv "VPH Bivalente (sector privado)" "VPH Bivalente (sector privado)"
* #VPHNonavalPriv "VPH Nonavalente (sector privado)" "VPH Nonavalente (sector privado)"
* #VPHTetraval "VPH Tetravalente" "VPH Tetravalente"
* #VPHTretavalPriv "VPH Tetravalente (sector privado)" "VPH Tetravalente (sector privado)"


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

* #campanSARSCov_2_AstraZ "Campaña SARS-CoV-2 (AstraZeneca)" "Campaña SARS-CoV-2 (AstraZeneca)"
* #campanSARSCov_2_Cansino "Campaña SARS-CoV-2 (CanSino)" "Campaña SARS-CoV-2 (CanSino)"
* #campanSARSCov_2_Intern "Campaña SARS-CoV-2 (Internacional)" "Campaña SARS-CoV-2 (Internacional)"
* #campanSARSCov_2_Janssen "Campaña SARS-CoV-2 (Janssen)" "Campaña SARS-CoV-2 (Janssen)"
* #campanSARSCov_2_Moderna "Campaña SARS-CoV-2 (Moderna)" "Campaña SARS-CoV-2 (Moderna)"
* #campanSARSCov_2_Pfizer "Campaña SARS-CoV-2 (Pfizer)" "Campaña SARS-CoV-2 (Pfizer)"
* #campanSARSCov_2_Sinovac "Campaña SARS-CoV-2 (Sinovac)" "Campaña SARS-CoV-2 (Sinovac)"
* #campanSRP20_40 "Campaña SRP 20 - 24 años" "Campaña SRP 20 - 24 años"
* #estratCapullo "Estrategia Capullo" "Estrategia Capullo"
* #estratCapullo2013 "Estrategia Capullo 2013" "Estrategia Capullo 2013"
* #estratMeningocócica "Estrategia Meningocócica" "Estrategia Meningocócica"
* #hepatiA "Hepatitis A" "Hepatitis A"
* #hepatiA2012 "Hepatitis A 2012" "Hepatitis A 2012"
* #hepatiApost_Terr "Hepatitis A post-terremoto" "Hepatitis A post-terremoto"
* #hepatiAar_Tar_Bio "Hepatitis A, Arica-Tarapacá-Bíobío" "Hepatitis A, Arica-Tarapacá-Bíobío"
* #hepatiABrote_Conting "Hepatitis A,Brote/Contingencia" "Hepatitis A,Brote/Contingencia"
* #influenza2010 "Influenza 2010" "Influenza 2010"
* #influenza2011 "Influenza 2011" "Influenza 2011"
* #influenza2012 "Influenza 2012" "Influenza 2012"
* #influenza2013 "Influenza 2013" "Influenza 2013"
* #influenza2014 "Influenza 2014" "Influenza 2014"
* #influenza2015 "Influenza 2015" "Influenza 2015"
* #influenza2016 "Influenza 2016" "Influenza 2016"
* #influenza2017 "Influenza 2017" "Influenza 2017"
* #influenza2018 "Influenza 2018" "Influenza 2018"
* #influenza2019 "Influenza 2019" "Influenza 2019"
* #influenza2020 "Influenza 2020" "Influenza 2020"
* #influenza2021 "Influenza 2021" "Influenza 2021"
* #influenza2022 "Influenza 2022" "Influenza 2022"
* #sarampRubeoPaperas "Sarampión-Rubeóla-Paperas" "Sarampión-Rubeóla-Paperas"
* #SRPCampanSeguim2015 "SRP - Campaña de Seguimiento - 2015" "SRP - Campaña de Seguimiento - 2015"
* #SRPFuncSaludyPuestosFronteriz "SRP - Funcionarios de salud y Puestos Fronterizos" "SRP - Funcionarios de salud y Puestos Fronterizos"
* #SRPCampanSeguim2020 "SRP- Campaña de seguimiento- 2020" "SRP- Campaña de seguimiento- 2020"
* #SRPdelViajero "SRP del viajero" "SRP del viajero"
* #tosConvul_brote_conting "Tos Convulsiva Brote-Contingencia" "Tos Convulsiva Brote-Contingencia"
* #vacunaFiebAmar "Vacuna Fiebre Amarilla" "Vacuna Fiebre Amarilla"



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

* #nutINTA	"Nutrición INTA"  "Nutrición INTA"
* #nedINTA	"Medicina INTA" "Medicina INTA"
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
/*
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

* #1 "Masculino"
* #2 "Femenina"
* #3 "Transgénero Masculino"
* #4 "Transgénero Femenina"
* #5 "No binarie"
* #6 "Otra"
* #7 "No Revelado"

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

* #1 "Hombre"
* #2 "Mujer"
* #3 "Intersexual"
* #93 "No Informado"
* #99 "Desconocido"
*/
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
/*
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

* #1 "Cirugía y Traumatología Buco Maxilofacial"
* #2 "Cirugía Bucal"
* #3 "Endodoncia"
* #4 "Imagenología Oral y Maxilofacial"
* #5 "Implantología Buco Maxilofacial"
* #6 "Odontología legal"
* #7 "Odontopediatría"
* #8 "Ortodoncia y Ortopedia Dento Máxilo Facial"
* #9 "Patología Oral"
* #10 "Periodoncia"
* #11 "Rehabilitación Oral"
* #12 "Salud Pública"
* #13 "Somato-Prótesis"
* #14 "Trastornos Temporomandibulares Y Dolor Orofacial"

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

* #1 "Farmacia Clínica"
* #2 "Farmacia Hospitalaria"
* #3 "Laboratorio Clínico"
* #4 "Salud Pública"
* #5 "Laboratorio Forense"
*/

ValueSet:       VsTipoReporteCL
Id:             cl-core-tipo-reporte
Title:          "Set de Valores de Tipo de Reporte"
Description:    "Este conjunto de valores define los tipos de reporte que pueden ser generados por el sistema de interoperabilidad del MINSAL, basado en el estándar LOINC."

* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2025-07-08T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* insert SetCopyrightLOINC

* include codes from system http://loinc.org where CLASSTYPE = "Laboratory class"
* include codes from system http://loinc.org where CLASSTYPE = "Radiology class"

ValueSet:       VsTipoEspecimenCL
Id:             cl-core-tipo-especimen-vs
Title:          "Set de Valores de los Tipos de Especimen"
Description:    "Códigos de tipos de especimen en Snomed"

// * insert SetCopyrightSCT
// * ^experimental = true
// * include codes from system $snomed where concept descendent-of #86273004

* insert SetCopyrightSCT

* ^language = #es
* ^experimental = false

* ^status = #active
* ^date = "2025-07-08T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* include codes from system SCT where concept descendent-of #123038009
