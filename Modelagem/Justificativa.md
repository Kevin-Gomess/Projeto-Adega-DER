

A modelagem conceitual foi desenvolvida a partir das informações levantadas durante a pesquisa de campo na Adega do Tonho, considerando a rotina do estabelecimento e as necessidades identificadas em relação ao controle de produtos, estoque, vendas, compras e clientes.

A separação das informações em entidades permite representar os processos de forma organizada, evitando a concentração de diferentes dados em uma única estrutura.

A entidade Produto foi definida para reunir as informações dos produtos comercializados, enquanto Categoria permite organizar esses produtos conforme suas classificações. A entidade Estoque foi incluída para representar a quantidade total disponível de cada produto e sua localização de referência.

A entidade Movimentação de Estoque permite registrar as entradas, saídas e ajustes relacionados aos produtos, contribuindo para um acompanhamento mais organizado das alterações nas quantidades disponíveis.

Para representar as vendas, foram utilizadas as entidades Venda e Item da Venda. Essa separação permite registrar os dados gerais da operação e, ao mesmo tempo, identificar os diferentes produtos, quantidades e valores que compõem cada venda.

A entidade Pagamento foi incluída para registrar os valores recebidos e as respectivas formas de pagamento. Como o estabelecimento aceita pagamentos divididos, o relacionamento entre Venda e Pagamento permite associar mais de um pagamento a uma mesma venda.

No controle de compras fiadas, as entidades Cliente, Fiado e Item do Fiado permitem relacionar os clientes às suas dívidas e registrar individualmente os produtos retirados, suas quantidades e valores.

As entidades Compra, Item da Compra e Fornecedor foram definidas para representar as compras realizadas para reposição de mercadorias, permitindo identificar os fornecedores e os produtos adquiridos em cada operação.

Por fim, a entidade Funcionário permite identificar o responsável pelo registro de cada venda.

Dessa forma, o modelo conceitual busca representar os principais processos identificados na pesquisa de campo e servir como base para as próximas etapas do projeto, incluindo a elaboração do dicionário de dados e, posteriormente, a implementação do banco de dados.
