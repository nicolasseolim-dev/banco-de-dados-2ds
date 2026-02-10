PRAGMA foreign_keys = ON;

CREATE TABLE aluno (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

CREATE TABLE professor (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

CREATE TABLE curso (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

CREATE TABLE disciplina (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    curso_id INTEGER,
    FOREIGN KEY (curso_id) REFERENCES curso(id)
);

CREATE TABLE turma (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    disciplina_id INTEGER,
    professor_id INTEGER,
    FOREIGN KEY (disciplina_id) REFERENCES disciplina(id),
    FOREIGN KEY (professor_id) REFERENCES professor(id)
);

CREATE TABLE matricula (
    aluno_id INTEGER,
    turma_id INTEGER,
    PRIMARY KEY (aluno_id, turma_id),
    FOREIGN KEY (aluno_id) REFERENCES aluno(id),
    FOREIGN KEY (turma_id) REFERENCES turma(id)
);
