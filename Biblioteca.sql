create database biblioteca

use biblioteca

create table livros(
	id int primary key identity (1,1),
	nome varchar(255),
	gênero varchar(255),

)

create table autores(
	id int primary key identity (1,1),
	nome varchar(255),
	idade int,

)


create table livros_autores(
	id int primary key identity (1,1),
	idLivro int not null,
	idAutor int not null,
	constraint fk_livroAutor_livro foreign key (idLivro)
	references livros(id),
	constraint fk_livroAutor_autor foreign key (idAutor)
	references autores(id)

)

insert into livros
values('50 tons de cinza', 'romance')

insert into livros
values('cumplice de um resgate', 'drama')

insert into livros
values('bird box', 'terror')

insert into livros
values('melhor do que no filme', 'romance')

insert into livros
values('Biografia Pablo Vitar', 'Biografia')


insert into autores
values('Cesar & Menotti', 69)

insert into autores
values('Terezo', 24)

insert into autores
values('Pablo vitar', 35)

insert into autores
values('Rogério SkyLab', 42)


insert into livros_autores
values(6, 3)

insert into livros_autores
values(6, 4)

insert into livros_autores
values(2, 3)

insert into livros_autores
values(1, 1)

insert into livros_autores
values(2, 4)

insert into livros_autores
values(4, 2)

insert into livros_autores
values(2, 1)

insert into livros_autores
values(5, 3)

insert into livros_autores
values(3, 3)

insert into livros_autores
values(6, 3)

select livros.nome, autores.nome, livros.gênero from livros_autores
inner join livros on livros.id = livros_autores.idLivro
inner join autores on autores.id = livros_autores.idAutor

select livros.nome, autores.nome, livros.gênero from livros_autores
inner join livros on livros.id = livros_autores.idLivro
inner join autores on autores.id = livros_autores.idAutor
where livros.id = 2

select livros.nome, autores.nome, livros.gênero from livros_autores
inner join livros on livros.id = livros_autores.idLivro
inner join autores on autores.id = livros_autores.idAutor
where autores.id = 3
