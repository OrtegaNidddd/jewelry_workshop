# **Documentación Base de la Base de Datos – `jewelry_workshop` - Avance Segundo Parcial**

## **Bases de Datos**


### **Docente:**

Ing. Hely Suarez Marin

### **Integrantes:**

-   Nick Alejandro Ortega Méndez
-   Santiago Alejandro Medina Ortega
-   Andres Felipe Reyes
-   Johel Alexander Velasco Guerrero

Octubre / 9 / 2025

### **Resumen del Problema**

Los talleres de joyería artesanal enfrentan un serio desafío con la
gestión manual y dispersa de su información. Esta falta de un sistema
centralizado causa errores de comunicación, pérdida de datos y nula
trazabilidad en los pedidos. En consecuencia, el taller sufre retrasos y
bajas en la calidad del servicio. A nivel operativo, esta
desorganización impide medir la productividad y analizar el desempeño,
reduciendo la competitividad y la capacidad de planificar eficientemente
el negocio.

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

## 1. **Descripción general del proceso**

   ![Flujo de Proceso](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Flujo_del_proceso.png)
    
El flujo inicia con la solicitud del cliente, donde se registran los
requerimientos iniciales. Posteriormente, el equipo realiza el diseño y
genera un presupuesto asociado al pedido. Una vez que el cliente revisa
y emite su aprobación formal, se procede a la fabricación de la joya.
Antes de la entrega, el producto pasa por un control de calidad que
asegura el cumplimiento de los estándares acordados. Finalmente, se
realiza la entrega al cliente, cerrando el ciclo de manera trazable y
organizada.

## 2.  **Revisión / Investigación de Verificabilidad**

