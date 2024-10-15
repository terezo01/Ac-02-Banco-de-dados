create database escola

use escola

create table alunos(
	id int primary key identity(1,1),
	nome varchar(255),
	idade int,
	serie int,
	fundMed varchar(255)
)

create table cursos(
	id int primary key identity(1,1),
	curso varchar(255),
	duração varchar(255),
)

create table aluno_curso(
	idMatricula int primary key identity(1,1),
	idAluno int not null,
	idCurso int not null,
	constraint fk_alunoCurso_aluno foreign key (idAluno)
	references alunos(id),
	constraint fk_alunoCurso_curso foreign key (idCurso)
	references cursos(id)

)

insert into alunos 
values('Théo Tonin', 16, 1, 'médio')

insert into alunos 
values('Mathias Melado', 17, 1, 'médio')

insert into alunos 
values('Isaac Guei', 16, 1, 'médio')

insert into alunos 
values('Eloah Caralho', 16, 1, 'médio')

insert into cursos
values('Letras', '2 anos')

insert into cursos
values('Programação', '4 anos')

insert into cursos
values('Marketing Digital', '1 anos')

insert into cursos
values('ADM', '3 anos')

insert into aluno_curso
values(1, 1)

insert into aluno_curso
values(1, 3)

insert into aluno_curso
values(2, 1)

insert into aluno_curso
values(2, 2)

insert into aluno_curso
values(2, 3)

insert into aluno_curso
values(3, 1)

insert into aluno_curso
values(3, 4)

insert into aluno_curso
values(4, 1)

select * from aluno_curso

select alunos.nome, alunos.idade, cursos.curso from aluno_curso
inner join alunos on alunos.id = aluno_curso.idAluno
inner join cursos on cursos.id = aluno_curso.idCurso

select alunos.nome, alunos.idade, cursos.curso from aluno_curso
inner join alunos on alunos.id = aluno_curso.idAluno
inner join cursos on cursos.id = aluno_curso.idCurso
where cursos.id = 3

select alunos.nome, alunos.idade, cursos.curso from aluno_curso
inner join alunos on alunos.id = aluno_curso.idAluno
inner join cursos on cursos.id = aluno_curso.idCurso
where alunos.id = 4
