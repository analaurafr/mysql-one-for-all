SELECT
  pu.nome_pessoa_usuaria AS pessoa_usuaria,
  COUNT(hr.musica_id) AS musicas_ouvidas,
  ROUND(SUM(m.musica_duracao / 60), 2) AS total_minutos
FROM
  pessoas_usuarias pu
LEFT JOIN historico_de_reproducoes hr ON pu.pessoa_usuaria_id = hr.pessoa_id
LEFT JOIN musicas m ON hr.musica_id = m.musica_id
GROUP BY pu.nome_pessoa_usuaria
ORDER BY pu.nome_pessoa_usuaria; 