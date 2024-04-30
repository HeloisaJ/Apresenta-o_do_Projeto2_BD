/* L�gico_1: */

CREATE TABLE estagiario (
    valor_hora DECIMAL NOT NULL,
    formacao VARCHAR,
    nome_uni VARCHAR,
    cpf VARCHAR PRIMARY KEY,
    id_pessoa BIGINT NOT NULL 
);

CREATE TABLE pessoa (
    p_nome VARCHAR(500) NOT NULL,
    sobrenome VARCHAR(500) NOT NULL,
    genero CHAR NOT NULL,
    rua VARCHAR(500),
    bairro VARCHAR(500),
    estado VARCHAR(500),
    cidade VARCHAR(500),
    numero INTEGER,
    p_tipo VARCHAR(500) NOT NULL,
    id_pessoa BIGSERIAL PRIMARY KEY
);

CREATE TABLE professor (
    valor_hora DECIMAL NOT NULL,
    formacao VARCHAR,
    cpf VARCHAR PRIMARY KEY,
    id_pessoa BIGINT NOT NULL
);

CREATE TABLE aluno (
    serie INTEGER NOT NULL,
    num_matricula INTEGER PRIMARY KEY,
    matricula_paga BOOLEAN NOT NULL,
    prazo_matricula DATE NOT NULL,
    valor_pag_matricula DECIMAL NOT NULL,
    plano_pag VARCHAR NOT NULL,
    forma_pag VARCHAR NOT NULL,
    prazo_pag DATE NOT NULL,
    id_pessoa BIGINT NOT NULL
);

CREATE TABLE responsavel (
    cpf VARCHAR PRIMARY KEY,
    email VARCHAR,
    resp_financeiro BOOLEAN NOT NULL,
    resp_pedagogico BOOLEAN NOT NULL,
    coordenador_pedagogico_cpf VARCHAR,
    id_pessoa BIGINT NOT NULL
);

CREATE TABLE coordenador_pedagogico (
    cpf VARCHAR PRIMARY KEY,
    salario DECIMAL NOT NULL,
    segmento VARCHAR NOT NULL,
    id_pessoa BIGINT NOT NULL
);

CREATE TABLE funcionario (
    cpf VARCHAR PRIMARY KEY,
    funcao VARCHAR,
    salario DECIMAL,
    secretaria_id BIGINT,
    id_pessoa BIGINT NOT NULL
);

CREATE TABLE turma (
    nome VARCHAR PRIMARY KEY,
    quant_alunos INTEGER,
    turno VARCHAR
);

CREATE TABLE sala (
    tamanho INTEGER NOT NULL,
    nome VARCHAR PRIMARY KEY,
    tipo VARCHAR NOT NULL
);

CREATE TABLE evento(
    nome_sala VARCHAR NOT NULL,
    id_evento BIGSERIAL PRIMARY KEY,
    palestrante VARCHAR NOT NULL,
    custo_realizacao DECIMAL NOT NULL,
    valor_ingresso DECIMAL NOT NULL,
    lucro DECIMAL NOT NULL,
    quant_ingressos_vendidos INTEGER NOT NULL,
    quant_pessoas_compareceram INTEGER NOT NULL,
    data_evento DATE,
    FOREIGN KEY (nome_sala) REFERENCES sala (nome)
);

CREATE TABLE projeto_de_extensao (
    id_projeto BIGSERIAL PRIMARY KEY,
    online_ou_pres BOOLEAN NOT NULL,
    nome_projeto VARCHAR NOT NULL,
    prazo_inscr DATE,
    professor_cpf VARCHAR
);

CREATE TABLE atividade_extracurricular (
    id_atividade BIGSERIAL PRIMARY KEY,
    nome VARCHAR NOT NULL,
    custo DECIMAL NOT NULL,
    professor_cpf VARCHAR
);

CREATE TABLE preparatorio (
    id_preparatorio BIGSERIAL PRIMARY KEY,
    custo DECIMAL
);

CREATE TABLE aula_de_reforco (
    id_reforco BIGSERIAL PRIMARY KEY,
    assunto VARCHAR NOT NULL,
    custo DECIMAL NOT NULL
);

CREATE TABLE disciplina (
    nome_disc VARCHAR PRIMARY KEY,
    serie INTEGER
);

