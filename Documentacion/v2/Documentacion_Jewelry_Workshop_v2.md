# **Proyecto de Taller de Joyería -- Avance del Proyecto Segundo Parcial**

## **Modelos y Documentación del Software**

### **Docente:**

Ing. Hely Suarez Marin

### **Integrantes:**

-   Nick Alejandro Ortega Méndez

-   Santiago Alejandro Medina Ortega

-   Johel Alexander Velasco Guerrero

Octubre / 5 / 2025

## **Problema**

Los talleres de joyería artesanal enfrentan actualmente un desafío
creciente en la gestión de su información. A medida que aumenta la
demanda de productos personalizados, también crece la complejidad de los
procesos internos: atender pedidos, coordinar a los asesores, registrar
diseños, realizar cotizaciones, fabricar las piezas y garantizar la
entrega oportuna. Muchos de estos procedimientos continúan realizándose
de forma manual o en registros dispersos, lo que ocasiona errores de
comunicación, pérdida de datos y dificultades para realizar un
seguimiento preciso del trabajo. Esta falta de control centralizado
afecta directamente la calidad del servicio, ya que un pedido mal
registrado o una cotización extraviada pueden traducirse en retrasos,
inconformidades o pérdidas económicas.

Además, la ausencia de un sistema organizado limita la capacidad de los
encargados del taller para analizar su desempeño o planificar de manera
eficiente. Sin registros confiables, se dificulta medir la
productividad, conocer los estados reales de fabricación o identificar
posibles cuellos de botella en los procesos. En consecuencia, el taller
se vuelve vulnerable a la improvisación y la desinformación, reduciendo
su competitividad y credibilidad ante los clientes.

## **Solución**

Frente a esta problemática, se propone implementar una plataforma web
sencilla y centralizada que permita estandarizar el flujo completo del
proceso de trabajo dentro del taller, abarcando desde la solicitud
inicial del cliente hasta la entrega final del producto. Esta plataforma
organizará las etapas de:

1.  Solicitud

2.  Diseño

3.  Cotización

4.  Aprobación

5.  Fabricación

6.  Control de Calidad

7.  Entrega

Asegurando que cada paso quede debidamente registrado y validado dentro
del sistema.

El acceso estará basado en roles definidos (por ejemplo,
administradores, asesores, maestros artesanos y clientes), lo que
permitirá que cada usuario visualice y gestione únicamente la
información que le corresponde. De igual manera, el sistema incorporará
validaciones básicas para prevenir errores de registro, inconsistencias
o pérdidas de información, fortaleciendo así la trazabilidad y el
control interno del taller. La plataforma busca optimizar la
comunicación entre las distintas áreas, reducir la dependencia de
procesos manuales y ofrecer un entorno más confiable y organizado para
la gestión de cada joya fabricada.

## **Impacto**

La implementación de este sistema tendrá un doble impacto positivo en el
taller:

1.  **Eficiencia Operacional Interna:** El sistema optimizará el tiempo
    de respuesta, minimizará errores de registro y mejorará la
    trazabilidad de cada joya. Esto fomenta una cultura de organización
    y mejora continua al ofrecer una visión clara del progreso.

2.  **Modernización y Confianza Externa:** El proyecto contribuye a la
    modernización del sector artesanal sin perder su esencia
    tradicional. La digitalización fortalecerá la confianza del cliente,
    impulsará la profesionalización del equipo de trabajo y servirá como
    base para futuras innovaciones y la toma de decisiones informadas.

---

### 1.  **Resumen del Problema**

Los talleres de joyería artesanal enfrentan un serio desafío con la
gestión manual y dispersa de su información. Esta falta de un sistema
centralizado causa errores de comunicación, pérdida de datos y nula
trazabilidad en los pedidos. En consecuencia, el taller sufre retrasos y
bajas en la calidad del servicio. A nivel operativo, esta
desorganización impide medir la productividad y analizar el desempeño,
reduciendo la competitividad y la capacidad de planificar eficientemente
el negocio.

### 2.  **Posible solución (plataforma de pedidos personalizados)**

Se propone el desarrollo de una plataforma web centralizada y sencilla
para administrar integralmente los pedidos de joyería personalizados. El
objetivo es estandarizar todo el flujo productivo (desde la solicitud
hasta la entrega), garantizando el control, la trazabilidad y la
comunicación entre el equipo.

Inicialmente, la solución será implementada como un Producto Mínimo
Viable (MVP), concentrando solo las funciones esenciales. Este enfoque
permitirá validar rápidamente la eficacia del sistema y medir su impacto
real en la digitalización del taller.

## **Alcance (MVP)**

-   Registrar pedidos con descripción, materiales de referencia y
    observaciones específicas del cliente.

-   Adjuntar diseños y notas, permitiendo conservar distintas versiones
    de los bocetos generados.

-   Generar un presupuesto activo por pedido, con fecha de validez,
    monto y comentarios asociados.

-   Registrar formalmente la aprobación o rechazo del cliente,
    asegurando evidencia de cada decisión.

-   Controlar el estado de producción.

-   Mantener trazabilidad básica, registrando quién realizó cada acción
    y en qué momento.

