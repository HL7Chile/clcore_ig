### Aspectos a Considerar
<br>

Esta sección describe definiciones, interpretaciones y requisitos importantes comunes a todos los actores del clcore, utilizados en esta guía. Los verbos de conformidad - **SHALL** *(Debe)*, **SHOULD** *(Debería Si Condición)*, **MAY** *(Podría)* - utilizados en esta guía se definen en las reglas de conformidad de FHIR.
<br>
### Definiciones Para comprender la Guía

Los perfiles contienen ciertos elementos que son importantes de comprender a la hora de usarlos para implementación
<br>

#### Vistas de los perfiles
<br>

Al revisar un perfil nos encontramos con la posibilidad de ver múltiples vistas de este.

##### Statistics/References

Esta vista permite ver un resumen del Perfil como de que recurso proviene elementos *mandatorios*, *eliminados* y que deben ser *soportados*. Además, resume las *extensiones* y *slices* generados en el diseño.
<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="Stactics-Reference.png"> 
  <p>Visión Resumen de un Perfil</p>
</div>
<br>

##### Vista Diferencial 

Esta vista permite observar todos aquellos elmentos de un recurso que han sido modificadas o adecuadas para la realidad local. Esto incluye cambios como cardinalidad, explicaciones, MS o cualquier otro. Los elementos que se han mantenido tal cual en el recurso madre no figuran en esta vista. 

*Por razon de lenguaje, toda traducción de la descripción de un elemento se considera un cambio y figura en esta vista.*

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="Diferencial.png"> 
  <p>Vista Diferencial de un Perfil</p>
</div>
<br>

##### Vista Snapshot 

En la vista de la **Snapshot Table**, todos los elementos obligatorios definidos para el perfil, y cualquier elemento obligatorio o que deba ser apoyado heredado de un perfil base, están marcados con una **S**. 

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="Snap.png"> 
  <p>Vista Snapshot Table de un perfil</p>
</div>
<br>

##### Vista Key Elements

En la vista **Key Elements Table**, todos los elementos presentados en la vista son obligatorios o deben ser compatibles con el perfil.

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="SnapMS.png"> 
  <p>Vista Key Elements de un perfil</p>
</div>

### Definición del Conjunto Mínimo de Datos
<br>

El CMD definido para cada recurso se deja caracterizado por la bandera **MS** que significa *Must Support*. Este indicador determina que el sistema que recibe ese elemento de un recurso **DEBE** soportar el poder procesarlo y almacenarlo.

La existencia de un elemento o ruta con **MS** no determina la obligatoriedad de que un recurso generado contenga el dato. Esto se define mediante la obligatoriedad del dato lo cual **DEBE** estar especificado en la cardinalidad
<br>

<div align="center" >
  <img  style="border: 1px solid; color: black;" src="MS.png"> 
  <p>Definición de elementos Must Support</p>
</div>

### Búsquedas Soportadas

Los Métodos y los parámetros para la consulta de recursos se describen a continuación y se basan en la busqueda sobre recurso Paciente:

1.  En este caso los servidores **DEBEN** soportar buscar un recurso Patient usando el parametro de búsqueda **[`_id`]:

    `GET [base]/Patient[id]`

    Ejemplos

    1.  GET [base]/Patient/1032702
    2.  GET [base]/Patient?_id=1032702

Lo anterior es aplicable para un recurso ya creado el cual se alamacena con una identificación generada en ese momento    

2.  Los servidores **DEBEN** soportar buscar un recurso Patient por un identificador como el numero RUN de la Cédula de Identidad Nacional, utilizando el parámetro de búsqueda **[`identifier`]:

    `GET [base]/Patient?identifier={system|}[code]`

    Ejemplo:

    1.  <table>

        <tbody>

        <tr>

        <td>GET [base]/Patient?identifier=http://minsal.cl/API/Paciente</td>

        <td>|99999999</td>

        </tr>

        </tbody>

        </table>

    

3.  Ejemplos de búsquedas por otros parámetros

    Ejemplo:

    1.  GET [base]/Patient?name=Villanueva

