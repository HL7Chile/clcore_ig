### Versión 1.8.12

- Perfil [MedicamentoCL](StructureDefinition-CoreMedicamentoCl.html)
  - Se elimina los Slice de **DescriptionID** y **ConceptID**.
  - Se cambian las descripciones y definiciones que referencien a la TFC.
  - Se habilitan los ejemplo:
    * [Medicamento comprimido Tareg - D 160](Medication-MedicamentoCl.html)
    * [Hidroclorotiazida 25 mg + Valsartán 160 mg comprimido](Medication-MedicamentoCl-2.html)

- Perfil [ImmunizationCL](StructureDefinition-ImmunizationCL.html)
  - Se deprecan las extensiones de **TiposVacunaCL**, **NombreCampanaCL**, **RazonNOTinmunizacionCL** y **ServicioSaludCL**  junto con su obligatoriedadad
  - Se amplia los ocurrence[x] a DateTime o String
 
- ValueSet [SDiagnosticosSCT] (ValueSet-SDiagnosticosSCT.html)
 - Se filtra a solo hallazgos clínicos
 - Value set de problemas sin informar o desconocidos

- Se modifica y agregan nuevos terminos en "CSTipoIdentificador"
- Perfil [PacienteCL](StructureDefinition-CorePacienteCl.html)
  - Se cambio referencia de **generalPractitioner** de Organization -> OrganizacionCL y Practitioner -> PrestadorCL
  - Se genera [Ejemplo de Recurso Paciente Nacional](Patient-PacienteCL.html)

- Perfil [CoreRolClinicoCl](StructureDefinition-CoreRolClinicoCl.html)
  - Se modifica la referencia organization al **OrganizationCL**
  - Se modifica la referencia location al **CoreLocalizacionCl**
  - Se genera ejemplo [Ejemplo de Recurso de especialidad](PractitionerRole-EjemploEspecialidadCL.html)
  - Se genera ejemplo [Ejemplo de Especialidad Medicina Familiar](PractitionerRole-EjemploEspecialidadCL2.html)

- Perfil [OrganiztionCL](StructureDefinition-CoreOrganizacionCl.html)
  - Se creo ejemplo [Ejemplo Organización Prestadora de Salud](Organization-OrganizacionClEjemplo1.html)

- Perfil [PrestadorCL](StructureDefinition-CorePrestadorCl.html)
  - Se corrije los identifier.type según el code nuevo correspondiente del codesystem
  - Se genera Ejemplo [Ejemplo de un profecional de salud](Practitioner-EjemploPrestadorCL.html)
  - Se genera Ejemplo [Ejemplo de Recurso Prestador 2 como base para un Core Nacional](Practitioner-EjemploPrestadorCL2.html)

- Perfil [AuditEventCl](StructureDefinition-AuditEventCl.html)
  - Subtype.system y Type.system se elimina MS
  - Subtype.code MS se elimina
  - agent.who y source.observer referencian a CoreRolClinicoCl, PrestadorCL, CoreOrganizacionCl, CorePacienteCl, Device y RelatedPerson.

- Perfil [EncounterCL](StructureDefinition-EncounterCL.html)
  - Se depreca el uso de extensiones en el perfil
  - Se elimina el uso de slice del participant
  - Se actualiza periodo de 1..1 -> 0..1

- Perfil [CL Condición-Diagnóstico](StructureDefinition-CoreDiagnosticoCl.html)
  - Paso el verification Status a MS
  - Ejemplo: [Ejemplo de Un Diagnóstico de hipertensión](Condition-DiagnosticoEj.html)
  - Ejemplo: [Ejemplo de Un Diagnóstico de Faringoamigdalitis](Condition-DiagnosticoEj2.html)

- Perfil [CL Provenance](StructureDefinition-ProvenanceCl.html)
  - Se cambia la referencia de location al perfil de la guía
  - Se cambia la referencia de agent.who y signature.who a los perfiles que existan en la guía y aquellos que no, se referencian al estandar.

- Se vuelve habilitar los siguientes ejemplos corregidos:
 - [Localización de Farmacia](Location-LocalizacionEjemploCL1.html)
 - [Inmunización](Immunization-ImmunizationEj.html)
 - [Documento](Composition-DocumentoEjemplo1.html)

- A las extensiones se adjusta los contextos en los recursos bases

- ValueSet deprecados:
  - Códigos de Servicos de Salud en Chile
  - Contacto participantes
  - Razones por la que no se pudieron realizar la atención
- CodeSystem deprecados:
  - Códigos del Sistema Nacional de Servicios de Salud
  - Códigos de razones por la cuales el encuentro remoto no se pudo llevar a cabo

### Version 1.8.9
- Version de prueba debido a cambios en los publicadores

