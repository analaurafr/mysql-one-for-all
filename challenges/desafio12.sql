SELECT
  a.artista_nome AS artista,
  CASE
    WHEN COUNT(mf.musica_id) >= 5 THEN 'A'
    WHEN COUNT(mf.musica_id) BETWEEN 3 AND 4 THEN 'B'
    WHEN COUNT(mf.musica_id) BETWEEN 1 AND 2 THEN 'C'
    ELSE '-'
  END AS ranking
FROM
  artistas a
LEFT JOIN albuns al ON a.artista_id = al.artista_id
LEFT JOIN musicas m ON al.album_id = m.album_id
LEFT JOIN musicas_favoritas mf ON m.musica_id = mf.musica_id
GROUP BY artista
ORDER BY
  CASE
    WHEN COUNT(mf.musica_id) >= 5 THEN 1
    WHEN COUNT(mf.musica_id) BETWEEN 3 AND 4 THEN 2
    WHEN COUNT(mf.musica_id) BETWEEN 1 AND 2 THEN 3
    ELSE 4
  END,
  artista;

