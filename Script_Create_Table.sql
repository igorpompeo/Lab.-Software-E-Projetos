/* 
-------------------------------------------------------------------
|| Versão do Script: v1.01                                       ||
|| Criador: Igor Pompeo                                          || 
|| Objetivo: Script de criação de tabelas                        || 
-------------------------------------------------------------------
*/

CREATE TABLE Alunos (
    RA INT NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Unidade VARCHAR(100) NOT NULL,
    Semestre INT NOT NULL,
    Turma VARCHAR(10) NOT NULL
)
GO

CREATE TABLE ProvaTesteProgresso (
    RA INT NOT NULL,
    Gabarito VARCHAR(1) NOT NULL,
    AcertosConhecEspecificos INT,
    PercenConhecEspecificos VARCHAR(4),
    AcertosFundaGerais INT,
    PercenFundaGerais VARCHAR(4),
    NotasTeste FLOAT,
    PercenTotal VARCHAR(4),
    ClassGeral INT,
    ClassUnidade INT
)
GO

CREATE TABLE Docentes (
    RA INT NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Unidade VARCHAR(100) NOT NULL,
    CodMateria VARCHAR(15) NOT NULL,
    CodCurso VARCHAR(15) NOT NULL,
    Turma VARCHAR(10) NOT NULL
)
GO


CREATE TABLE Cursos (
    CodCurso VARCHAR(15) NOT NULL,
    CodMateria VARCHAR(15)
)
GO

CREATE TABLE Materias (
    CodMateria VARCHAR(15) NOT NULL,
    NomeMateria VARCHAR(40),
    NotaN1 FLOAT,
    NotaN2 FLOAT,
    NotaTesteProgresso FLOAT
)
GO