## **Actores y Funciones**

<body>
    <table>
        <thead>
            <tr>
                <th>Actor</th>
                <th>Funciones principales</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Cliente</td>
                <td>Revisa y aprueba presupuestos, consulta el estado de su pedido y visualiza los avances.</td>
            </tr>
            <tr>
                <td>Asesor</td>
                <td>Crea nuevos pedidos, sube bocetos o diseños, emite presupuestos y gestiona la entrega final al cliente.</td>
            </tr>
            <tr>
                <td>Maestro joyero</td>
                <td>Recibe los pedidos aprobados, fabrica las piezas y actualiza el estado del trabajo a "Listo".</td>
            </tr>
            <tr>
                <td>Administrador (opcional)</td>
                <td>Supervisa la operación general del sistema, gestiona usuarios, permisos y catálogos de referencia.</td>
            </tr>
        </tbody>
    </table>
</body>


**Reglas Clave del Sistema**

-   No se permite iniciar la fabricación sin un presupuesto aprobado por
    el cliente.

-   Cada pedido puede tener varios bocetos o diseños, pero solo un
    presupuesto activo a la vez.

-   La entrega final requiere seguir la secuencia de estados.

-   Todos los cambios deben quedar registrados con fecha, hora y usuario
    responsable, para garantizar la trazabilidad.

## 3. **Descripción general del proceso**

   ![Flujo de Proceso](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Flujo_del_proceso.png)
    
El flujo inicia con la solicitud del cliente, donde se registran los
requerimientos iniciales. Posteriormente, el equipo realiza el diseño y
genera un presupuesto asociado al pedido. Una vez que el cliente revisa
y emite su aprobación formal, se procede a la fabricación de la joya.
Antes de la entrega, el producto pasa por un control de calidad que
asegura el cumplimiento de los estándares acordados. Finalmente, se
realiza la entrega al cliente, cerrando el ciclo de manera trazable y
organizada.

## 4.  **Revisión / Investigación de Verificabilidad**

