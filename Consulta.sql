-- 1 - Buscar nome e ano dos filmes
SELECT nome, ano FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT nome, ano FROM Filmes ORDER BY ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo nome, ano e a duração
SELECT nome, ano, duracao FROM filmes WHERE nome = 'De Volta para o Futuro';

-- 4 - Buscar os filmes lançados em 1997
SELECT * FROM Filmes WHERE ano = '1997';

-- 5 - Buscar os filmes lançados após o ano 2000
SELECT * FROM Filmes WHERE ano > '2000';

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM Filmes WHERE duracao > '100' AND duracao < '150' ORDER BY duracao ASC;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY ano ORDER BY Quantidade DESC;

-- 8 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero
SELECT F.nome, G.genero FROM FilmesGenero AS FG
INNER JOIN Filmes AS F ON
F.Id = FG.IdFilme
INNER JOIN Generos AS G ON
G.Id = FG.IdGenero;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.nome, G.genero FROM FilmesGenero AS FG
INNER JOIN Filmes AS F ON
F.Id = FG.IdFilme
INNER JOIN Generos AS G ON
G.Id = FG.IdGenero 
WHERE G.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM ElencoFilme AS EF
INNER JOIN Atores AS A ON
A.Id = EF.IdAtor
INNER JOIN Filmes AS F ON
EF.IdFilme = F.Id;



