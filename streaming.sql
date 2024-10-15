create database streaming

use streaming

create table musica(
	id int primary key identity (1,1),
	nome varchar(255),
	gênero varchar(255),

)

create table artista(
	id int primary key identity (1,1),
	nome varchar(255),
	idade int,

)


create table musicas_artistas(
	id int primary key identity (1,1),
	idMusica int not null,
	idArtista int not null,
	constraint fk_musicaArtista_musica foreign key (idMusica)
	references musica(id),
	constraint fk_musicaArtista_artista foreign key (idArtista)
	references artista(id)
)

insert into musica
values('The box medley funk 2','Funk')

insert into musica
values('Não é só o nome','Funk')

insert into musica
values('O mundo é meu','Plug')


insert into artista
values('Mc brinquedo', 20)

insert into artista
values('Mc Cebezinho', 20)

insert into artista
values('Mc Laranjinha', 20)

insert into artista
values('Mc Oreia', 20)

insert into artista
values('Mc Tuto', 20)

insert into artista
values('Brocasito', 24)


insert into musicas_artistas
values(1,1)

insert into musicas_artistas
values(1,2)

insert into musicas_artistas
values(1,3)

insert into musicas_artistas
values(1,4)

insert into musicas_artistas
values(1,5)

insert into musicas_artistas
values(2,1)

insert into musicas_artistas
values(2,6)

insert into musicas_artistas
values(3,6)

select musica.nome, artista.nome ,musica.gênero from musicas_artistas
inner join musica on musica.id = musicas_artistas.idMusica
inner join artista on artista.id = musicas_artistas.idArtista

select musica.nome, artista.nome ,musica.gênero from musicas_artistas
inner join musica on musica.id = musicas_artistas.idMusica
inner join artista on artista.id = musicas_artistas.idArtista
where musica.id = 1

select musica.nome, artista.nome ,musica.gênero from musicas_artistas
inner join musica on musica.id = musicas_artistas.idMusica
inner join artista on artista.id = musicas_artistas.idArtista
where artista.id = 6
