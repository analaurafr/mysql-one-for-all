SELECT
  a.artista_nome AS artista,
  al.album_nome AS album,
  COALESCE(COUNT(sa.pessoa_usuaria_id), 0) AS pessoas_seguidoras
FROM
  artistas a
LEFT JOIN albuns al ON a.artista_id = al.artista_id
LEFT JOIN seguindo_artistas sa ON a.artista_id = sa.artista_id
GROUP BY a.artista_id, al.album_id
ORDER BY pessoas_seguidoras DESC, artista, album;
