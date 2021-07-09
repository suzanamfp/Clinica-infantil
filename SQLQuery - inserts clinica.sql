
INSERT INTO clinica(idClinica, nome)
values (1,'Clinica de Cuidados Infantis')
 
-- Mediante a regra de negócio, os dados são cadastrados em apenas uma clinica, assim não será possível cadastrar mais de uma clinica
---------------------------------------------------------------------------
INSERT INTO pessoa(idPessoa, nome, idClinica, endereco)
values (1,'Ana Lima', 1, 'Rua das flores')

INSERT INTO pessoa(idPessoa, nome, idClinica, endereco)
values (2,'João Antônio da Silva', 1, 'Rua das Pedras')

INSERT INTO pessoa(idPessoa, nome, idClinica, endereco)
values (3,'Mariana Fernandes', 1, 'Rua dos Laços')

INSERT INTO pessoa(idPessoa, nome, idClinica, endereco)
values (4,'Paulo Gomes', 1, 'Rua das Margaridas')

INSERT INTO pessoa(idPessoa, nome, idClinica, endereco)
values (5,'Maria Gonçalves', 1, 'Rua do Sol')

INSERT INTO pessoa(idPessoa, nome, idClinica, endereco)
values (6,'Maria das Dores', 1, 'Rua da Lua')

INSERT INTO pessoa(idPessoa, nome, idClinica, endereco)
values (7,'Pedro Paulo', 1, 'Rua do Lago')

INSERT INTO pessoa(idPessoa, nome, idClinica, endereco)
values (8,'José Medeiros', 1, 'Rua das Luzes')

INSERT INTO pessoa(idPessoa, nome, idClinica, endereco)
values (9,'Maria Lina', 1, 'Rua do Mato')

INSERT INTO pessoa(idPessoa, nome, idClinica, endereco)
values (10,'João de Deus', 1, 'Rua do Lírio')

INSERT INTO pessoa(idPessoa, nome, idClinica, endereco)
values (11,'Ana Marta Medeiros', 1, 'Rua dos Ipês')

INSERT INTO pessoa(idPessoa, nome, idClinica, endereco)
values (12,'Juliana Farias', 1, 'Rua do Cravo')

INSERT INTO pessoa(idPessoa, nome, idClinica, endereco)
values (13,'Luana Alves', 1, 'Rua da Maré')

select * from pessoa

---------------------------------------------------------------------------
INSERT INTO colaborador (idColaborador, horasTrabalhadas, diasTrabalhados, funcao, idClinica, cpfProfissional, idPessoa)
values (1, 20, 8, 'Médico', 1, '0476205983', 1)

INSERT INTO colaborador (idColaborador, horasTrabalhadas, diasTrabalhados, funcao, idClinica, cpfProfissional, idPessoa)
values (2, 10, 5, 'Fisioterapeuta', 1, '0123456789', 2)

INSERT INTO colaborador (idColaborador, horasTrabalhadas, diasTrabalhados, funcao, idClinica, cpfProfissional, idPessoa)
values (3, 30, 20, 'Recepcionista', 1, '01122334455', 3)

INSERT INTO colaborador (idColaborador, horasTrabalhadas, diasTrabalhados, funcao, idClinica, cpfProfissional, idPessoa)
values (4, 25, 20, 'Aux. Serviços Gerais', 1, '066778899', 4)

INSERT INTO colaborador (idColaborador, horasTrabalhadas, diasTrabalhados, funcao, idClinica, cpfProfissional, idPessoa)
values (5, 15, 10, 'Fonoaudiólogo', 1, '1212121212', 11)

INSERT INTO colaborador (idColaborador, horasTrabalhadas, diasTrabalhados, funcao, idClinica, cpfProfissional, idPessoa)
values (6, 20, 8, 'T.Ocupacional', 1, '1313131313', 12)

INSERT INTO colaborador (idColaborador, horasTrabalhadas, diasTrabalhados, funcao, idClinica, cpfProfissional, idPessoa)
values (7, 10, 8, 'Psicólogo', 1, '1818181818', 13)

select * from colaborador

-------------------------------------------------------------
INSERT INTO paciente(idPaciente, idPessoa, cpfPaciente)
values(1, 6, '1234567890')

INSERT INTO paciente(idPaciente, idPessoa, cpfPaciente)
values(2, 7, '1414141114')

INSERT INTO paciente(idPaciente, idPessoa, cpfPaciente)
values(3, 8, '1515151515')

INSERT INTO paciente(idPaciente, idPessoa, cpfPaciente)
values(4, 9,'1616161616')

INSERT INTO paciente(idPaciente, idPessoa, cpfPaciente)
values(5, 10,'1717171717')


select * from paciente

-----------------------------------------------------------------------------

INSERT INTO especialidade(idEspecialidade, nome)
values(1, 'Psicologia')

INSERT INTO especialidade(idEspecialidade, nome)
values(2, 'Fonoaudiologia')

INSERT INTO especialidade(idEspecialidade, nome)
values(3, 'Medicina')

INSERT INTO especialidade(idEspecialidade, nome)
values(4, 'Fisioterapia')

INSERT INTO especialidade(idEspecialidade, nome)
values(5, 'T. Ocupacional')


select * from especialidade

