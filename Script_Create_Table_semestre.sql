create table Semestre (
	ID int not null auto_increment unique,
	Numero int not null,
	Cursando int(1) not null,
	Matriculado bool not null
);