### Agregado de Recursos (Creando Recursos para ser almacenados)

POST [base]/Patient En el Body, un recurso paciente compatible con el/los perfiles definidos core definido en el clcore (para este caso sería el perfil Paciente-Cl)

### Vocabularios

_Definición de Medicamentos:_ Se utiliza la Terminología de Farmacos Chilena (TFC), expuesta por medio de un servicio de terminolgía Local o desde MINSAL

_Profesionales de la Salud:_ desplegados a travez de la Super Intendencia y el sistema Midas, este registro se expone por medio del recurso  FHIR Practitioner, y la especialidad por medio dek recurso PractitionerRole.

_Establecimientos de Salud_: utiliza su identificación por medio de código DEIS, y su registro se expone a traves de los recursos FHIR Location y Organization, según corresponda.

_Farmacias_: utiliza el registro de farmacias Farmanet y se expone como como los recursos FHIR Location y Organization.

_Pacientes:_ Se identifican por medio de su número identificador que pude ser cualquier tipo de documento especificado en las tablas de HL7 V3 relcionados con identificadores de personas.

_Tablas Maestras específicas:_ se incluyen las de comunas, provincias y regiones, entre otras pertenecientes a la normativa Nacional que son expuestas en la GI y que deben ser en muchos casos levantadas a nivel local


### Cardinalidad
<br>

La cardinalidad define dos aspectos de un elemento dentro de un perfil 

* Cantidad de veces que un elemento se **Puede** repetir.
* La minima cantidad de veces que un elemento **Debe** ser decrito al generar un recurso

De esta forma nos encontramos con varias situaciones

~~~
 
 {0..1} : El elemento se Puede no ser descrito en el recurso (valor 0 inicial), pero de usarse Debe ser desarrollado solo una vez (1 final)
 {1..1} : El elemento es obligatorio pero solo se puede desplegar 1 sola vez
 {0..3} : Elemento no obligatorio que se puede repetir hasta 3 veces
 {1..3} : Elemento obligatorio que puede repetirse hasta 3 veces
 {1..*} : Elemento obligatorio que se puede repetir infintas veces

~~~

### Bindings
<br>

La vinculación obligatoria a una definición de conjunto de valores significa que SE **DEBE** utilizar uno de los códigos del conjunto de valores especificado. En el caso de +CodeableConcept+, no es válido utilizar sólo texto, pero se permiten múltiples codificaciones (traducciones).

La *vinculación extensible* a una definición de conjunto de valores significa que uno de los códigos del conjunto de valores especificado **SE DEBE USAR** si existe un concepto aplicable, pero si no existe un código adecuado en el conjunto de valores, se **PUEDE** proporcionar un código o códigos alternativos en su lugar. Para *CodeableConcept* se permiten múltiples codificaciones y esta regla se aplica a una de ellas. También en el caso de *CodeableConcept*, si sólo se dispone de texto, se puede utilizar sólo el texto.

<br>

<div align="center" >
  <img  style="border: 1px solid; color: black;" src="binding.png"> 
  <p>Definición de Vinculaciones en Códigos</p>
</div>
<br>


### Ejemplos
<br>

La guía desarrolla una serie de ejemplos por perfil desarrollado. Este ejemplo muestra en código como un sistema hace uso de un perfil para generar un recurso. Estos ejemplos se acceden desde la página ejemplos o desde la lengüeta ejemplo de cada perfil
<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="ejemplo.png"> 
  <p>Acceso a Ejemplo desde perfil</p>
</div>
<br>

<br>
Además cada ejemplo viene descrito en 4 formatos:
<br>

* Narrativa del ejemplo: Texto Legible
* Código en JSON
* Código en XML
* Código en Representación TTL
<br>