### Version 1.8.6
- Perfil [PacienteCL](StructureDefinition-CorePacienteCl.html)
  - Se incluyeron los ejemplos
  - Cambio cardinalidad **contact.name.given** 0..1 -> 0..*
  - Se cambió el nombre de la extension identifier.type.extension[paises] -> identifier.type.extension[paisEmisionDocumento]
 - Extension "Codigo de Identificación de países", el binding se modifica para dejarlo linkeado al elemento "valueCodeableConcept".
- [PrestadorCL](StructureDefinition-CorePrestadorCl.html)
  - Se cambia el nombre de los siguientes slices de qualification:
    - Cert -> TituloProfesional
    - Esp -> EspecialidadMedica
    - SubEsp -> Subespecialidad

- El elemento **addresss** debe cumplir con **ClAddress** para las direcciones de los perfiles [OrganiztionCL](StructureDefinition-CoreOrganizacionCl.html) y [LocalizacionCL](StructureDefinition-CoreLocalizacionCl.html)
- Cambio en el **Ejemplo Organización Prestadora de Salud** para cumplir con el perfil [OrganiztionCL](StructureDefinition-CoreOrganizacionCl.html)
- Cambio en el **Ejemplo Localización Farmacia** para cumplir con el perfil [LocalizacionCL](StructureDefinition-CoreLocalizacionCl.html)
- Se incluyo el context en las siguientes extensiones:
  - [Códigos para Comunas en Chile](StructureDefinition-ComunasCl.html)
  - [Códigos para Provincias en Chile](StructureDefinition-ProvinciasCl.html)
  - [Códigos para Regiones en Chile](StructureDefinition-RegionesCl.html)
  - [Identificación del Contacto de un Paciente](StructureDefinition-IdContacto.html)
  - **Especialidad del médico principal**
  - **Contacto de los participantes secundarios del encuentro**
  - **Código de las razones por la cual no se pudo realizar la atención**
  - **Notas realizadas en un encuentro por Comité**
  - **Observaciones o comentarios simples respecto a un diagnóstico**
  - **Código de tipos de Vacunas en Chile**
  - **Nombre de la Campaña de vacunación establecida por el RNI (Registro Nacional de Inmunizaciones)**
  - **Razones por las cuales no se pudo realizar la inmunización**
  - [Segundo Apellido](StructureDefinition-SegundoApellido.html)
  - [Sexo Biológico](StructureDefinition-SexoBiologico.html)
- El elemento **gender** del perfil [PrestadorCL](StructureDefinition-CorePrestadorCl.html) y [PacienteCl](StructureDefinition-CorePacienteCl.html) es reincluido para el sexo Registral(Registro Civil). Deprecando la extensión **SexoRegistral**
- Se depreca el perfil **BundleCL**.
- CodeSystem "Tipo Identificador", se modifican los valores.
- Se agrega en la pagina inicial la lista de dependencias
- Se elimina la dependencia de la guia IPS v1.0.0

### Version 1.8.5
- Prefil [PrestadorCL](StructureDefinition-CorePrestadorCl.html)
  - Cambio cardinalidad **birthDate** 1..1 -> 0..1
  - Cambio cardinalidad **gender** 1..1 -> 0..1
  - Cambio cardinalidad **qualification:Cert.code.text**  1..1 -> 0..1
  - Cambio cardinalidad **qualification:Esp.code.text**  1..1 -> 0..1
  - Cambio cardinalidad **qualification:SubEsp.code.text**  1..1 -> 0..1
  
- El elemento **gender** del perfil [PrestadorCL](StructureDefinition-CorePrestadorCl.html) y [PacienteCl](StructureDefinition-CorePacienteCl.html) es deprecado y reemplazado por las extensiones:
  - [IdentidadDeGenero](StructureDefinition-IdentidadDeGenero.html)
  - [SexoBiologico](StructureDefinition-SexoBiologico.html)
  - **SexoRegistral**

- Prefil [CoreEspecialidadCl](StructureDefinition-CoreRolClinicoCl.html)

- Perfil [PacienteCl](StructureDefinition-CorePacienteCl.html)
  - Cambio cardinalidad **birthDate** 1..1 -> 0..1
  - Cambio cardinalidad **gender** 1..1 -> 0..1

### Version 1.8.2
- Se agrega CodeSystem y ValueSet *Tipo Identificador*, segun tabla maestra DEIS
- Se modifica la fuerza del ValueSet *Patient.indentifier.type* de *"Required"* -> *"Extensible"*

### Version 1.8.1
- Se agrega link para generar comentarios en un google form

### Versión 1.8.0

- Se realiza cambio del *Computable Name* a "clcore"
- Se realiza cambio del *id* a "hl7.fhir.cl.clcore"