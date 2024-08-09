### Versión de Desarrollo
<br>

Esta Guía es la continuación de la versión 1.0.0 STU baloteada en diciembre del 2021, y agrega nuevos perfiles, permitiendo ir mejorando las cacacidades de la CORE en función de las nececidades del medio.
### Cómo leer esta Guía
<br>

Esta Guía sigue un formato especificado para **FHIR R4**, y se divide en varias paginas que proporcianan información **General del Core** y la explicacipon técnica de los **Artefactos Generados**. El menú se encuentra en la parte superior en la *barra de menú*.
<br>

* [Home](index.html): Provee la introducción acerca de esta guía.
* [Objetivos](Alcances-Objetivos.html): Describe los objetivos estratégicos de HL7, HL7 Internacional y el como esta guía se alinea con los objetivos estratégicos nacionales y organizacionales.
* [Must Support](Notas-MS.html): Describe el uso del Must Support para los perfiles de esta guía.
* [Generalidades](Aspectos-Generales.html): Se especifican algunos conceptos importantes para poder comprender la lectura de los artefactos con el fin de hacer uso de la guía con objetivos de implementación
* Operaciones: Define las operaciones más usadas para el intercambo, manejo, consulta, actualización, etc. de Recursos Generados en un servidor.
* Artefactos: Estas páginas proveen descripciones detalladas y definiciones formales para los artefectos FHIR definidos en la guía.
    * [Perfiles](artifacts.html#structures-resource-profiles): Descripción de los perfiles Core generados para Chile
    * [Extensiones](artifacts.html#structures-extension-definitions): Descripción de todas las extensiones creadas para satisfacer las necesidades nacionales para los perfiles creados
    * [ValueSets](artifacts.html#terminology-value-sets): Descripción de los sets de valores creados para poder hacer uso dentro de las necesidades locales de los perfiles creados.
    * [CodeSystems](artifacts.html#terminology-code-systems): Describe todos los sistemas de códificación para las necesidades locales de los perfiles creados.
    * [Ejemplos](artifacts.html#example-example-instances): Listado de ejemplos descritos a lo largo de la guía
<br>

### Perfiles de la Guía

Cada perfil define los elementos obligatorios mínimos, extensiones y requerimientos terminológicos que **DEBEN** cumplirse. Para cada perfil, estos requerimientos se declaran con un sencillo resumen narrativo.

Tambien se presenta una tabla jerárquica con una vista lógica del contenido como *Snapshot* y *Differential* . Para cada perfil también expresamos el conjunto de interacciones FHIR Restful asociadas (búsquedas, operaciones u otras interacciones)

* [CL Alergias e Intolerancias](StructureDefinition-CoreAletgiaIntCl.html)
* [CL Auditoría](StructureDefinition-AuditEventCl.html)
* [CL Documento](StructureDefinition-DocumentoCl.html)
* [CL Diagnóstico-Condición](StructureDefinition-CoreDiagnosticoCl.html)
* [CL Encuetro Clínico](StructureDefinition-EncounterCL.html)
* [CL RolClinico](StructureDefinition-CoreRolClinicoCl.html)
* [CL Inmunizacion](StructureDefinition-ImmunizationCL.html)
* [CL Localización](StructureDefinition-CoreLocalizacionCl.html)
* [CL Medicamento](StructureDefinition-CoreMedicamentoCl.html) 
* [CL Organización](StructureDefinition-CoreOrganizacionCl.html)
* [CL Paciente](StructureDefinition-CorePacienteCl.html)
* [CL Prestador](StructureDefinition-CorePrestadorCl.html)
* [CL Provenance](StructureDefinition-ProvenanceCl.html)

### Requerimientos de Conformidad

Los requerimientos de conformidad describen las expectativas sobre la funcionalidad de las aplicaciones servidor/cliente, identificando los perfiles específicos y las interacciones que deben implementar. Los perfiles individuales identifican los requerimientos estructurales y terminológicos. Las definiciones de parámetros de búsqueda y operaciones especifican cómo son implementados por los servidores.

###	 Autores y Colaboradores

- Autores de la guia:
  - **Pablo Pizarro (MINSAL)** [ppizarro.delgado@minsal.cl](mailto:ppizarro.delgado@minsal.cl)
  - **Nicolás Soto (MINSAL)** [nicolas.soto@minsal.cl](mailto:nicolas.soto@minsal.cl)
  - **César Galindo (HL7 Chile)** [cgalindo@uv.cl](mailto:cgalindo@uv.cl)
  - **Jorge Mansilla (HL7 Chile)** [jorgemansillas@gmail.com](mailto:jorgemansillas@gmail.com)

- Colaboradores:
  - Diego Olea (MINSAL)
  - Franco Ulloa (MINSAL)
  - Diego Kaminker (HL7 Internacional)
  - Yanara Salinas (UV)

### Dependencias

{% include dependency-table.xhtml %}

### Analisis de versiones cruzadas

{% include cross-version-analysis.xhtml %}

### Perfiles globales

{% include globals-table.xhtml %}

### Declaracion de propiedad intelectual

{% include ip-statements.xhtml %}


### Recursos a Disposición
[Ministerio de Salud de Chile](http://www.minsal.cl)

[Capítulo Chileno de HL7, HL7 Chile](http://hl7chile.cl)

[HL7 Internacional](http://hl7.org)

[FHIR R4](http://hl7.org/fhir/)

[FHIR Shorthand Documentation](https://build.fhir.org/ig/HL7/fhir-shorthand) 

[FHIR Shorthand documentation code repository](https://github.com/HL7/fhir-shorthand)

[SUSHI code repository](https://github.com/FHIR/sushi)

[Zulip](https://chat.fhir.org) channel: #shorthand

