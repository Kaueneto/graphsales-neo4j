
UNWIND [
  {id: 1, nome: 'Ana', cidade: 'Goiânia'},
  {id: 2, nome: 'Bruno', cidade: 'Anápolis'},
  {id: 3, nome: 'Carlos', cidade: 'Goiânia'},
  {id: 4, nome: 'Daniela', cidade: 'Brasília'},
  {id: 5, nome: 'Eduardo', cidade: 'Goiânia'},
  {id: 6, nome: 'Fernanda', cidade: 'Anápolis'},
  {id: 7, nome: 'Gabriel', cidade: 'Brasília'},
  {id: 8, nome: 'Helena', cidade: 'Goiânia'}
] AS dados
MERGE (c:Cliente {id: dados.id})
SET c.nome = dados.nome,
    c.cidade = dados.cidade;


# criar Produtos


UNWIND [
  {id: 1, nome: 'Notebook', preco: 3500},
  {id: 2, nome: 'Mouse', preco: 90},
  {id: 3, nome: 'Teclado', preco: 180},
  {id: 4, nome: 'Monitor', preco: 950},
  {id: 5, nome: 'Headset', preco: 250},
  {id: 6, nome: 'Webcam', preco: 320},
  {id: 7, nome: 'SSD', preco: 420},
  {id: 8, nome: 'Impressora', preco: 1100}
] AS dados
MERGE (p:Produto {id: dados.id})
SET p.nome = dados.nome,
    p.preco = dados.preco;

# criar relacionamentos


UNWIND [
  [1,1], [1,2], [1,3],
  [2,1], [2,4],
  [3,2], [3,3], [3,5],
  [4,1], [4,5],
  [5,4], [5,6],
  [6,2], [6,7],
  [7,1], [7,3], [7,8],
  [8,2], [8,4], [8,5]
] AS compra

MATCH (c:Cliente {id: compra[0]})
MATCH (p:Produto {id: compra[1]})
MERGE (c)-[:COMPROU]->(p);
