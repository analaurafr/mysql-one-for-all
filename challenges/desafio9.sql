SELECT
  COUNT(hr.musica_id) AS musicas_no_historico
FROM
  historico_de_reproducoes hr
INNER JOIN pessoas_usuarias pu ON hr.pessoa_id = pu.pessoa_usuaria_id
WHERE pu.nome_pessoa_usuaria = 'Barbara Liskov';