CREATE TABLE livros (
    id_livro BIGSERIAL PRIMARY KEY,
    raridade BOOLEAN,
    isbn VARCHAR NOT NULL,
    titulo VARCHAR NOT NULL,
    data_publicacao DATE,
    editora VARCHAR,
    quantidade INTEGER,
    secao VARCHAR
);

CREATE TABLE comprar(
    livros_id INTEGER NOT NULL,
    data_compra DATE NOT NULL,
    custo_livro DECIMAL NOT NULL,
    forma_pag VARCHAR NOT NULL,
    id_pessoa INTEGER NOT NULL,
    FOREIGN KEY (livros_id) REFERENCES livros (id_livro),
    FOREIGN KEY (id_pessoa) REFERENCES pessoa (id_pessoa)
);

CREATE TABLE autor (
    p_nome VARCHAR NOT NULL,
    sobrenome VARCHAR NOT NULL,
    data_morte DATE,
    data_nascimento DATE NOT NULL,
    id_autor BIGSERIAL PRIMARY KEY
);

CREATE TABLE editora (
    nome VARCHAR PRIMARY KEY,
    telefone VARCHAR,
    email VARCHAR
);

CREATE TABLE material_adicional (
    id_material BIGSERIAL PRIMARY KEY,
    tipo VARCHAR NOT NULL,
    quantidade INTEGER
);

CREATE TABLE secretaria (
    id_secretaria BIGSERIAL PRIMARY KEY,
    contato VARCHAR,
    andar_numero INTEGER NOT NULL
);

CREATE TABLE andar (
    numero INTEGER PRIMARY KEY,
    quant_computadores INTEGER,
    quant_estantes INTEGER,
    quant_gabinete INTEGER,
    quanto_secoes INTEGER
);

CREATE TABLE horarios_projeto (
    horarios TIME,
    id_horarios VARCHAR PRIMARY KEY,
    projeto_de_extensao_id INTEGER NOT NULL
);

CREATE TABLE horarios_extracurricular (
    horarios TIME,
    id_horarios VARCHAR PRIMARY KEY,
    atividade_extracurricular_id INTEGER NOT NULL
);

CREATE TABLE horarios_preparatorio(
    horarios TIME,
    preparatorio_id BIGINT NOT NULL,
    id_horarios VARCHAR PRIMARY KEY,
    FOREIGN KEY (preparatorio_id) REFERENCES preparatorio (id_preparatorio)
);

CREATE TABLE horarios_reforco (
    horarios TIME,
    id_horarios VARCHAR PRIMARY KEY,
    aula_reforco_id INTEGER NOT NULL 
);

CREATE TABLE depende (
    aluno_num_matricula INTEGER NOT NULL,
    responsavel_cpf VARCHAR NOT NULL
);

CREATE TABLE faz_parte (
    turma_nome VARCHAR NOT NULL,
    aluno_num_matricula INTEGER NOT NULL,
    limite_sup INTEGER,
    limite_inf INTEGER
);

CREATE TABLE participa_projeto (
    aluno_num_matricula INTEGER NOT NULL,
    projeto_de_extensao_id BIGINT NOT NULL
);

CREATE TABLE participa_extracurrilar (
    aluno_num_matricula INTEGER NOT NULL,
    atividade_extracurricular_id BIGINT NOT NULL
);

CREATE TABLE participa_preparatorio (
    preparatorio_id BIGINT,
    aluno_num_matricula INTEGER,
    FOREIGN KEY (preparatorio_id) REFERENCES preparatorio (id_preparatorio),
    FOREIGN KEY (aluno_num_matricula) REFERENCES aluno (num_matricula)
);

CREATE TABLE participa_reforco (
    aluno_num_matricula INTEGER NOT NULL,
    aula_de_reforco BIGINT NOT NULL
);

CREATE TABLE ocupa_turma (
    sala_nome VARCHAR NOT NULL,
    turma_nome VARCHAR NOT NULL
);

CREATE TABLE ensina_aula_de_reforco (
    aula_reforco_id BIGINT NOT NULL,
    disciplina_nome_disc VARCHAR NOT NULL,
    estagiario_cpf VARCHAR NOT NULL
);

CREATE TABLE leciona_disciplina_turma (
    professor_cpf VARCHAR NOT NULL,
    disciplina_nome_disc VARCHAR NOT NULL,
    turma_nome VARCHAR NOT NULL
);

