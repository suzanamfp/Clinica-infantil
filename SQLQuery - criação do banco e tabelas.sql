
create database clinica_infantil
ON(
	NAME= teste_dat,
	FILENAME='C:\CI\test_bd_primeiro.mdf',
	SIZE=5,
	MAXSIZE=20,
	FILEGROWTH=5
	) LOG ON (
	NAME= teste_log,
	FILENAME='C:\CI\test_bd_log.ldf',
	SIZE=10,
	MAXSIZE=50,
	FILEGROWTH=10)


	CREATE TABLE clinica (
	idClinica int NOT NULL
		constraint pk_clinica primary key,
	nome varchar(40) NOT NULL,
	
	)

	CREATE TABLE pessoa (
	idPessoa int NOT NULL
		constraint pk_pessoa primary key,
	nome varchar(40) NOT NULL,
	idClinica int NOT NULL
		constraint FK_pessoa_clinica_id foreign key
		references Clinica(idClinica),
	endereco varchar(40) NOT NULL,
	)

	CREATE TABLE colaborador(
	idColaborador int NOT NULL
		constraint PK_colaborador_id primary key,
	horasTrabalhadas tinyint NOT NULL,
	diasTrabalhados tinyint NOT NULL,
	funcao varchar(40) NOT NULL,
	idClinica int NOT NULL
		constraint FK_colaborador_clinica_id foreign key
		references Clinica(idClinica),
	cpfProfissional varchar(12) NOT NULL
		constraint un_colaborador_cpf_profissional unique,
	idPessoa int NOT NULL
		constraint FK_colacorador_pessoa_id foreign key
		references Pessoa (idPessoa)
	)

	CREATE TABLE paciente(
	idPaciente int NOT NULL
		constraint PK_paciente_id primary key,
	idPessoa int NOT NULL
		constraint FK_paciente_pessoa_id foreign key
		references Pessoa (idPessoa),
	cpfPaciente varchar(12) NOT NULL
	)

	CREATE TABLE especialidade(
	idEspecialidade int NOT NULL 
		constraint PK_especialidade_id primary key,
	nome varchar(15) NOT NULL
	)

	CREATE TABLE pagamento(
	idPagamento int NOT NULL
		constraint PK_pagamento_id primary key,
	data smalldatetime NOT NULL,
	valor smallmoney NOT NULL,
	tipoPagamento varchar(20) NOT NULL
	)
	
	CREATE TABLE profissional(
	idProfissional int NOT NULL
		constraint PK_profissional_id primary key,
	idEspecialidade int NOT NULL
		constraint FK_especialidade_id foreign key
		references Especialidade (idEspecialidade),
	qunatAtendimento tinyint  NOT NULL,
	idPagamento int NOT NULL
		constraint FK_pagamento_id foreign key
		references Pagamento (idPagamento),
	idColaborador int NOT NULL
		constraint FK_Colaborador_id foreign key
		references Colaborador (idColaborador),
	)

	CREATE TABLE plano(
	idPlano int NOT NULL
		constraint PK_plano_id primary key,
	nome varchar(40) NOT NULL
	)

	CREATE TABLE TipoConsulta(
	idTipoConsulta int NOT NULL
		constraint PK_tipo_consulta_id primary key,
	idPagamento int NOT NULL
		constraint FK_tipo_consulta_pagamento_id foreign key
		references Pagamento (idPagamento),
	idPlano int NOT NULL
		constraint FK_tipo_consulta_plano_id foreign key
		references Plano (idPlano)
	)

	CREATE TABLE consulta(
	idConsulta int NOT NULL
		constraint PK_consulta_id primary key,
	data smalldatetime NOT NULL,
	idPlano int NULL
		constraint FK_consulta_plano_id foreign key
		references Plano (idPlano),
	idPagamento int NULL
		constraint FK_consulta_pagamneto_id foreign key
		references Pagamento (idPagamento),
	idProfissional int NOT NULL
		constraint FK_consulta_profissional_id foreign key
		references Profissional (idProfissional),
	idPaciente int NOT NULL
		constraint FK_consulta_paciente_id foreign key
		references Paciente (idPaciente),
	idTipoConsulta int NOT NULL
		constraint FK_consulta_idTipoConsulta_id foreign key
		references TipoConsulta (idTipoConsulta)
	)


	CREATE TABLE tipo_tratamento(
	idTipoDeTratamento int NOT NULL
		constraint PK_tipo_tratamento_id primary key,
	descricao tinyint 
	)


	CREATE TABLE tratamento(
	idTratamento int NOT NULL
		constraint PK_tratamento_id primary key,
	data smalldatetime NOT NULL,
	nome varchar(40) NOT NULL,
	idTipoDeTratamento int NOT NULL
		constraint FK_tratamento_tipo_id foreign key
		references Tipo_tratamento (idTipoDeTratamento),
	idConsulta int NOT NULL
		constraint FK_tratamento_consulta_id foreign key
		references Consulta (idConsulta)
	)


	
	

	
	

	

	
	
	
	


	
	