-- jewelry_workshop– MySQL
-- 10 consultas complejas usando SELECT, FROM, WHERE, GROUP BY, HAVING
-- e implementación de cuantificadores ∃ (EXISTS) y ∀ (NOT EXISTS).
-- Ejecuta primero en el esquema correcto:

USE `jewelry_workshop`;

-- 1) (∃) Clientes con AL MENOS un pedido
SELECT c.id_cliente, CONCAT(c.nombres, ' ', c.apellidos) AS cliente
FROM cliente c
WHERE EXISTS (
  SELECT 1
  FROM pedido p
  WHERE p.id_cliente = c.id_cliente
)
ORDER BY c.id_cliente;

-- 2) (∃) Pedidos que tienen AL MENOS un diseño
SELECT p.id_pedido, p.estado, p.fecha_creacion
FROM pedido p
WHERE EXISTS (
  SELECT 1
  FROM diseno d
  WHERE d.id_pedido = p.id_pedido
);

-- 3) (∃) Pedidos con AL MENOS una cotización APROBADA
SELECT p.id_pedido
FROM pedido p
WHERE EXISTS (
  SELECT 1
  FROM cotizacion c
  WHERE c.id_pedido = p.id_pedido
    AND c.estado = 'Aprobada'
);

-- 4) (∀) Clientes con TODOS sus pedidos ENTREGADOS
-- Universal: negar contraejemplos (pedidos NO entregados)
SELECT c.id_cliente, CONCAT(c.nombres, ' ', c.apellidos) AS cliente
FROM cliente c
WHERE EXISTS (SELECT 1 FROM pedido p WHERE p.id_cliente = c.id_cliente)
  AND NOT EXISTS (
    SELECT 1
    FROM pedido p2
    WHERE p2.id_cliente = c.id_cliente
      AND p2.estado <> 'Entregado'
    );

-- 5) (∀) Pedidos en los que TODAS las cotizaciones están RECHAZADAS
SELECT p.id_pedido
FROM pedido p
WHERE EXISTS (SELECT 1 FROM cotizacion c WHERE c.id_pedido = p.id_pedido)
  AND NOT EXISTS (
    SELECT 1
    FROM cotizacion c2
    WHERE c2.id_pedido = p.id_pedido
      AND c2.estado <> 'Rechazada'
    );

-- 6) (GROUP BY + HAVING) Clientes con 2 o más pedidos
SELECT c.id_cliente,
       CONCAT(c.nombres, ' ', c.apellidos) AS cliente,
       COUNT(*) AS total_pedidos
FROM cliente c
JOIN pedido p ON p.id_cliente = c.id_cliente
GROUP BY c.id_cliente, c.nombres, c.apellidos
HAVING COUNT(*) >= 2
ORDER BY total_pedidos DESC;

-- 7) (GROUP BY + HAVING) Asesores con >50% de pedidos ENTREGADOS
SELECT a.id_asesor,
       CONCAT(a.nombres, ' ', a.apellidos) AS asesor,
       COUNT(*) AS pedidos_total,
       SUM(p.estado = 'Entregado') AS pedidos_entregados,
       ROUND(100 * SUM(p.estado = 'Entregado') / COUNT(*), 1) AS pct_entregado
FROM asesor a
JOIN pedido p ON p.id_asesor = a.id_asesor
GROUP BY a.id_asesor, a.nombres, a.apellidos
HAVING SUM(p.estado = 'Entregado') / COUNT(*) > 0.5
ORDER BY pct_entregado DESC;

-- 8) (GROUP BY + HAVING) Pedidos con cotizaciones y CERO aprobadas
SELECT p.id_pedido,
       COUNT(*) AS cotizaciones,
       SUM(c.estado = 'Aprobada') AS aprobadas
FROM pedido p
JOIN cotizacion c ON c.id_pedido = p.id_pedido
GROUP BY p.id_pedido
HAVING COUNT(*) >= 1
   AND SUM(c.estado = 'Aprobada') = 0;

-- 9) (∀ con NOT EXISTS + CTE) Maestros con TODOS los estados de fabricación
WITH estados_req AS (
  SELECT 'Planificado' AS estado UNION ALL
  SELECT 'En Proceso'  UNION ALL
  SELECT 'Terminado'
)
SELECT m.id_maestro, CONCAT(m.nombres, ' ', m.apellidos) AS maestro
FROM maestro m
WHERE NOT EXISTS (
  SELECT 1
  FROM estados_req er
  WHERE NOT EXISTS (
    SELECT 1
    FROM fabricacion f
    WHERE f.id_maestro = m.id_maestro
      AND f.estado = er.estado
  )
);