CREATE TABLE leciona_preparatorio(
    preparatorio_id BIGINT NOT NULL,
    professor_cpf VARCHAR NOT NULL,
    FOREIGN KEY (preparatorio_id) REFERENCES preparatorio (id_preparatorio),
    FOREIGN KEY (professor_cpf) REFERENCES professor (cpf)
);

CREATE TABLE ocupa_reforco (
    sala_nome VARCHAR NOT NULL,
    aula_reforco_id BIGINT NOT NULL
);

CREATE TABLE ligado (
    disciplina_nome_disc VARCHAR NOT NULL,
    nota DECIMAL NOT NULL,
    aluno_num_matricula INTEGER NOT NULL
);

CREATE TABLE emprestimo (
    livros_id BIGINT NOT NULL,
    valor_multa DECIMAL NOT NULL,
    taxa_multa DECIMAL NOT NULL,
    limite INTEGER,
    prazo_data_inicial DATE NOT NULL,
    prazo_data_final DATE,
    id_pessoa BIGINT NOT NULL
);

CREATE TABLE escreveu (
    livros_id BIGINT NOT NULL,
    autor_id BIGINT NOT NULL
);

CREATE TABLE direitos (
    autor_id BIGINT NOT NULL,
    editora_nome VARCHAR NOT NULL
);

CREATE TABLE publica (
    editora_nome VARCHAR NOT NULL,
    livros_id BIGINT NOT NULL
);

CREATE TABLE possui_material (
    livros_id BIGINT NOT NULL,
    material_adicional_id BIGINT NOT NULL
);

CREATE TABLE parceria (
    secretaria_id BIGINT NOT NULL,
    editora_nome VARCHAR NOT NULL
);

CREATE TABLE registra (
    secretaria_id BIGINT NOT NULL,
    livros_id BIGINT NOT NULL
);

CREATE TABLE esta_em (
    andar_numero INTEGER,
    livros_id BIGINT NOT NULL
);
 
ALTER TABLE estagiario ADD CONSTRAINT FK_estagiario_2
    FOREIGN KEY (id_pessoa)
    REFERENCES pessoa (id_pessoa);
 
ALTER TABLE professor ADD CONSTRAINT FK_professor_2
    FOREIGN KEY (id_pessoa)
    REFERENCES pessoa (id_pessoa);
 
ALTER TABLE aluno ADD CONSTRAINT FK_aluno_2
    FOREIGN KEY (id_pessoa)
    REFERENCES pessoa (id_pessoa);
 
ALTER TABLE responsavel ADD CONSTRAINT FK_responsavel_2
    FOREIGN KEY (coordenador_pedagogico_cpf)
    REFERENCES coordenador_pedagogico (cpf)
    ON DELETE RESTRICT;
 
ALTER TABLE responsavel ADD CONSTRAINT FK_responsavel_3
    FOREIGN KEY (id_pessoa)
    REFERENCES pessoa (id_pessoa);
 
ALTER TABLE coordenador_pedagogico ADD CONSTRAINT FK_coordenador_pedagogico_2
    FOREIGN KEY (id_pessoa)
    REFERENCES pessoa (id_pessoa);
 
ALTER TABLE funcionario ADD CONSTRAINT FK_funcionario_2
    FOREIGN KEY (secretaria_id)
    REFERENCES secretaria (id_secretaria);
 
ALTER TABLE funcionario ADD CONSTRAINT FK_funcionario_3
    FOREIGN KEY (id_pessoa)
    REFERENCES pessoa (id_pessoa);
 
ALTER TABLE projeto_de_extensao ADD CONSTRAINT FK_projeto_de_extensao_2
    FOREIGN KEY (professor_cpf)
    REFERENCES professor (cpf)
    ON DELETE CASCADE;
 
ALTER TABLE atividade_extracurricular ADD CONSTRAINT FK_atividade_extracurricular_2
    FOREIGN KEY (professor_cpf)
    REFERENCES professor (cpf)
    ON DELETE RESTRICT;
 
ALTER TABLE secretaria ADD CONSTRAINT FK_secretaria_2
    FOREIGN KEY (andar_numero)
    REFERENCES andar (numero)
    ON DELETE RESTRICT;
 
ALTER TABLE horarios_projeto ADD CONSTRAINT FK_horarios_projeto_2
    FOREIGN KEY (projeto_de_extensao_id)
    REFERENCES projeto_de_extensao (id_projeto);
 
