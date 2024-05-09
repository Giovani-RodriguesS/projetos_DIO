SELECT * FROM Filmes
SELECT * FROM Generos
SELECT * FROM FilmesGenero
SELECT * FROM Atores
SELECT * FROM ElencoFilme

-- 1
SELECT nome, ano FROM Filmes

-- 2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT nome, ano FROM Filmes
ORDER BY ano

-- 3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT nome, ano, duracao FROM Filmes
WHERE nome = 'De Volta para o Futuro'

-- 4 Buscar os filmes lançados em 1997
SELECT nome, ano, duracao FROM Filmes
WHERE ano = 1997

-- 5 Buscar os filmes lançados APÓS o ano 2000
SELECT nome, ano, duracao FROM Filmes
WHERE ano > 2000

-- 6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT nome, ano, duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ano, COUNT(Nome) Quantidade FROM Filmes
GROUP BY ano
ORDER BY MAX(duracao) DESC 

-- 8 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M'

-- 9 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 Buscar o nome do filme e o gênero
SELECT nome, genero FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = IdFilme
INNER JOIN Generos ON Generos.Id = IdGenero

-- 11 Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT nome, genero FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = IdFilme
INNER JOIN Generos ON Generos.Id = IdGenero
WHERE Genero = 'Mistério'

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT nome Filme ,PrimeiroNome, UltimoNome, Papel FROM Atores
INNER JOIN ElencoFilme ON IdAtor = Atores.Id
INNER JOIN Filmes ON Filmes.Id = IdFilme 