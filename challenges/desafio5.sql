SELECT
  m.musica_nome AS cancao,
  COUNT(hr.pessoa_id) AS reproducoes
FROM
  musicas m
LEFT JOIN historico_de_reproducoes hr ON m.musica_id = hr.musica_id
GROUP BY m.musica_id, m.musica_nome
ORDER BY reproducoes DESC, cancao
LIMIT 2;