ALTER TABLE horarios_extracurricular ADD CONSTRAINT FK_horarios_extracurricular_2
    FOREIGN KEY (atividade_extracurricular_id)
    REFERENCES atividade_extracurricular (id_atividade);
 
ALTER TABLE horarios_reforco ADD CONSTRAINT FK_horarios_reforco_2
    FOREIGN KEY (aula_reforco_id)
    REFERENCES aula_de_reforco (id_reforco);
 
ALTER TABLE depende ADD CONSTRAINT FK_depende_1
    FOREIGN KEY (aluno_num_matricula)
    REFERENCES aluno (num_matricula)
    ON DELETE RESTRICT;
 
ALTER TABLE depende ADD CONSTRAINT FK_depende_2
    FOREIGN KEY (responsavel_cpf)
    REFERENCES responsavel (cpf)
    ON DELETE RESTRICT;
 
ALTER TABLE faz_parte ADD CONSTRAINT FK_faz_parte_1
    FOREIGN KEY (turma_nome)
    REFERENCES turma (nome)
    ON DELETE RESTRICT;
 
ALTER TABLE faz_parte ADD CONSTRAINT FK_faz_parte_2
    FOREIGN KEY (aluno_num_matricula)
    REFERENCES aluno (num_matricula);
 
ALTER TABLE participa_projeto ADD CONSTRAINT FK_participa_projeto_1
    FOREIGN KEY (projeto_de_extensao_id)
    REFERENCES projeto_de_extensao (id_projeto)
    ON DELETE SET NULL;
 
ALTER TABLE participa_projeto ADD CONSTRAINT FK_participa_projeto_2
    FOREIGN KEY (aluno_num_matricula)
    REFERENCES aluno (num_matricula);
 
ALTER TABLE participa_extracurrilar ADD CONSTRAINT FK_participa_extracurrilar_1
    FOREIGN KEY (atividade_extracurricular_id)
    REFERENCES atividade_extracurricular (id_atividade)
    ON DELETE SET NULL;
 
ALTER TABLE participa_extracurrilar ADD CONSTRAINT FK_participa_extracurrilar_2
    FOREIGN KEY (aluno_num_matricula)
    REFERENCES aluno (num_matricula);
 
ALTER TABLE participa_reforco ADD CONSTRAINT FK_participa_reforco_1
    FOREIGN KEY (aula_de_reforco)
    REFERENCES aula_de_reforco (id_reforco)
    ON DELETE SET NULL;
 
ALTER TABLE participa_reforco ADD CONSTRAINT FK_participa_reforco_2
    FOREIGN KEY (aluno_num_matricula)
    REFERENCES aluno (num_matricula);
 
ALTER TABLE ocupa_turma ADD CONSTRAINT FK_ocupa_turma_1
    FOREIGN KEY (sala_nome)
    REFERENCES sala (nome)
    ON DELETE RESTRICT;
 
ALTER TABLE ocupa_turma ADD CONSTRAINT FK_ocupa_turma_2
    FOREIGN KEY (turma_nome)
    REFERENCES turma (nome)
    ON DELETE SET NULL;
 
ALTER TABLE ensina_aula_de_reforco ADD CONSTRAINT FK_ensina_aula_de_reforco_1
    FOREIGN KEY (aula_reforco_id)
    REFERENCES aula_de_reforco (id_reforco)
    ON DELETE NO ACTION;
 
ALTER TABLE ensina_aula_de_reforco ADD CONSTRAINT FK_ensina_aula_de_reforco_2
    FOREIGN KEY (disciplina_nome_disc)
    REFERENCES disciplina (nome_disc)
    ON DELETE RESTRICT;
 
ALTER TABLE ensina_aula_de_reforco ADD CONSTRAINT FK_ensina_aula_de_reforco_3
    FOREIGN KEY (estagiario_cpf)
    REFERENCES estagiario (cpf)
    ON DELETE NO ACTION;
 
ALTER TABLE leciona_disciplina_turma ADD CONSTRAINT FK_leciona_disciplina_turma_1
    FOREIGN KEY (professor_cpf)
    REFERENCES professor (cpf)
    ON DELETE NO ACTION;
 
ALTER TABLE leciona_disciplina_turma ADD CONSTRAINT FK_leciona_disciplina_turma_2
    FOREIGN KEY (disciplina_nome_disc)
    REFERENCES disciplina (nome_disc)
    ON DELETE NO ACTION;
 
