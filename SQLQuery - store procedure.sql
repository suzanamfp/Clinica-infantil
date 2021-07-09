
-- COMANDO PARA UTILIZAR A BASE DE DADOS
USE clinica_infantil
GO

-- 1) Mostrar as informações do profissional pelo seu id fornecido como parametro de entrada

-- CRIANDO A STORE PROCEDURE
CREATE PROCEDURE idProfissional_SELECT
-- PARAMETRO DE ENTRADA
@idProfissional smallint --onde @idProfissional é o parâmetro de entrada e smallint é seu tipo
AS

-- COMANDO PARA OBTER O RESULTADO
SELECT * FROM profissional
WHERE idProfissional = @idProfissional
GO

-- COMANDO PARA EXECUTAR A STORE PROCEDURE
EXECUTE idProfissional_SELECT 3


-- 2)  Exibir as informações da consulta pelo seu id fornecido como parametro de entrada

-- COMANDO PARA UTILIZAR A BASE DE DADOS
USE clinica_infantil
GO

-- CRIANDO A STORE PROCEDURE
CREATE PROCEDURE spConsulta
@idconsulta int
AS 
select * from consulta
where idconsulta = @idconsulta
GO

-- COMANDO PARA UTILIZAR A BASE DE DADOS
exec spConsulta 3


