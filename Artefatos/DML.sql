insert into pessoa values
('Heloísa',       'Fernanda',      'F', 'Eusebio de Queiros',     'Madalena', 'Pernambuco', 'Recife', '123', 'aluno'),
('Flávio',        'Henrique',      'M', 'Joao Eulino da Silva',   'Boa Viagem', 'Pernambuco', 'Recife', '321', 'aluno'),
('Pedro',         'Benedito',      'M', 'Manoel Oliveira',        'Setubal', 'Pernambuco', 'Recife', '123456', 'aluno'),
('João',          'Gabriel',       'M', 'Barão de São Borja',     'Casa Amarela', 'Pernambuco', 'Recife', '758439', 'aluno'),
('Lucas',         'Rodolfo',       'M', 'Monsenhor Florentino',   'Santo Amaro I', 'Pernmabuco', 'Bezerros', '987654321', 'professor'),
('Franciso',      'Madeiro',       'M', 'Dois Corações',          'Boa Viagem', 'Pernambuco', 'Recife', '928475829', 'professor'),
('Sheldon',       'Cooper',        'M', 'Major Miguel',           'Rosarinho', 'Pernambuco', 'Recife', '766251592', 'professor'),
('Fernando',      'Henrique',      'M', 'Roda de Fogo',           'Boa Vista', 'Pernambuco', 'Recife', '92486', 'responsavel'),
('Flávio',        'Antonio',       'M', 'José Maria',             'Rosarinho', 'Pernmabuco', 'Recife', '3456789', 'responsavel'),
('Chateaubriand', 'Pereira Alves', 'M', 'Rua das Ninfas',         'Boa Vista', 'Pernambuco', 'Recife', '209876', 'responsavel'),
('João',          'Bosco',         'M', 'Caruaru', 'Boa Vista', 'Pernambuco', 'Recife', '8765432', 'responsavel'),
('Maria',         'Hosana',        'F', 'Policarpo Quaresma',     'Madelena', 'Pernambuco', 'Pesqueira', '75456789', 'funcionario'),
('Valentia',      'Henriqueta',    'M', 'Policarpo', 'Madalena', 'Pernambuco', 'Bezerros', '201048', 'funcionario'),
('Enzo',          'Arcoverde',     'M', 'Dois Carneiros', 'Boa Viagem', 'Pernambuco', 'Carpina', '30289402', 'funcionario'),
('Severo',        'Snape',         'M', 'Dois Carneiros', 'Boa Viagem', 'Pernambuco', 'Recife', '284832', 'estagiario'),
('Teresa',        'Bernarda',      'F', 'Dois Carneiros', 'Boa Viagem', 'Pernambuco', 'Recife', '0192934', 'estagiario'),
('Branca',        'de Neve',       'F', 'Soleidade', 'Boa Vista', 'Pernambuco', 'Recife', '87234', 'estagiario'),
('Alvus',         'Dumbledore',    'F', 'Soleidade', 'Boa Vista', 'Pernambuco', 'Recife', '754', 'coordenador_pedagogico'),
('Severo',        'Snape',         'F', 'Ricardo Salazar', 'Prado', 'Pernambuco', 'Recife', '753', 'coordenador_pedagogico'),
('John',          'Wick',          'F', 'Ricardo Salazar', 'Prado', 'Pernambuco', 'Recife', '755', 'coordenador_pedagogico');


insert into aluno values
('7', '39487', 'false', '2024-05-20', '1000', 'mensal', 'débito', '2024-04-30', '1'),
('1', '39488', 'true', '2024-07-30', '5400', 'semestral', 'crédito', '2024-04-30','3'),
('8', '39489', 'true', '2024-03-15', '9600', 'anual', 'dinheiro', '2024-04-30','2'),
('5', '39490', 'false', '2024-09-10', '1000', 'mensal', 'débito', '2024-04-29','4');

insert into professor values
('50', 'banco de dados', '123.456.789-10', '5'),
('50', 'matematica', '652.000.223-15', '6'),
('50', 'física', '018.183.198-07', '7');

insert into coordenador_pedagogico values
('000.109.122-99', '5000', 'infantil', '18'),
('201.738.330-98', '5500', 'ensino médio', '19'),
('501.678.480-24', '5500', 'fundamental','20');

insert into responsavel values
('029.391.193-10', 'joao@gmail.com', 'false', 'true', '000.109.122-99', '8'),
('129.591.750-50', 'pedro@gmail.com', 'true', 'true', '000.109.122-99', '9'),
('607.860.130-01', 'heloisa@gmail.com', 'true', 'false', '000.109.122-99', '10'),
('458.964.690-04', 'flavio@gmail.com', 'true', 'false', '000.109.122-99', '11');

insert into funcionario values
('133.157.930-93', 'bibliotecar', '3000', NULL, '12'),
('509.548.290-85', 'limpeza', '3000', NULL, '13'),
('121.999.890-70', 'TI', '3000', NULL, '14');

insert into estagiario values
('10', 'letras', 'UNICAP', '458.964.690-04', '15'),
('10', 'letras', 'UNICAP', '345.905.060-84', '16'),
('10', 'letras', 'UNICAP', '480.820.270-02', '17');

insert into projeto_de_extensao (online_ou_pres, nome_projeto, prazo_inscr, professor_cpf) values
('false', 'Aulas para crianças carentes', '2024-05-05', '123.456.789-10'),
('true', 'i dont know', '2024-05-05', '652.000.223-15'),
('true', 'seila', '2024-05-05', '018.183.198-07');

insert into participa_projeto values
('39487', '1'),
('39489', '2'),
('39490', '3');

insert into atividade_extracurricular (nome, custo, professor_cpf) values
('basket ball', '400', '123.456.789-10'),
('algebra', '100', '018.183.198-07'),
('química da natureza', '500', '652.000.223-15');

