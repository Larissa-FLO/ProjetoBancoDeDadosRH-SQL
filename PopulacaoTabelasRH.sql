
-- Inserindo dados na tabela Setores
insert into setores (nomeSetor) values ('Setor de Vendas');
insert into setores (nomeSetor) values ('Setor de Marketing');
insert into setores (nomeSetor) values ('Setor de RH');
insert into setores (nomeSetor) values ('Setor Financeiro');
insert into setores (nomeSetor) values ('Setor de TI');

-- Inserindo dados na tabela Gerentes
insert into gerentes (nomeGerente, codSetor, cpf, cep, telContato, contatoEmergencia, email, dataAdmissao, modalidade, salario, valorExtra, horasTrabalhadas, horasExtras, salarioTotal)
values ('João da Silva', 1, 123456789, 12345678, 123456789, 987654321, 'joao.silva@email.com', '2023-01-01', 'Presencial', 5000.00, 0.00, 160, NULL, 5000.00);

insert into gerentes (nomeGerente, codSetor, cpf, cep, telContato, contatoEmergencia, email, dataAdmissao, modalidade, salario, valorExtra, horasTrabalhadas, horasExtras, salarioTotal)
values ('Maria Santos', 2, 987654321, 98765432, 987654321, 123456789, 'maria.santos@email.com', '2023-01-01', 'Remoto', 5000.00, 0.00, 160, NULL, 5000.00);

insert into gerentes (nomeGerente, codSetor, cpf, cep, telContato, contatoEmergencia, email, dataAdmissao, modalidade, salario, valorExtra, horasTrabalhadas, horasExtras, salarioTotal)
values ('José Oliveira', 3, 456789123, 45678912, 456789123, 987654321, 'jose.oliveira@email.com', '2023-01-01', 'Remoto', 5000.00, 0.00, 160, NULL, 5000.00);

insert into gerentes (nomeGerente, codSetor, cpf, cep, telContato, contatoEmergencia, email, dataAdmissao, modalidade, salario, valorExtra, horasTrabalhadas, horasExtras, salarioTotal)
values ('Ana Pereira', 4, 789123456, 78912345, 789123456, 456789123, 'ana.pereira@email.com', '2023-01-01', 'Presencial', 5000.00, 0.00, 160, NULL, 5000.00);

insert into gerentes (nomeGerente, codSetor, cpf, cep, telContato, contatoEmergencia, email, dataAdmissao, modalidade, salario, valorExtra, horasTrabalhadas, horasExtras, salarioTotal)
values ('Carlos Souza', 5, 321654987, 32165498, 321654987, 789123456, 'carlos.souza@email.com', '2023-01-01', 'Presencial', 5000.00, 0.00, 160, NULL, 5000.00);

-- Inserindo dados na tabela Cargos
insert into cargos (nomeCargo, descricaoCargo, salarioBase, codGerente)
values ('Analista de Vendas', 'Responsável pela análise de vendas', 2500.00, 1);

insert into cargos (nomeCargo, descricaoCargo, salarioBase, codGerente)
values ('Analista de Marketing', 'Responsável pela análise de marketing', 2500.00, 2);

insert into cargos (nomeCargo, descricaoCargo, salarioBase, codGerente)
values ('Analista de RH', 'Responsável pela análise de RH', 2500.00, 3);

insert into cargos (nomeCargo, descricaoCargo, salarioBase, codGerente)
values ('Analista Financeiro', 'Responsável pela análise financeira', 2500.00, 4);

insert into cargos (nomeCargo, descricaoCargo, salarioBase, codGerente)
values ('Analista de TI', 'Responsável pela análise de TI', 2500.00, 5);

-- Inserindo dados na tabela Funcionarios
insert into funcionarios (nomeFuncionario, dataNasc, genero, cpf, cep, telContato, contatoEmergencia, email, dataAdmissao, codCargo, modalidade, salario, valorExtra, horasTrabalhadas, horasExtras, salarioTotal, ferias)
values ('Joana Silva', '1990-01-01', 'Feminino', 987654321, 98765432, 987654321, 123456789, 'joana.silva@email.com', '2023-01-01', 1, 'Presencial', 2000.00, 0.00, 160, NULL, 2000.00, 0);

insert into funcionarios (nomeFuncionario, dataNasc, genero, cpf, cep, telContato, contatoEmergencia, email, dataAdmissao, codCargo, modalidade, salario, valorExtra, horasTrabalhadas, horasExtras, salarioTotal, ferias)
values ('Marcos Santos', '1990-02-02', 'Masculino', 654987321, 65498732, 654987321, 123456789, 'marcos.santos@email.com', '2023-01-01', 2, 'Presencial', 2000.00, 0.00, 160, NULL, 2000.00, 0);

insert into funcionarios (nomeFuncionario, dataNasc, genero, cpf, cep, telContato, contatoEmergencia, email, dataAdmissao, codCargo, modalidade, salario, valorExtra, horasTrabalhadas, horasExtras, salarioTotal, ferias)
values ('Carolina Oliveira', '1990-03-03', 'Feminino', 456789123, 45678912, 456789123, 987654321, 'carolina.oliveira@email.com', '2023-01-01', 3, 'Remoto', 2000.00, 0.00, 160, NULL, 2000.00, 0);

insert into funcionarios (nomeFuncionario, dataNasc, genero, cpf, cep, telContato, contatoEmergencia, email, dataAdmissao, codCargo, modalidade, salario, valorExtra, horasTrabalhadas, horasExtras, salarioTotal, ferias)
values ('Rafael Pereira', '1990-04-04', 'Masculino', 123456789, 12345678, 123456789, 456789123, 'rafael.pereira@email.com', '2023-01-01', 4, 'Presencial', 2000.00, 0.00, 160, NULL, 2000.00, 0);