Se observo un taller artesanal de joyería que opera actualmente sin un
sistema formal. Los pedidos se inician a través de mensajes directos en
WhatsApp, donde los diseños, medidas y presupuestos se gestionan con
fotos y textos simples. Esta práctica resultaba en la ausencia de
control de versiones para los diseños y aprobaciones implícitas (como un
\"OK\" en el chat). Consecuentemente, varios pedidos sufrieron problemas
y malentendidos sobre detalles de grabado y tamaños (anillos, cadenas,
etc.), llevando a retrasos en las fechas de entrega.

## 5.  **Diagramas UML realizados**

### 5.1 **Casos de Uso**

![Diagrama Casos de Uso](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Diagramas/casos_de_uso.png)

El diagrama de casos de uso representa las acciones principales que
realizan los distintos actores dentro de la plataforma de pedidos
personalizados.

En él se observa la participación de cuatro actores: el Cliente, el
Asesor o encargado de ventas, el Maestro joyero y el Administrador.

Cada uno cumple un rol específico dentro del flujo general del sistema.

-   El Cliente puede revisar presupuestos, aprobar o rechazar propuestas
    y consultar el estado de sus pedidos.

-   El Asesor es quien registra los pedidos, adjunta los diseños, emite
    los presupuestos y gestiona tanto el control de calidad como la
    entrega final.

-   El Maestro joyero participa en la fase de producción, fabricando la
    pieza y actualizando su estado a "Listo".

-   El Administrador tiene funciones de gestión interna, como el control
    de usuarios y catálogos.

El diagrama muestra también las relaciones entre los casos de uso y con
esto se visualiza claramente quién interviene en cada etapa y cómo se
conectan las acciones entre sí dentro del sistema.

## 5.2 **Diagrama de Actividades**

![Diagrama de Actividades](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Diagramas/actividades.png)

El diagrama de actividades detalla el flujo secuencial y completo de
un pedido de joyería, desde la solicitud del cliente hasta la entrega
final de la pieza.

El proceso se inicia con la Solicitud del Cliente, seguida del
Registro del Pedido y la carga del diseño por el asesor. La etapa
clave es la Revisión y Aprobación del Presupuesto por el cliente. Si
es rechazado, se ajusta el diseño o el costo; si es aprobado, el
pedido pasa a Fabricación (a cargo del maestro joyero).

Finalmente, la joya terminada pasa por un riguroso Control de Calidad
antes de ser entregada al cliente, cerrando el proceso. Este diagrama
permite una visualización clara de los pasos y decisiones necesarios
para una gestión controlada.

## 5.3 **Diagrama de Secuencia**

![Diagrama de Secuencia](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Diagramas/secuencia.drawio.png)

El diagrama muestra el flujo de interacción entre Cliente,
Asesor/Ventas, Sistema y Maestro Joyero.

Inicia con la solicitud del pedido, continúa con el registro, diseño y
presupuesto, y según la aprobación o rechazo, avanza a la fabricación,
control de calidad y entrega final, cerrando el proceso completo del
pedido.

## 5.4 **Diagrama de Comunicación**

### 5.4.1 **Comunicación aprobado**

![Diagrama de Comunicación aprobado](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Diagramas/comunicacion_aprobado.drawio.png)

Muestra la comunicación entre Cliente, Asesor, Sistema y Maestro Joyero
durante el proceso normal del pedido: desde la solicitud y registro,
pasando por la aprobación del presupuesto, la fabricación, el control de
calidad y la entrega final.

### 5.4.2 **Comunicación rechazado**

![Diagrama de Comunicación rechazado](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Diagramas/comunicacion_rechazado.drawio.png)

Representa el camino alternativo cuando el cliente rechaza el
presupuesto: el sistema notifica al asesor, quien realiza ajustes en el
diseño o costo y vuelve a enviarlo al cliente para una nueva revisión.

## 5.5 **Diagrama de Paquetes**

![Diagrama de Paquetes](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Diagramas/paquetes.drawio.png)

El diagrama de paquetes muestra la organización modular del sistema,
dividida en tres capas: Presentación, donde interactúan los usuarios;
Lógica de negocio, donde se procesan pedidos, cotizaciones y
fabricaciones; y Datos, donde se almacenan clientes, pedidos, diseños y
entregas. Representa una arquitectura clara y jerárquica que facilita el
mantenimiento y la trazabilidad del sistema.

## 5.6 **Diagrama de Clases**

![Diagrama de Paquetes](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Diagramas/clases.drawio.png)

El diagrama de clases representa las entidades reales del sistema y cómo
se relacionan entre sí.\
El Cliente realiza pedidos atendidos por un Asesor, cada Pedido puede
tener varios Diseños y Cotizaciones; si una cotización es aprobada, pasa
a Fabricación a cargo de un Maestro Joyero, y finalmente se registra la
Entrega.\
Cada clase muestra sus atributos principales, reflejando la estructura
de la base de datos **jewelry_workshop.**

## 5.7 **Diagrama de Objetos**

![Diagrama de Objetos](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Diagramas/objetos.drawio.png)

El diagrama de objetos muestra instancias reales de la base de datos,
representando ejemplos concretos de clientes, asesores, pedidos,
diseños, cotizaciones y procesos de fabricación.\
Permite visualizar cómo las clases se materializan en datos reales: el
Cliente realiza un Pedido, el Asesor lo atiende, se generan Diseños y
Cotizaciones, y tras su aprobación, el Maestro Joyero inicia la
Fabricación.\
Refleja el estado actual del sistema, mostrando las relaciones activas
entre las entidades en un momento específico.

## 5.8 **Diagrama de Estados**

![Diagrama de Estados](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Diagramas/estados.drawio.png)

El diagrama de estados representa el ciclo de vida completo de un pedido
dentro del sistema.\
Inicia en Creado, pasa a Cotizado, luego puede ser Aprobado o Cancelado
según la decisión del cliente.\
Si se aprueba, avanza a Fabricación y finalmente a Entregado, donde se
completa y cierra el proceso.\
Refleja de forma clara cómo el sistema controla la evolución y los
posibles resultados de un pedido.

## 5.9 **Diagrama de Tiempo**

![Diagrama de Tiempo](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Diagramas/tiempo.png)

El diagrama de tiempo muestra cómo las acciones de cada actor
evolucionan cronológicamente durante el ciclo de vida de un pedido.\
El Cliente solicita la joya, el Asesor registra el pedido y genera la
cotización, el Sistema coordina las notificaciones y el Maestro Joyero
fabrica la pieza.\
Cada cambio refleja el estado de los participantes a lo largo del
proceso, desde la solicitud inicial hasta la entrega final.

## 5.10 **Diagrama de Componentes**

![Diagrama de Componentes](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Diagramas/componentes.png)

El diagrama organiza la solución en capas:

-   Front-End (Web UI) consume API REST.

-   La API aplica Auth/Roles.

-   La lógica de negocio vive en servicios por dominio: Pedidos,
    Cotizaciones, Diseños, Fabricación, Entregas.

-   Cada servicio usa DAOs para acceder a la BD MySQL jewelry_workshop.\
    Esta estructura separa responsabilidades, facilita mantenimiento y
    alinea la app con tu modelo de datos.

## 5.11 **Diagrama de Instalación**

![Diagrama de Instalación](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Diagramas/instalacion.png)

El diagrama de instalación muestra la distribución física del sistema,
donde los usuarios (cliente, asesor y administrador) acceden desde
navegadores web al servidor Laravel, que aloja tanto la interfaz como la
API.\
Este servidor se conecta al servidor MySQL, donde se almacena la base de
datos jewelry_workshop.\
Refleja la estructura real de instalación del sistema, indicando los
componentes y las comunicaciones necesarias para su funcionamiento.

## 5.12 **Diagrama de Despliegue**

![Diagrama de Despliegue](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Diagramas/despliegue.png)

El diagrama de despliegue muestra la estructura física del sistema,
donde el usuario final accede desde un navegador web al servidor
Laravel, que maneja la lógica de negocio, roles y vistas.\
Este servidor se conecta a la base de datos MySQL jewelry_workshop,
donde se almacena toda la información del taller de joyería.
