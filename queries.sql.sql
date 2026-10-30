-- Consulta 1: Total de vagas solicitadas por Função/Cargo
SELECT 
 funcao_id AS ID,
 funcoes.nome AS Funcao, 
 SUM(qtd_solicitada) AS Total_solicitado
FROM solicitacoes
INNER JOIN funcoes ON solicitacoes.funcao_id = funcoes.id
GROUP BY funcoes.nome
ORDER BY Total_solicitado DESC


-- Consulta 2: Volume de Demandas por Cliente
SELECT  
  lojas.nome AS Lojas, 
  redes.nome AS Redes, 
  SUM(qtd_solicitada) as Total
FROM redes
INNER JOIN lojas ON redes.id = lojas.rede_id
INNER JOIN solicitacoes ON lojas.id = solicitacoes.loja_id
GROUP BY lojas.nome, redes.nome
HAVING SUM(qtd_solicitada) > 30
ORDER BY Total DESC

-- Consulta 3: Qual cargo tem a pior taxa de atendimento?
SELECT 
    lojas.cidade AS Cidade,
    lojas.uf AS UF,
    SUM(solicitacoes.qtd_solicitada) AS Total_Solicitado
FROM solicitacoes
INNER JOIN lojas ON solicitacoes.loja_id = lojas.id
GROUP BY lojas.cidade, lojas.uf
ORDER BY Total_Solicitado DESC;