1- Quantas vezes Natalie Portman foi indicada ao Oscar?

R:select * from movies where name = "Natalie Portman"; a Natalie Portman foi indicada 3 vezes ao Oscar.

2- Quantos Oscars Natalie Portman ganhou?

R: select * from movies where winner = "Natalie Portman"; a Natalie Portman ganhou 0 Oscar em sua carreira.

3- Amy Adams já ganhou algum Oscar?

R:select * from movies where name = "Amy Adams"; e select * from movies where name = "Amy Adams" and winner = 1; Amy Adams não ganhou nenhum Oscar em sua carreira.

4- A série de filmes Toy Story ganhou um Oscar em quais anos?

R:select * from movies where film = "Toy Story"and category and winner = 1; A série de films Toy Story nao ganhou nenhum Oscar.

5- Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?

R: select * FROM movies;

   select category, count(*) as total
   from movies 
   where category in ("ACTOR", "CINEMATOGRAPHY") AND winner = 1 
   group by category
   order by total desc limit 1;   e a categoria que tem mais Oscars e a de melhor filme.

6- O primeiro Oscar para melhor Atriz foi para quem? Em que ano?

R: use oscar_database;
   
   select year_ceremony,category, winner ,name from movies
   where category = "ACTRESS" and year_ceremony and winner = "true"
   group by year_ceremony
   order by year_ceremony; Janet Gaynor foi a primeira ganhafora de melhor atriz em 1928.

7- Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.

R: update movies set winner = 1   where winner = "True";                    
   
   update movies set winner = 0   where winner = "false";

8- Em qual edição do Oscar "Crash" ganhou o prêmio principal?
  
R: select film, year_ceremony, category, winner from movies
where film = "Crash" and year_ceremony and winner = 1. Ele ganhou o premio de melhor filme em 2006

9- Bom... dê um Oscar para um filme que merece muito, mas não ganhou.

R: insert into movies (film, winner,year_film)
values ( "Toy Story 4", 1, 2025) 


10- O filme Central do Brasil aparece no Oscar?

R:select * from movies
where film like "%Central%"; Ele aparece em duas categotias de melhor atriz e melhor filme estrangeiro

11- Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem. 

R:insert into movies (film, year_film)
values ( "Alto da compadre cida", 2000) 

insert into movies (film, year_film)
values ("O homem que enganou o diabo", 2007)

insert into movies (film, year_film)
values ("Os farofeiros", 2019)

12- Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.

R: alter table movies add melhores_comedia varchar(190)

13- Qual foi o primeiro ano a ter um prêmio do Oscar?
  
R:select year_ceremony from movies
where year_ceremony
order by year_ceremony; o primeiro ano do oscar 1928 

14 - Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?

R:select year_ceremony, category,film , name, winner from movies
where year_ceremony = "1998" and winner = 1
order by category; melhor filme foi o titanic, melhor diretor James Cameron,melhor atriz Helen Hunt.


15- Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.

R:para inserir esses dados
insert into movies(name, category, year_ceremony)
       values('Satomi Ishihara', 'BEST ACTRESS', '2022/10/04'),
	   ('Aoi Miyazaki', 'BEST ACTRESS', '2022/10/04'),
           ('Keiko Kitagawa', 'BEST ACTRESS', '2022/10/04'),
           ('Ayase Haruka', 'BEST ACTRESS', '2022/10/04'),
	   ('Haruka Fukuhara', 'BEST ACTRESS', '2022/10/04'),
           ('Yui Aragaki', 'BEST ACTRESS', '2022/10/04'),
	   ('Kasumi Arimura', 'BEST ACTRESS', '2022/10/04');

16- Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece?     

R:para inserir o valor dessa pergunta e usado o comando
insert into movies (name, category, winner, year_ceremony)
    values('Rosimeire Xavier de Lima Santos','Melhor Mãe', 1, '1998/11/04');