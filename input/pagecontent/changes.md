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
  - [SexoRegistral](StructureDefinition-SexoRegistral.html)

- Prefil [CoreEspecialidadCl](StructureDefinition-CoreEspecialidadCl.html)

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