----------------------------------------------------
INSERT INTO pagamento (idPagamento, data, valor, tipoPagamento)
values (1, '2021-26-05', 300, 'dinheiro')

INSERT INTO pagamento (idPagamento, data, valor, tipoPagamento)
values (2, '2021-28-05', 150, 'cartão')

INSERT INTO pagamento (idPagamento, data, valor, tipoPagamento)
values (3, '2021-31-05', 200, 'dinheiro')

INSERT INTO pagamento (idPagamento, data, valor, tipoPagamento)
values (4, '2021-02-06', 180, 'cartão')

INSERT INTO pagamento (idPagamento, data, valor, tipoPagamento)
values (5, '2021-03-06', 100, 'dinheiro')


select * from pagamento

-------------------------------------------------------------------
INSERT INTO profissional (idProfissional, idEspecialidade, qunatAtendimento, idPagamento, idColaborador)
values(1, 3, 20, 1, 1)
 
INSERT INTO profissional (idProfissional, idEspecialidade, qunatAtendimento, idPagamento, idColaborador)
values(2, 4, 5, 3, 2)

INSERT INTO profissional (idProfissional, idEspecialidade, qunatAtendimento, idPagamento, idColaborador)
values(3, 2, 10, 1, 5)

INSERT INTO profissional (idProfissional, idEspecialidade, qunatAtendimento, idPagamento, idColaborador)
values(4, 1, 15, 4, 7)

INSERT INTO profissional (idProfissional, idEspecialidade, qunatAtendimento, idPagamento, idColaborador)
values(5, 5, 9, 5, 6)

select * from profissional
----------------------------------------------------------------------------------------

INSERT INTO plano (idPlano, nome)
values (1, 'Hapvida')

INSERT INTO plano (idPlano, nome)
values (2, 'Unimed')

INSERT INTO plano(idPlano, nome)
values (3, 'Smile')

INSERT INTO plano(idPlano, nome)
values (4, 'Postal Saúde')

INSERT INTO plano(idPlano, nome)
values (5, 'Bradesco')


select * from plano
---------------------------------------------------------------------

INSERT INTO TipoConsulta (idTipoConsulta, idPagamento, idPlano)
values(1, 1, 1)

INSERT INTO TipoConsulta (idTipoConsulta, idPagamento, idPlano)
values(2, 2, 2)

INSERT INTO TipoConsulta (idTipoConsulta, idPagamento, idPlano)
values(3, 3, 3)

INSERT INTO TipoConsulta (idTipoConsulta, idPagamento, idPlano)
values(4, 4, 4)

INSERT INTO TipoConsulta (idTipoConsulta, idPagamento, idPlano)
values(5, 5, 5)


select * from TipoConsulta
-----------------------------------------------------------------------

INSERT INTO consulta(idConsulta, data, idPlano, idPagamento, idProfissional, idPaciente, idTipoConsulta)
values (1,'2021-25-05', 1, null, 2, 1, 1)

INSERT INTO consulta(idConsulta, data, idPlano, idPagamento, idProfissional, idPaciente, idTipoConsulta)
values (2,'2021-26-05', null, 1, 1, 2, 3)

INSERT INTO consulta(idConsulta, data, idPlano, idPagamento, idProfissional, idPaciente, idTipoConsulta)
values (3,'2021-27-05', 2, null, 4, 3, 2)

INSERT INTO consulta(idConsulta, data, idPlano, idPagamento, idProfissional, idPaciente, idTipoConsulta)
values (4,'2021-27-05', 2, null, 4, 5, 4)

INSERT INTO consulta(idConsulta, data, idPlano, idPagamento, idProfissional, idPaciente, idTipoConsulta)
values (5,'2021-27-05', 2, null, 3, 4, 5)


select *from consulta
-------------------------------------------------------------------------

INSERT INTO tipo_tratamento(idTipoDeTratamento, descricao)
values(1, null)

INSERT INTO tipo_tratamento(idTipoDeTratamento, descricao)
values(2, null)

INSERT INTO tipo_tratamento(idTipoDeTratamento, descricao)
values(3, null)

INSERT INTO tipo_tratamento(idTipoDeTratamento, descricao)
values(4, null)

INSERT INTO tipo_tratamento(idTipoDeTratamento, descricao)
values(5, null)

select * from tipo_tratamento
----------------------------------------------------------------------------

INSERT INTO tratamento(idTratamento, nome, data, idConsulta, idTipoDeTratamento )
values(1, 'Reabilitação Motora', '2021-26-05', 1, 2)

INSERT INTO tratamento(idTratamento, nome, data, idConsulta, idTipoDeTratamento )
values(2, 'Terapia', '2021-25-05', 2, 1)

INSERT INTO tratamento(idTratamento, nome, data, idConsulta, idTipoDeTratamento )
values(3, 'Reabilitação Motora', '2021-25-05', 3, 3)

INSERT INTO tratamento(idTratamento, nome, data, idConsulta, idTipoDeTratamento )
values(4, 'Terapia', '2021-25-05', 4, 5)

INSERT INTO tratamento(idTratamento, nome, data, idConsulta, idTipoDeTratamento )
values(5, 'Terapia', '2021-27-05', 5, 4)

select * from tratamento