Se observo un taller artesanal de joyería que opera actualmente sin un
sistema formal. Los pedidos se inician a través de mensajes directos en
WhatsApp, donde los diseños, medidas y presupuestos se gestionan con
fotos y textos simples. Esta práctica resultaba en la ausencia de
control de versiones para los diseños y aprobaciones implícitas (como un
\"OK\" en el chat). Consecuentemente, varios pedidos sufrieron problemas
y malentendidos sobre detalles de grabado y tamaños (anillos, cadenas,
etc.), llevando a retrasos en las fechas de entrega.

# 3.  **Diagramas UML para la BD**

## 3.1 **Casos de Uso**

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
conectan las acciones entre sí dentro del sistema

## 3.2 **Diagrama de Clases**

![Diagrama de Clases](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Diagramas/clases.png)

El diagrama de clases representa las entidades reales del sistema y cómo
se relacionan entre sí.\
El Cliente realiza pedidos atendidos por un Asesor, cada Pedido puede
tener varios Diseños y Cotizaciones; si una cotización es aprobada, pasa
a Fabricación a cargo de un Maestro Joyero, y finalmente se registra la
Entrega.\
Cada clase muestra sus atributos principales, reflejando la estructura
de la base de datos **jewelry_workshop.**\

## 3.3 **Diagrama de Estados**

![Diagrama de Estados](https://github.com/OrtegaNidddd/jewelry_workshop/blob/main/Informes/assets/Diagramas/estados.drawio.png)

El diagrama de estados representa el ciclo de vida completo de un pedido
dentro del sistema.\
Inicia en Creado, pasa a Cotizado, luego puede ser Aprobado o Cancelado
según la decisión del cliente.\
Si se aprueba, avanza a Fabricación y finalmente a Entregado, donde se
completa y cierra el proceso.\
Refleja de forma clara cómo el sistema controla la evolución y los
posibles resultados de un pedido.

# Relaciones

- cliente (1) — (N) pedido
- asesor  (1) — (N) pedido
- pedido  (1) — (N) diseno
- pedido  (1) — (N) cotizacion
- diseno  (1) — (N) cotizacion
- pedido  (1) — (N) fabricacion
- maestro (1) — (N) fabricacion
- pedido  (1) — (N) entrega
- asesor  (1) — (N) entrega

# Restricciones con CHECK

- pedido.estado ∈ {Creado, Cotizado, Aprobado, Fabricación, Entregado, Cancelado}
- cotizacion.estado ∈ {Enviada, Aprobada, Rechazada}
- fabricacion.estado ∈ {Planificado, En Proceso, Terminado}

# Llaves Primarias (PK)

<body>
    <table>
        <thead>
            <tr>
                <th>Tabla</th>
                <th>Llave Primaria</th>
                <th>Descripción</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>admin</td>
                <td>id_admin</td>
                <td>Identificador único del administrador.</td>
            </tr>
            <tr>
                <td>asesor</td>
                <td>id_asesor</td>
                <td>Identificador único de cada asesor o vendedor.</td>
            </tr>
            <tr>
                <td>cliente</td>
                <td>id_cliente</td>
                <td>Identificador único del cliente que solicita un pedido.</td>
            </tr>
            <tr>
                <td>pedido</td>
                <td>id_pedido</td>
                <td>Identificador principal de los pedidos realizados.</td>
            </tr>
            <tr>
                <td>diseno</td>
                <td>id_diseno</td>
                <td>Identificador de cada diseño asociado a un pedido.</td>
            </tr>
            <tr>
                <td>cotizacion</td>
                <td>id_cotizacion</td>
                <td>Identificador único de cada cotización.</td>
            </tr>
            <tr>
                <td>maestro</td>
                <td>id_maestro</td>
                <td>Identificador del maestro joyero responsable de la fabricación.</td>
            </tr>
            <tr>
                <td>fabricacion</td>
                <td>id_fabricacion</td>
                <td>Identificador de la orden de fabricación.</td>
            </tr>
            <tr>
                <td>entrega</td>
                <td>id_entrega</td>
                <td>Identificador de la entrega final al cliente.</td>
            </tr>
        </tbody>
    </table>
</body>

# Llaves Foráneas (FK)

<body>
    <table>
        <thead>
            <tr>
                <th>Tabla</th>
                <th>Columna FK</th>
                <th>Referencia</th>
                <th>Relación</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>pedido</td>
                <td>id_cliente</td>
                <td>cliente(id_cliente)</td>
                <td>Cada pedido pertenece a un cliente.</td>
            </tr>
            <tr>
                <td>pedido</td>
                <td>id_asesor</td>
                <td>asesor(id_asesor)</td>
                <td>Cada pedido es gestionado por un asesor.</td>
            </tr>
            <tr>
                <td>diseno</td>
                <td>id_pedido</td>
                <td>pedido(id_pedido)</td>
                <td>Un pedido puede tener uno o varios diseños.</td>
            </tr>
            <tr>
                <td>cotizacion</td>
                <td>id_pedido</td>
                <td>pedido(id_pedido)</td>
                <td>Cada cotización pertenece a un pedido.</td>
            </tr>
            <tr>
                <td>cotizacion</td>
                <td>id_diseno</td>
                <td>diseno(id_diseno)</td>
                <td>Cada cotización se asocia a un diseño específico.</td>
            </tr>
            <tr>
                <td>fabricacion</td>
                <td>id_pedido</td>
                <td>pedido(id_pedido)</td>
                <td>Cada orden de fabricación corresponde a un pedido.</td>
            </tr>
            <tr>
                <td>fabricacion</td>
                <td>id_maestro</td>
                <td>maestro(id_maestro)</td>
                <td>La fabricación la ejecuta un maestro joyero.</td>
            </tr>
            <tr>
                <td>entrega</td>
                <td>id_pedido</td>
                <td>pedido(id_pedido)</td>
                <td>Cada entrega corresponde a un pedido terminado.</td>
            </tr>
            <tr>
                <td>entrega</td>
                <td>responsable_entrega</td>
                <td>asesor(id_asesor)</td>
                <td>La entrega la realiza un asesor.</td>
            </tr>
        </tbody>
    </table>
</body>

# Llaves Únicas (UNIQUE)

<body>
    <table>
        <thead>
            <tr>
                <th>Tabla</th>
                <th>Columna</th>
                <th>Descripción</th>
            </tr>
        </thead>
        <tbody>
            </tr>
            <tr>
                <td>asesor</td>
                <td>cedula</td>
                <td>Cada asesor debe tener una cédula diferente.</td>
            </tr>
            <tr>
                <td>cliente</td>
                <td>cedula</td>
                <td>Evita que dos clientes se registren con la misma identificación.</td>
            </tr>
            <tr>
                <td>maestro</td>
                <td>cedula</td>
                <td>Cada maestro joyero tiene un número único de cédula.</td>
            </tr>
        </tbody>
    </table>
</body>
