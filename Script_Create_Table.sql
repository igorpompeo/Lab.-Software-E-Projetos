create table Alunos(
	ID int not null auto_increment unique,
	RA int not null,
	Nome varchar(50) not null,
	Unidade varchar(50) not null,
	Semestre int not null,
	Turma varchar(50) not null
);

create table Professores (
	RP int not null,
	Nome varchar(50) not null,
	Unidade varchar(50) not null,
	CodCurso varchar(50) not null,
	CodMateria varchar(50) not null
);

create table Cursos (
	CodCurso varchar(50) not null,
	CodMateria varchar(50) not null
);

create table Materias (
	CodMateria varchar(50) not null,
	NomeMateria varchar(50) not null,
	NotaN1 float not null,
	NotaN2 float not null,
	NotaTestProgresso float not null
);

create table Prova (
	RA	int not null,
	Gabarito char not null,	
	AcertosConhecEspecificos int not null,
	PercenConhecEspecificos	float(3,2) not null,
	AcertosfundaGerais int not null,
	PercenFundaGerais	float(3,2) not null,
	NotasTeste	float(2,2) not null,
	PercenTotal	float(3,2) not null,
	ClassGeral	int not null,
	ClassUnidade int not null
);