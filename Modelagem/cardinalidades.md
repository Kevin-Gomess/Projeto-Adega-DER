
| Relacionamento                    | Cardinalidade | Descrição                                                                                                                         |
| --------------------------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| Categoria — Produto               | 1:N           | Uma categoria pode possuir vários produtos, enquanto cada produto pertence a uma categoria.                                       |
| Produto — Estoque                 | 1:1           | Cada produto possui um único registro de estoque, que representa sua quantidade total disponível e uma localização de referência. |
| Produto — Movimentação de Estoque | 1:N           | Um produto pode possuir várias movimentações de entrada, saída ou ajuste ao longo do tempo.                                       |
| Venda — Item da Venda             | 1:N           | Uma venda pode conter vários itens, e cada item está vinculado a uma única venda.                                                 |
| Produto — Item da Venda           | 1:N           | Um produto pode aparecer em vários itens de venda.                                                                                |
| Funcionário — Venda               | 1:N           | Um funcionário pode registrar várias vendas, enquanto cada venda é associada a um funcionário.                                    |
| Venda — Pagamento                 | 1:N           | Uma venda pode possuir um ou mais pagamentos, permitindo a utilização de diferentes formas de pagamento na mesma venda.           |
| Cliente — Fiado                   | 1:N           | Um cliente pode possuir vários registros de fiado, enquanto cada registro está associado a um único cliente.                      |
| Fiado — Item do Fiado             | 1:N           | Um registro de fiado pode conter vários produtos, sendo cada item vinculado a um único fiado.                                     |
| Produto — Item do Fiado           | 1:N           | Um produto pode aparecer em vários registros de fiado.                                                                            |
| Fornecedor — Compra               | 1:N           | Um fornecedor pode estar relacionado a várias compras realizadas pelo estabelecimento.                                            |
| Compra — Item da Compra           | 1:N           | Uma compra pode conter vários itens, e cada item pertence a uma única compra.                                                     |
| Produto — Item da Compra          | 1:N           | Um produto pode aparecer em várias compras realizadas com fornecedores.                                                           |






Observações sobre as cardinalidades:
Produto e Estoque: foi adotado o relacionamento 1:1, considerando que o sistema terá apenas um registro com a quantidade total de cada produto, sem controle separado por área.
Venda e Pagamento: foi adotado o relacionamento 1, pois uma venda pode ser paga utilizando mais de uma forma de pagamento.
Venda, Compra e Fiado: cada operação pode conter vários itens, que são registrados nas respectivas entidades associativas.
