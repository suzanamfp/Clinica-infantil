
-- 1) Exibir o id de cada consulta e o nome dos tratamentos que foram realizados
select consulta.idConsulta, tratamento.nome
from consulta
inner join tratamento 
on tratamento.idConsulta = consulta.idPaciente

--Neste exemplo fizemos a consulta de duas tabelas (Consulta e tratamento) usando o inner join

-----------------------------------------------------------------------------------------------------
-- 2) Exibir para cada profissional a especialidade e a quantidade de atendimentos que o mesmo realizou, o nome do plano que atendeu, 
-- ordenados pela quantidade de atendimento de forma decrescente

select p.idEspecialidade, p.qunatAtendimento
from profissional p
inner join plano pl
on pl.idPlano = p.idEspecialidade
order by p.qunatAtendimento desc

--Neste exemplo fizemos a consulta de duas tabelas (Profissional e plano) usando o inner join e ordenando de forma decrescente 
--a quantidade de atendimentos

--------------------------------------------------------------------------------------------------------------
-- 3) Exibir o nome das pessoas, os profissionais e as consultas de cada pessoa ordenado pelo nome da pessoa 

select pe.nome Pessoa, p.idProfissional Profissional, c.idConsulta Consulta
from pessoa pe
inner join profissional p
on p.idProfissional = pe.idPessoa
inner join consulta c
on c.idConsulta = p.idProfissional
order by pe.nome

--Neste exemplo fizemos a consulta de três tabelas (Pessoa e Profissional e Consulta) usando o inner join e ordenando de forma 
--crescente o nome das pessoas

-----------------------------------------------------------------------------------------------------------
-- 4) Exibir o nome das pessoas e o id de paciente ordenado pelo nome das pessoas

select pe.nome, p.idPaciente
from pessoa pe
inner join paciente p
on pe.idPessoa = p.idPessoa
order by pe.nome

--Neste exemplo fizemos a consulta de duas tabelas (Pessoa e Paciente) usando o inner join e 
--usamos o order by para ordenar pelo nome da pessoa

------------------------------------------------------------------------------------------------------------
-- 5) Exibir o total de horas trabalhadas e o nome de pessoas 

select pe.nome, SUM(c.horasTrabalhadas) Horas_trabalhadas
from colaborador c
inner join  pessoa pe
on c.idPessoa = pe.idPessoa
group by pe.nome

--Neste exemplo fizemos a consulta de duas tabelas (Colaborador e Pessoa) usando o inner join e
--a função SUN para somar o total de horas trabalhadas agrupando as informações pelo nome das pessoas

-------------------------------------------------------------------------------------------------------------
-- 6) Exibir a média de quantidade de atendimento 

select AVG(p.qunatAtendimento) Média_atend, c.funcao
from profissional p
inner join colaborador c
on p.idColaborador = c.idColaborador
group by c.funcao

--Neste exemplo fizemos a consulta de duas tabelas (Profissional e Colaborador) usando o inner join e 
--usamos a função AVG para para calcular a média de quantidade de atendimentos realizados
--agrupando as informações pela função dos colaboradores

---------------------------------------------------------------------------------------------------------------
-- 7) Exibir o valor máximo de pagamento e a data das consultas

select c.data DataConsulta, MAX(p.valor) Pagamento_max
from pagamento p
inner join consulta c
on c.idPagamento = p.idPagamento
group by c.data


--Neste exemplo fizemos a consulta de duas tabelas (Pagamento e Consulta) usando o inner join
--e a função MAX para mostrar o valor máximo da tabela pagamento
--agrupando as informações pela data da consulta
---------------------------------------------------------------------------------------------------------------
-- 8) Exibir o id de consultas e o nome do plano ordenado por data de forma decrescente

select c.idConsulta, c.data, p.nome
from consulta c
inner join plano p
on c.idPlano = p.idPlano 
order by c.data desc

--Neste exemplo fizemos a consulta de duas tabelas (Consulta e Plano) usando o inner join 
--ordenando a data de forma decescente

---------------------------------------------------------------------------------------------------------------
-- 9) Exibir o id de consulta e o id de TipoConsulta ordenado pela data de forma decrescente

select c.idConsulta, c.data, t.idTipoConsulta
from consulta c
inner join TipoConsulta t
on c.idTipoConsulta = t.idTipoConsulta
order by c.data desc

--Neste exemplo fizemos a consulta de duas tabelas (Consulta e Tipo Consulta) usando o inner join
--ordenando a data de forma decescente
---------------------------------------------------------------------------------------------------------------
-- 10) Exibir o id de paciente em cada consulta o id de colaborador da tabela profissional 
--ordenado por data de forma decrescente

select c.idPaciente, c.data, p.idColaborador
from consulta c
inner join profissional p
on c.idProfissional = p.idProfissional
order by c.data desc

--Neste exemplo fizemos a consulta de duas tabelas (Consulta e Profissional) usando o inner join
--ordenando a data de forma decescente