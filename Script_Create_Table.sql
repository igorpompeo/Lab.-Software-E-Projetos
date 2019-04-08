/* ------------------------------------------------------------------
   || Versão do Script: v1.0                                       ||
   || Criador: Igor Pompeo                                         || 
   || Objetivo: Script de criação de tabelas + inclusão de PK e FK || 
   ------------------------------------------------------------------
*/

CREATE TABLE Alunos (
    RA INT PRIMARY KEY NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Unidade VARCHAR(100) NOT NULL,
    Semestre INT NOT NULL,
    Turma VARCHAR(10) NOT NULL
);

CREATE TABLE ProvaTesteProgresso (
    RA INT PRIMARY KEY NOT NULL,
    Gabarito VARCHAR(1) NOT NULL,
    AcertosConhecEspecificos INT,
    PercenConhecEspecificos VARCHAR(4),
    AcertosFundaGerais INT,
    PercenFundaGerais VARCHAR(4),
    NotasTeste FLOAT,
    PercenTotal VARCHAR(4),
    ClassGeral INT,
    ClassUnidade INT,
    CONSTRAINT FK_RA FOREIGN KEY (RA) REFERENCES Alunos (RA)
);

CREATE TABLE Docentes (
    RA INT NOT NULL PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Unidade VARCHAR(100) NOT NULL,
    CodMateria VARCHAR(15) NOT NULL,
    CodCurso VARCHAR(15) NOT NULL,
    Turma VARCHAR(10) NOT NULL
    CONSTRAINT FK_CodMateria FOREIGN KEY (CodMateria) REFERENCES Materias (CodMateria),
    CONSTRAINT FK_CodCurso FOREIGN KEY (CodCurso) REFERENCES Cursos (CodCurso)
);

CREATE TABLE Cursos (
    CodCurso INT PRIMARY KEY NOT NULL,
    CodMateria VARCHAR(15),
    CONSTRAINT FK_CodMateria FOREIGN KEY (CodMateria) REFERENCES Materias (CodMateria)
);

CREATE TABLE Materias (
    CodMateria VARCHAR(15) PRIMARY KEY NOT NULL,
    NomeMateria VARCHAR(40),
    NotaN1 FLOAT,
    NotaN2 FLOAT,
    NotaTesteProgresso FLOAT
);