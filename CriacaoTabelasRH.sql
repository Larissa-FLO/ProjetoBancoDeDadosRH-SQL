 create database bemEstarRh
 go

 use bemEstarRH
 go

 -- Tabelas

  -- Tabela de Setores
 create table setores (
 codSetor int primary key identity(1,1),
 nomeSetor varchar(50) not null
 );

 -- Tabela de Gerentes
 create table gerentes (
 codGerente int primary key identity(1,1),
 nomeGerente varchar(50) not null,
 codSetor int,
 cpf int not null,
 cep int not null,
 telContato int not null,
 contatoEmergencia int not null,
 email varchar(50) not null,
 dataAdmissao date not null,
  modalidade varchar not null,
 salario decimal(5,2) not null,
 valorExtra decimal(5,2) not null, 
 horasTrabalhadas int not null,
 horasExtras int,
 salarioTotal decimal(5,2) not null,
 foreign key (codSetor) references setores(codSetor)
 );

 -- Tabela dos Cargos
 create table cargos (
 codCargo int primary key identity(1,1),
 nomeCargo varchar(30) not null,
 descricaoCargo text not null,
 salarioBase decimal(5,2) not null,
 codGerente int,
 foreign key (codGerente) references gerentes(codGerente)
 );

 -- Tabela de Funcionários
 create table funcionarios (
 idFuncionario int primary key identity(1,1),
 nomeFuncionario varchar(50) not null,
 dataNasc date not null,
 genero varchar(20) not null,
 cpf int not null,
 cep int not null,
 telContato int not null,
 contatoEmergencia int not null,
 email varchar(50) not null,
 dataAdmissao date not null,
 codCargo int,
 modalidade varchar not null,
 salario decimal(5,2) not null,
 valorExtra decimal(5,2) not null, 
 horasTrabalhadas int not null,
 horasExtras int,
 salarioTotal decimal(5,2) not null,
 ferias bit default(0),
 foreign key (codCargo) references cargos(codCargo)
 );

 -- Tabela de Funcionários Inativos
 create table funcionariosInativos (
 idFuncionario int primary key identity(1,1),
 nomeFuncionario varchar(50) not null,
 cpf int not null,
 cep int not null,
 telContato int not null,
 email varchar(50) not null,
 codCargo int,
 modalidade varchar not null,
 dataAdmissao date not null,
 dataDesligamento date not null,
 foreign key (codCargo) references cargos(codCargo)
 );

 -- Tabela do Banco de Talentos
 create table bancoTalentos (
 idFuncionario int primary key identity(1,1),
 nomeFuncionario varchar(50) not null,
 cpf int not null,
 cep int not null,
 telContato int not null,
 email varchar(50) not null,
 codCargo int,
 dataEntrevista date not null,
 notaEntrevista int not null,
 codEntrevistador int not null,
 foreign key (codCargo) references cargos(codCargo),
 foreign key (codEntrevistador) references gerentes(codGerente)
 );

 --Tabela de Administradores
 create table administradores (
 idAdm int primary key identity(1,1),
 idFuncionario int,
 foreign key (idFuncionario) references funcionarios(idFuncionario)
 );

 -- Tabela de Folha de Pagamento
 create table folhaPagamentos (
 idLancamento  int primary key identity(1,1),
 responsavelLancamento int,
 idFuncionario int,
 dataLancamento date not null,
 valorBase decimal(5,2) not null,
 descontos decimal(5,2) not null,
 valorFinal decimal(5,2) not null,
 foreign key (responsavelLancamento) references administradores(idAdm),
 foreign key (idFuncionario) references funcionarios(idFuncionario)
 );

 -- Tabela de Treinamentos de funcionários
 create table treinamentos (
 idTreinamento int primary key identity(1,1),
 idFuncionario int,
 dataInicio date not null,
 dataTermino date,
 foreign key (idFuncionario) references funcionarios(idFuncionario)
 );