SELECT
  CAST(MIN(p.valor_plano) AS DECIMAL(10, 2)) AS faturamento_minimo,
  CAST(MAX(p.valor_plano) AS DECIMAL(10, 2)) AS faturamento_maximo,
  CAST(AVG(p.valor_plano) AS DECIMAL(10, 2)) AS faturamento_medio,
  CAST(SUM(p.valor_plano) AS DECIMAL(10, 2)) AS faturamento_total
FROM
  planos p
INNER JOIN pessoas_usuarias pu ON p.plano_id = pu.plano_id;

