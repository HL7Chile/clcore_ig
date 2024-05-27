- Se modifica y agregan nuevos terminos en "CSTipoIdentificador"


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
- Cambio en el [Ejemplo Organización Prestadora de Salud](Organization-ORG1.html) para cumplir con el perfil [OrganiztionCL](StructureDefinition-CoreOrganizacionCl.html)
- Cambio en el [Ejemplo Localización Farmacia](Location-LocalizacionEjemploCL1.html) para cumplir con el perfil [LocalizacionCL](StructureDefinition-CoreLocalizacionCl.html)
- Se incluyo el context en las siguientes extensiones:
  - [Códigos para Comunas en Chile](StructureDefinition-ComunasCl.html)
  - [Códigos para Provincias en Chile](StructureDefinition-ProvinciasCl.html)
  - [Códigos para Regiones en Chile](StructureDefinition-RegionesCl.html)
  - [Identificación del Contacto de un Paciente](StructureDefinition-IdContacto.html)
  - [Especialidad del médico principal](StructureDefinition-VSEspecialidadesDeisCL.html)
  - [Contacto de los participantes secundarios del encuentro](StructureDefinition-ContactoParticipantes.html)
  - [Código de las razones por la cual no se pudo realizar la atención](StructureDefinition-RazonNOrealizarse.html)
  - [Notas realizadas en un encuentro por Comité](StructureDefinition-NotasEncuentro.html)
  - [Observaciones o comentarios simples respecto a un diagnóstico](StructureDefinition-ObservacionesDiagnostico.html)
  - [Código de tipos de Vacunas en Chile](StructureDefinition-TiposVacunaRNI.html)
  - [Nombre de la Campaña de vacunación establecida por el RNI (Registro Nacional de Inmunizaciones)](StructureDefinition-NombreCampana.html)
  - [Razones por las cuales no se pudo realizar la inmunización](StructureDefinition-RazonNOrealizarseInm.html)
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
  - Cambio cardinalidad **geder** 1..1 -> 0..1
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
  - Cambio cardinalidad **geder** 1..1 -> 0..1

### Version 1.8.2
- Se agrega CodeSystem y ValueSet *Tipo Identificador*, segun tabla maestra DEIS
- Se modifica la fuerza del ValueSet *Patient.indentifier.type* de *"Required"* -> *"Extensible"*

### Version 1.8.1
- Se agrega link para generar comentarios en un google form

### Versión 1.8.0

- Se realiza cambio del *Computable Name* a "clcore"
- Se realiza cambio del *id* a "hl7.fhir.cl.clcore"