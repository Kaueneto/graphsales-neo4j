# quais sao is itens mais comprados?

MATCH (c:Cliente)-[:COMPROU]->(p:Produto)
RETURN p.nome AS Produto,
       COUNT(c) AS TotalCompras
ORDER BY TotalCompras DESC;


# 2 quais clientes compraram os mesmos produtos


MATCH (c1:Cliente)-[:COMPROU]->(p:Produto)
      <-[:COMPROU]-(c2:Cliente)
WHERE c1.id < c2.id
RETURN c1.nome AS Cliente1,
       c2.nome AS Cliente2,
       COLLECT(p.nome) AS ProdutosEmComum,
       COUNT(p) AS Quantidade
ORDER BY Quantidade DESC;

# Recomendar produtos para um clientes


MATCH (cliente:Cliente {nome: 'Ana'})
      -[:COMPROU]->(produto:Produto)
      <-[:COMPROU]-(outro:Cliente)
      -[:COMPROU]->(recomendado:Produto)
WHERE NOT EXISTS {
  MATCH (cliente)-[:COMPROU]->(recomendado)
}
RETURN recomendado.nome AS Recomendacao,
       COUNT(DISTINCT outro) AS ClientesSemelhantes
ORDER BY ClientesSemelhantes DESC;
