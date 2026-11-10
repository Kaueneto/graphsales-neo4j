# GraphSales — Análise de Compras com Neo4j

## Sobre o projeto

O GraphSales é um projeto prático desenvolvido como parte de um desafio da Digital Innovation One (DIO), com o objetivo de explorar a modelagem, o armazenamento e a consulta de dados utilizando o banco de dados orientado a grafos Neo4j.

O projeto simula um ambiente comercial no qual clientes realizam compras de diferentes produtos.

## Objetivos

- Modelar clientes, produtos e relacionamentos de compra.
- Utilizar a linguagem Cypher para manipulação e consulta dos dados.
- Identificar os produtos mais comprados.
- Encontrar clientes com interesses semelhantes.
- Explorar recomendações de produtos baseadas em relacionamentos.

## Tecnologias utilizadas

- Neo4j AuraDB
- Linguagem Cypher
- CSV
- GitHub

## Modelagem do grafo

O modelo utiliza dois tipos de nós:

- **Cliente:** identificador, nome e cidade.
- **Produto:** identificador, nome e preço.

O relacionamento `COMPROU` conecta um cliente a um produto adquirido.

A modelagem em grafos foi escolhida por permitir navegar diretamente pelas relações entre clientes e produtos, facilitando análises de similaridade e recomendações.

## Dataset

O projeto utiliza dados fictícios, incluindo 8 clientes, 8 produtos e 20 relacionamentos de compra.

## Consultas de negócio

1. Identificação dos produtos mais comprados.
2. Análise de clientes que adquiriram os mesmos produtos.
3. Recomendação de produtos com base em compras de clientes semelhantes.

## Como executar

1. Criar uma instância gratuita no Neo4j AuraDB.
2. Abrir o editor Cypher.
3. Executar os comandos do arquivo `scripts/01_criar_dados.cypher`.
4. Executar as consultas do arquivo `scripts/02_consultas.cypher`.
5. Visualizar os resultados no Neo4j.

## Evidências

Adicionar aqui as imagens do grafo e os resultados das consultas, disponíveis na pasta `imagens`.

## Dificuldades e aprendizados

Documentar os problemas encontrados durante a implementação, as soluções aplicadas e os principais conhecimentos adquiridos.

## Conclusão

O projeto demonstra como bancos de dados orientados a grafos podem ser utilizados para representar relacionamentos e apoiar análises de comportamento de compra e recomendações de produtos.