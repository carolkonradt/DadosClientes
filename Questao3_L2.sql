
SELECT Pessoas.NOME, DAY(Pagamentos.DT_PAGAMENTO) AS DIA_MES, Contratos.VALOR_PARCELAS
FROM Pessoas
JOIN Contratos
ON Pessoas.CONTRATO_ID=Contratos.ID
JOIN Pagamentos
ON Pessoas.ID=Pagamentos.PESSOA_ID
WHERE Pessoas.INADIMPLENTE='S'
ORDER BY Pessoas.NOME;

SELECT Pessoas.NOME, Contratos.VALOR_PARCELAS*Contratos.PARCELAS AS VALOR_TOTAL
FROM Pessoas
JOIN Contratos
ON Pessoas.CONTRATO_ID=Contratos.ID
WHERE Pessoas.INADIMPLENTE='N'
ORDER BY Pessoas.NOME;