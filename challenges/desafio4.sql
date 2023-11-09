SELECT
  pu.nome_pessoa_usuaria AS pessoa_usuaria,
  CASE
    WHEN MAX(hr.data_reproducao) >= '2021-01-01' THEN 'Ativa'
    ELSE 'Inativa'
  END AS status_pessoa_usuaria
FROM
  pessoas_usuarias pu
LEFT JOIN historico_de_reproducoes hr ON pu.pessoa_usuaria_id = hr.pessoa_id
GROUP BY pu.nome_pessoa_usuaria
ORDER BY pu.nome_pessoa_usuaria;
