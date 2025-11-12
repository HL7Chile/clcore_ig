### Privacidad y seguridad del paciente

Las transacciones de la CL Core a menudo utilizan información específica del paciente, que podría ser explotada por actores maliciosos que resulten en la exposición de los datos del paciente. Por esta razón, todas las transacciones de CL Core deben protegerse adecuadamente con acceso a personas autorizadas limitadas, datos protegidos en tránsito y medidas de auditoría apropiadas.

Los implementadores **DEBEN** tener en cuenta estas [consideraciones de seguridad](http://hl7.org/fhir/R4/security.html) asociadas con las transacciones FHIR, particularmente aquellas relacionadas con:

* [Comunicaciones](http://hl7.org/fhir/R4/security.html#http)
* [Autenticación](http://hl7.org/fhir/R4/security.html#authentication)
* [Autorización/Control de acceso](http://hl7.org/fhir/R4/security.html#authorization/access%20control)
* [Registro de auditoría](http://hl7.org/fhir/R4/security.html#audit%20logging)
* [Firmas digitales](http://hl7.org/fhir/R4/security.html#digital%20signatures)
* [Etiquetas de seguridad](http://hl7.org/fhir/R4/security-labels.html)
* [Narrativa](http://hl7.org/fhir/R4/security.html#narrative)

Para CL Core, los requisitos de conformidad de seguridad son los siguientes:

* Los sistemas **DEBEN** hacer referencia a una única fuente de tiempo para establecer una base de tiempo común para la auditoría de seguridad y los registros de datos clínicos entre los sistemas informáticos. El servicio de tiempo seleccionado **DEBE** documentarse en el Acuerdo de Socio Comercial cuando esté disponible.
* Los sistemas **DEBEN** mantener registros de auditoría de las diversas transacciones.
* Los sistemas **DEBEN** usar TLS versión 1.2 o superior para todas las transmisiones que no tengan lugar a través de una conexión de red segura. (Se recomienda el uso de TLS incluso dentro de un entorno de red seguro para proporcionar una defensa en profundidad).
* Los sistemas **DEBEN** cumplir con los requisitos de seguridad de comunicaciones de FHIR.
* Para la autenticación y autorización, los sistemas **DEBEN** admitir la versión 2.0.0 de SMART App Launch para las interacciones entre el cliente < y el servidor >. NOTA: Las especificaciones de SMART App Launch incluyen los ámbitos de OAuth 2.0 necesarios para permitir decisiones de seguridad.
* Los sistemas **DEBERIAN** proporcionar declaraciones de procedencia utilizando el recurso [CL Provenance](StructureDefinition-ProvenanceCl.html) y los requisitos asociados.
* Los sistemas **PUEDEN** implementar las [firmas digitales FHIR](http://hl7.org/fhir/R4/security.html#digital%20signatures) y proporcionar comentarios sobre su idoneidad para las transacciones principales de Chile.
* Los sistemas **PUEDEN** proteger la confidencialidad de los datos en reposo mediante el cifrado y los controles de acceso asociados. Las políticas y los métodos utilizados están fuera del alcance de esta especificación.

### Seguridad Clínica

Al implementar FHIR y CL Core, los implementadores deben ser conscientes de los riesgos y las compensaciones y se les anima a revisar la sección de [seguridad clínica](http://hl7.org/fhir/R4/safety.html) en la especificación básica.