ALTER TABLE leciona_disciplina_turma ADD CONSTRAINT FK_leciona_disciplina_turma_3
    FOREIGN KEY (turma_nome)
    REFERENCES turma (nome)
    ON DELETE NO ACTION;
 
ALTER TABLE ocupa_reforco ADD CONSTRAINT FK_ocupa_reforco_1
    FOREIGN KEY (sala_nome)
    REFERENCES sala (nome)
    ON DELETE RESTRICT;
 
ALTER TABLE ocupa_reforco ADD CONSTRAINT FK_ocupa_reforco_2
    FOREIGN KEY (aula_reforco_id)
    REFERENCES aula_de_reforco (id_reforco)
    ON DELETE SET NULL;
 
ALTER TABLE ligado ADD CONSTRAINT FK_ligado_1
    FOREIGN KEY (disciplina_nome_disc)
    REFERENCES disciplina (nome_disc)
    ON DELETE RESTRICT;
 
ALTER TABLE ligado ADD CONSTRAINT FK_ligado_2
    FOREIGN KEY (aluno_num_matricula)
    REFERENCES aluno (num_matricula);
 
ALTER TABLE emprestimo ADD CONSTRAINT FK_emprestimo_1
    FOREIGN KEY (livros_id)
    REFERENCES livros (id_livro)
    ON DELETE SET NULL;
 
ALTER TABLE emprestimo ADD CONSTRAINT FK_emprestimo_2
    FOREIGN KEY (id_pessoa)
    REFERENCES pessoa (id_pessoa);
 
ALTER TABLE escreveu ADD CONSTRAINT FK_escreveu_1
    FOREIGN KEY (livros_id)
    REFERENCES livros (id_livro)
    ON DELETE RESTRICT;
 
ALTER TABLE escreveu ADD CONSTRAINT FK_escreveu_2
    FOREIGN KEY (autor_id)
    REFERENCES autor (id_autor)
    ON DELETE RESTRICT;
 
ALTER TABLE direitos ADD CONSTRAINT FK_direitos_1
    FOREIGN KEY (autor_id)
    REFERENCES autor (id_autor)
    ON DELETE RESTRICT;
 
ALTER TABLE direitos ADD CONSTRAINT FK_direitos_2
    FOREIGN KEY (editora_nome)
    REFERENCES editora (nome)
    ON DELETE SET NULL;
 
ALTER TABLE publica ADD CONSTRAINT FK_publica_1
    FOREIGN KEY (editora_nome)
    REFERENCES editora (nome)
    ON DELETE RESTRICT;
 
ALTER TABLE publica ADD CONSTRAINT FK_publica_2
    FOREIGN KEY (livros_id)
    REFERENCES livros (id_livro)
    ON DELETE SET NULL;
 
ALTER TABLE possui_material ADD CONSTRAINT FK_possui_material_1
    FOREIGN KEY (livros_id)
    REFERENCES livros (id_livro)
    ON DELETE SET NULL;
 
ALTER TABLE possui_material ADD CONSTRAINT FK_possui_material_2
    FOREIGN KEY (material_adicional_id)
    REFERENCES material_adicional (id_material)
    ON DELETE SET NULL;
 
ALTER TABLE parceria ADD CONSTRAINT FK_parceria_1
    FOREIGN KEY (secretaria_id)
    REFERENCES secretaria (id_secretaria)
    ON DELETE RESTRICT;
 
ALTER TABLE parceria ADD CONSTRAINT FK_parceria_2
    FOREIGN KEY (editora_nome)
    REFERENCES editora (nome)
    ON DELETE SET NULL;
 
ALTER TABLE registra ADD CONSTRAINT FK_registra_1
    FOREIGN KEY (secretaria_id)
    REFERENCES secretaria (id_secretaria)
    ON DELETE RESTRICT;
 
ALTER TABLE registra ADD CONSTRAINT FK_registra_2
    FOREIGN KEY (livros_id)
    REFERENCES livros (id_livro)
    ON DELETE SET NULL;
 
ALTER TABLE esta_em ADD CONSTRAINT FK_esta_em_1
    FOREIGN KEY (andar_numero)
    REFERENCES andar (numero)
    ON DELETE RESTRICT;
 
ALTER TABLE esta_em ADD CONSTRAINT FK_esta_em_2
    FOREIGN KEY (livros_id)
    REFERENCES livros (id_livro)
    ON DELETE SET NULL;