~~~
{
  "resourceType": "Patient",
  "id": "PacienteCL",
  "meta": {
    "profile": [
      "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl"
    ]
  },
  "name": [
    {
      "use": "official",
      "family": "Rosales",
      "_family": {
        "extension": [
          {
            "url": "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
            "valueString": "Bosh"
          }
        ]
      },
      "given": [
        "Marietta",
        "María",
        "Ximena"
      ]
    },
    {
      "use": "usual",
      "given": [
        "Xime"
      ]
    }
  ],
  "contact": [
    {
      "name": {
        "use": "official",
        "family": "Calleja",
        "_family": {
          "extension": [
            {
              "url": "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
              "valueString": "Morales"
            }
          ]
        },
        "given": [
          "Juana",
          "Josefa"
        ]
      },
      "extension": [
        {
          "url": "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdContacto",
          "extension": [
            {
              "url": "tutId",
              "valueIdentifier": {
                "type": {
                  "coding": [
                    {
                      "code": "NNCHL",
                      "system": "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI",
                      "display": "Chile"
                    }
                  ]
                },
                "system": "http://regcivil.cl/Validacion/RUN",
                "value": "8987321-7"
              }
            },
            {
              "url": "docProc",
              "valueCodeableConcept": {
                "coding": [
                  {
                    "code": "152",
                    "system": "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
                    "display": "Chile"
                  }
                ]
              }
            }
          ]
        }
      ],
      "relationship": [
        {
          "coding": [
            {
              "code": "N",
              "system": "http://terminology.hl7.org/CodeSystem/v2-0131",
              "display": "Next-of-Kin"
            }
          ]
        }
      ]
    }
  ],
  "extension": [
    {
      "url": "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdentidadDeGenero",
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "1",
            "system": "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentidaddeGenero",
            "display": "Masculino"
          }
        ]
      }
    },
    {
      "url": "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SexoBiologico",
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "male",
            "system": "http://hl7.org/fhir/administrative-gender",
            "display": "Male"
          }
        ]
      }
    }
  ],
  "identifier": [
    {
      "use": "official",
      "type": {
        "extension": [
          {
            "url": "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
            "valueCodeableConcept": {
              "coding": [
                {
                  "code": "152",
                  "system": "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
                  "display": "Chile"
                }
              ]
            }
          }
        ],
        "coding": [
          {
            "system": "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI",
            "code": "NNCHL",
            "display": "Chile"
          }
        ]
      },
      "system": "http://regcivil.cl/Validacion/RUN",
      "value": "15.236.327-k"
    }
  ],
  "active": true,
  "telecom": [
    {
      "system": "phone",
      "use": "mobile",
      "value": "943561833"
    },
    {
      "system": "email",
      "use": "work",
      "value": "mariRosal@mimail.com"
    }
  ],
  "gender": "female",
  "birthDate": "1983-03-24",
  "address": [
    {
      "use": "home",
      "line": [
        "Av Los Chirimoyos, 32, casa 4"
      ],
      "_city": {
        "extension": [
          {
            "url": "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl",
            "valueCodeableConcept": {
              "coding": [
                {
                  "code": "05602",
                  "system": "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL",
                  "display": "Algarrobo"
                }
              ]
            }
          }
        ]
      },
      "_district": {
        "extension": [
          {
            "url": "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl",
            "valueCodeableConcept": {
              "coding": [
                {
                  "code": "056",
                  "system": "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL",
                  "display": "San Antonio"
                }
              ]
            }
          }
        ]
      },
      "_state": {
        "extension": [
          {
            "url": "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl",
            "valueCodeableConcept": {
              "coding": [
                {
                  "code": "05",
                  "system": "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL",
                  "display": "Valparaíso"
                }
              ]
            }
          }
        ]
      },
      "_country": {
        "extension": [
          {
            "url": "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
            "valueCodeableConcept": {
              "coding": [
                {
                  "code": "152",
                  "system": "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
                  "display": "Chile"
                }
              ]
            }
          }
        ]
      }
    }
  ],
  "communication": [
    {
      "language": {
        "coding": [
          {
            "code": "es-CL",
            "system": "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoslenguaje",
            "display": "Spanish"
          }
        ]
      }
    }
  ],
  "generalPractitioner": [
    {
      "reference": "Organization/OrganizacionClEjemplo1"
    }
  ]
}
~~~