insert into funcionarios (nomeFuncionario, dataNasc, genero, cpf, cep, telContato, contatoEmergencia, email, dataAdmissao, codCargo, modalidade, salario, valorExtra, horasTrabalhadas, horasExtras, salarioTotal, ferias)
values ('Juliana Souza', '1990-05-05', 'Feminino', 321654987, 32165498, 321654987, 789123456, 'juliana.souza@email.com', '2023-01-01', 5, 'Remoto', 2000.00, 0.00, 160, NULL, 2000.00, 0);

-- Inserindo dados na tabela Funcionarios Inativos
insert into funcionariosInativos (nomeFuncionario, cpf, cep, telContato, email, codCargo, modalidade, dataAdmissao, dataDesligamento)
values ('João da Silva', 123456789, 12345678, 123456789, 'joao.silva@email.com', 1, 'Presencial', '2022-12-31', '2023-01-01');

insert into funcionariosInativos (nomeFuncionario, cpf, cep, telContato, email, codCargo, modalidade, dataAdmissao, dataDesligamento)
values ('Maria Santos', 987654321, 98765432, 987654321, 'maria.santos@email.com', 2, 'Remoto', '2022-12-31', '2023-01-01');

insert into funcionariosInativos (nomeFuncionario, cpf, cep, telContato, email, codCargo, modalidade, dataAdmissao, dataDesligamento)
values ('José Oliveira', 456789123, 45678912, 456789123, 'jose.oliveira@email.com', 3, 'Presencial', '2022-12-31', '2023-01-01');

insert into funcionariosInativos (nomeFuncionario, cpf, cep, telContato, email, codCargo, modalidade, dataAdmissao, dataDesligamento)
values ('Ana Pereira', 789123456, 78912345, 789123456, 'ana.pereira@email.com', 4, 'Remoto', '2022-12-31', '2023-01-01');

insert into funcionariosInativos (nomeFuncionario, cpf, cep, telContato, email, codCargo, modalidade, dataAdmissao, dataDesligamento)
values ('Carlos Souza', 321654987, 32165498, 321654987, 'carlos.souza@email.com', 5, 'Presencial', '2022-12-31', '2023-01-01');

-- Inserindo dados na tabela Banco de Talentos
insert into bancoTalentos (nomeFuncionario, cpf, cep, telContato, email, codCargo, dataEntrevista, notaEntrevista, codEntrevistador)
values ('João da Silva', 123456789, 12345678, 123456789, 'joao.silva@email.com', 1, '2023-01-01', 8, 1);

insert into bancoTalentos (nomeFuncionario, cpf, cep, telContato, email, codCargo, dataEntrevista, notaEntrevista, codEntrevistador)
values ('Maria Santos', 987654321, 98765432, 987654321, 'maria.santos@email.com', 2, '2023-01-01', 8, 2);

insert into bancoTalentos (nomeFuncionario, cpf, cep, telContato, email, codCargo, dataEntrevista, notaEntrevista, codEntrevistador)
values ('José Oliveira', 456789123, 45678912, 456789123, 'jose.oliveira@email.com', 3, '2023-01-01', 8, 3);

insert into bancoTalentos (nomeFuncionario, cpf, cep, telContato, email, codCargo, dataEntrevista, notaEntrevista, codEntrevistador)
values ('Ana Pereira', 789123456, 78912345, 789123456, 'ana.pereira@email.com', 4, '2023-01-01', 8, 4);

insert into bancoTalentos (nomeFuncionario, cpf, cep, telContato, email, codCargo, dataEntrevista, notaEntrevista, codEntrevistador)
values ('Carlos Souza', 321654987, 32165498, 321654987, 'carlos.souza@email.com', 5, '2023-01-01', 8, 5);

-- Inserindo dados na tabela Administradores
insert into administradores (idFuncionario) values (4);

-- Inserindo dados na tabela Folha de Pagamento
insert into folhaPagamentos (responsavelLancamento, idFuncionario, dataLancamento, valorBase, descontos, valorFinal)
values (1, 1, '2024-02-15', 5000.00, 1000.00, 4000.00);

insert into folhaPagamentos (responsavelLancamento, idFuncionario, dataLancamento, valorBase, descontos, valorFinal)
values (2, 2, '2024-02-15', 5000.00, 1000.00, 4000.00);

insert into folhaPagamentos (responsavelLancamento, idFuncionario, dataLancamento, valorBase, descontos, valorFinal)
values (3, 3, '2024-02-15', 5000.00, 1000.00, 4000.00);

insert into folhaPagamentos (responsavelLancamento, idFuncionario, dataLancamento, valorBase, descontos, valorFinal)
values (4, 4, '2024-02-15', 5000.00, 1000.00, 4000.00);

insert into folhaPagamentos (responsavelLancamento, idFuncionario, dataLancamento, valorBase, descontos, valorFinal)
values (5, 5, '2024-02-15', 5000.00, 1000.00, 4000.00);

-- Inserindo dados na tabela Treinamentos de funcionários
insert into treinamentos (idFuncionario, dataInicio, dataTermino)
values (1, '2024-02-15', NULL);

insert into treinamentos (idFuncionario, dataInicio, dataTermino)
values (2, '2024-02-15', NULL);

insert into treinamentos (idFuncionario, dataInicio, dataTermino)
values (3, '2024-02-15', NULL);

insert into treinamentos (idFuncionario, dataInicio, dataTermino)
values (4, '2024-02-15', NULL);

insert into treinamentos (idFuncionario, dataInicio, dataTermino)
values (5, '2024-02-15', NULL);