insert into preparatorio(custo) values
('250'),
('500'),
('750');

insert into participa_extracurrilar values
('39487', '1'),
('39489', '2'),
('39490', '2');

insert into horarios_extracurricular values
('14:00:00', '1T', '1'),
('15:00:00', '2T', '2'),
('16:00:00', '3T','3');

insert into depende values
('39487', '029.391.193-10'),
('39488', '129.591.750-50'),
('39489', '607.860.130-01'),
('39490', '458.964.690-04');

insert into turma values
('A', '40', 'manhã'),
('B', '40', 'tarde'),
('C', '40', 'tarde');

insert into sala values
('45', '101', 'padrão'),
('50', '102', 'padrão'),
('45', '103', 'padrão'),
('100', 'A1', 'auditório');

insert into evento (nome_sala, palestrante, custo_realizacao, valor_ingresso, lucro, quant_ingressos_vendidos, quant_pessoas_compareceram, data_evento) values
('A1', 'leo lins', '200', '15', '100', '20', '20', '2024-04-05'),
('A1', 'Danilo Gentili', '250', '25', '300', '22', '20', '2024-01-10'),
('A1', 'David Cunha', '150', '15', '180', '12', '12', '2024-02-15');

insert into ocupa_turma values
('101', 'A'),
('102', 'B'),
('103', 'C');

insert into faz_parte values
('A', '39487', '45', '30'),
('B', '39488', '45', '30'),
('B', '39490', '45', '30'),
('C', '39489', '45', '30');

insert into disciplina values
('matemática', '5'),
('português', '7'),
('física', '8');

insert into leciona_disciplina_turma values
('123.456.789-10', 'matemática', 'A'),
('018.183.198-07', 'física', 'B'),
('652.000.223-15', 'português', 'C');

insert into leciona_preparatorio values
('1', '123.456.789-10'),
('2', '652.000.223-15'),
('3', '123.456.789-10');

insert into horarios_projeto values
('14:00:00', '1T', '1'),
('15:00:00', '2T', '2'),
('16:00:00', '3T', '3');

insert into horarios_preparatorio values
('18:30:00','2', '1T'),
('20:30:00','1', '3T'),
('22:00:00','3', '2T');

insert into aula_de_reforco (assunto, custo) VALUES
('fisica', '200'),
('matematica', '210'),
('português', '180');

insert into participa_reforco values
('39487', '1'),
('39489', '2'),
('39490', '2');

insert into participa_preparatorio values
('1', '39488'),
('3', '39487'),
('3', '39490');

insert into horarios_reforco VALUES
('14:00:00', '1T', '1'),
('14:00:00', '2T', '2'),
('14:00:00', '3T', '3');

insert into ocupa_reforco VALUES
('101', '1'),
('101', '2'),
('101', '3');

insert into ensina_aula_de_reforco values
('1', 'física', '458.964.690-04'),
('2', 'matemática', '345.905.060-84'),
('3', 'português', '480.820.270-02');

-- Heloísa

insert into andar values
('1', '4', '10', '6', '5'),
('2', '0', '20', '10', '8'),
('4', '15', '5', '5', '3');

insert into secretaria (contato, andar_numero) values
('81 94889-3583', '4'),
('81 94285-3524', '2'),
('81 98294-3554', '1');

insert into editora values
('Zahar', '81 94857-5939', 'zahar@gmail.com'),
('Educa', '81 99284-8439', 'educa@gmail.com'),
('Imagina', '81 92684-6427', 'imagina@gmail.com');

insert into livros (raridade, isbn, titulo, data_publicacao, editora, quantidade, secao) values
('false', '978-8537812808', 'As memórias de Sherlock Holmes', '2014-08-14', 'Zahar', '20', '3'),
('true', '978-8548935838', 'Alienigenas', '1744-01-01', 'Educa', '1', '1'),
('false', '978-8548935348', 'Star Wars HQ', '1999-03-21', 'Imagina', '30', '2');

insert into esta_em values
('2', '1'),
('1', '2'),
('4', '3');

insert into registra values
('2', '1'),
('1', '3'),
('3', '2');

insert into parceria values
('1', 'Zahar'),
('2', 'Educa'),
('3', 'Imagina');

insert into publica values
('Zahar', '1'),
('Educa', '2'),
('Imagina', '3');

-- Pedro

-- entidades: possui_material, material_adicional, escreveu, autor ,direitos , emprestimo
insert into material_adicional (tipo, quantidade) values 
('Site', '1'),
('Ebook', '1'),
('Cd', '3');

insert into autor values
('João', 'Monkey', '2024-04-25', '2000-01-01'), 
('Flavio', 'Monkey', '2023-03-29', '2008-07-11'),
('Pepeu', 'Monkey', '2020-06-18', '1999-05-25');

insert into escreveu values
('2','3'),
('1','2'),
('3','1');

insert into possui_material values
('2','3'),
('1','2'),
('3','1');

insert into direitos values
('1', 'Zahar'),
('2', 'Educa'),
('3', 'Imagina');

insert into emprestimo values
('3','15', '5', '4','2024-06-05', '2024-06-15', '5'),
('3','15', '5', '4','2024-02-05', '2024-02-15', '5'),
('3','15', '5', '4','2024-03-05', '2024-03-15', '5'),
('2','15', '5', '4','2024-01-09', '2024-01-19', '20'),
('1','15', '5', '4','2024-04-01', '2024-04-11', '8');

insert into  comprar values
('2', '2024-03-04', '50', 'dinheiro', '4'),
('3', '2024-02-04', '70', 'pix', '3'),
('1', '2023-01-02', '30', 'dinheiro', '1');
