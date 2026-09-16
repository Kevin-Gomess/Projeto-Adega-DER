# Entrega 1 — Modelo Conceitual (DER)
### Modelagem de um sistema de gestão de informações para uma organização de pequeno porte

## Metadados
- **Nomes dos alunos e RGM:** [PREENCHER]

## 1. Caracterização da Organização

A organização escolhida para o desenvolvimento do projeto é uma adega de pequeno porte, que atua no comércio de bebidas, alimentos, produtos para narguilé e outros itens.

A adega existe há aproximadamente 4 anos e possui cerca de 3 a 4 pessoas envolvidas na rotina de trabalho, com a quantidade de pessoas variando de acordo com o dia.

O funcionamento normalmente começa por volta das 13h, com a organização e limpeza do ambiente acontecendo junto com o atendimento aos clientes. O encerramento ocorre aproximadamente entre 23h e 00h.

Entre os principais produtos comercializados estão refrigerantes, cervejas, bebidas alcoólicas, doces, salgadinhos, sucos, miojo, sal, açúcar, leite, produtos para narguilé, cigarros e isqueiros.

A organização dos produtos ocorre principalmente na área de atendimento e no estoque localizado nos fundos da adega. Também existe uma área separada para bebidas utilizadas na preparação de doses.

Durante a pesquisa de campo, foi possível observar que parte das informações da organização ainda é controlada de forma manual, utilizando caderno, etiquetas e celular.

## 2. Processos de Negócio

Os principais processos identificados durante a pesquisa foram:

- Recebimento de mercadorias dos fornecedores;
- Conferência das quantidades recebidas;
- Organização dos produtos no estoque;
- Controle de produtos e preços;
- Realização de vendas;
- Registro de vendas fiadas;
- Compra de produtos dos fornecedores;
- Controle das movimentações do estoque;
- Abertura de garrafas para venda de doses.

No recebimento de mercadorias, os produtos são conferidos antes de serem armazenados. As quantidades são verificadas uma por uma e, após a conferência, os produtos são organizados no estoque.

Nas vendas comuns, normalmente é realizado o recebimento do pagamento sem o registro individual de cada produto vendido. Já nas vendas fiadas, são registrados os produtos retirados e o valor que ficou pendente.

As compras realizadas com fornecedores e suas respectivas quantidades são registradas pelo celular.

Quando uma garrafa é aberta para a preparação de doses, ela deixa de estar disponível para venda como uma garrafa fechada, sendo considerada uma saída do estoque.

## 3. Requisitos do Sistema

### 3.1 Requisitos Funcionais

- **RF01:** O sistema deve permitir cadastrar produtos.
- **RF02:** O sistema deve permitir consultar os produtos cadastrados.
- **RF03:** O sistema deve permitir registrar compras de produtos.
- **RF04:** O sistema deve registrar a entrada de produtos no estoque.
- **RF05:** O sistema deve registrar a saída de produtos do estoque.
- **RF06:** O sistema deve registrar as movimentações de estoque.
- **RF07:** O sistema deve permitir registrar vendas.
- **RF08:** O sistema deve permitir registrar vendas fiadas.
- **RF09:** O sistema deve registrar a abertura de garrafas destinadas à venda de doses como movimentação de saída do estoque.
- **RF10:** O sistema deve permitir consultar a quantidade disponível de produtos.
- **RF11:** O sistema deve permitir consultar os preços dos produtos.
- **RF12:** O sistema deve permitir cadastrar e consultar fornecedores.

### 3.2 Requisitos Não Funcionais

- **RNF01:** O sistema deve possuir uma interface simples e fácil de utilizar.
- **RNF02:** As informações cadastradas devem ser armazenadas de forma organizada.
- **RNF03:** O sistema deve manter a integridade das informações de estoque.
- **RNF04:** O acesso às informações deve ser protegido contra alterações não autorizadas.
- **RNF05:** As consultas e registros devem ocorrer de maneira adequada para a rotina da organização.

## 4. Regras de Negócio

- **RN01:** Toda mercadoria recebida deve ser conferida antes de ser armazenada.
- **RN02:** As quantidades recebidas devem ser verificadas antes da organização dos produtos no estoque.
- **RN03:** Uma compra de produtos representa uma entrada de mercadorias no estoque.
- **RN04:** A venda de um produto representa uma saída do estoque.
- **RN05:** Uma garrafa aberta para preparação de doses não pode ser posteriormente vendida como uma garrafa fechada.
- **RN06:** A abertura de uma garrafa para venda de doses deve ser registrada como uma saída do estoque.
- **RN07:** Nas vendas fiadas, devem ser registrados os produtos retirados e o valor pendente.
- **RN08:** Uma venda pode possuir mais de um produto.
- **RN09:** Os preços dos produtos devem estar disponíveis para consulta.
- **RN10:** Os produtos recebidos devem ser armazenados após a conferência da entrega.

## 5. Dicionário de Dados Conceitual (Preliminar)

### Entidade: Produto

| Atributo | Descrição | Regra | Exemplo fictício |
|---|---|---|---|
| id_produto | Identificação do produto | Deve identificar cada produto de forma única | 001 |
| nome | Nome do produto | Deve permitir identificar o produto | Refrigerante |
| categoria | Categoria do produto | Deve indicar o grupo ao qual pertence | Bebidas |
| preco | Preço de venda | Deve representar o valor de venda do produto | R$ 8,00 |

### Entidade: Fornecedor

| Atributo | Descrição | Regra | Exemplo fictício |
|---|---|---|---|
| id_fornecedor | Identificação do fornecedor | Deve identificar cada fornecedor | 001 |
| nome | Nome do fornecedor | Deve identificar o fornecedor | Fornecedor Exemplo |

### Entidade: Compra

| Atributo | Descrição | Regra | Exemplo fictício |
|---|---|---|---|
| id_compra | Identificação da compra | Deve identificar cada compra | 001 |
| data_compra | Data da compra | Deve registrar quando ocorreu a compra | 15/09/2026 |
| quantidade | Quantidade comprada | Deve representar a quantidade adquirida | 20 |

### Entidade: Venda

| Atributo | Descrição | Regra | Exemplo fictício |
|---|---|---|---|
| id_venda | Identificação da venda | Deve identificar cada venda | 001 |
| data_venda | Data da venda | Deve registrar quando ocorreu a venda | 15/09/2026 |
| valor_total | Valor total da venda | Deve representar o total da venda | R$ 35,00 |

### Entidade: Venda_Fiada

| Atributo | Descrição | Regra | Exemplo fictício |
|---|---|---|---|
| id_fiado | Identificação da venda fiada | Deve identificar cada registro | 001 |
| valor_pendente | Valor que ficou pendente | Deve representar o valor devido | R$ 20,00 |
| data | Data do registro | Deve indicar quando ocorreu | 15/09/2026 |

### Entidade: Movimentacao_Estoque

| Atributo | Descrição | Regra | Exemplo fictício |
|---|---|---|---|
| id_movimentacao | Identificação da movimentação | Deve identificar cada movimentação | 001 |
| tipo | Tipo da movimentação | Deve indicar entrada ou saída | Entrada |
| quantidade | Quantidade movimentada | Deve representar a quantidade movimentada | 10 |
| data | Data da movimentação | Deve registrar quando ocorreu | 15/09/2026 |

> O dicionário de dados é preliminar e poderá ser ajustado conforme a evolução da modelagem e a validação das informações levantadas na pesquisa de campo.

## 6. Modelagem Conceitual (Entidades, Atributos, Relacionamentos)

A modelagem conceitual foi elaborada a partir das informações levantadas durante a pesquisa de campo.

As principais entidades identificadas inicialmente são:

- **Produto**
- **Fornecedor**
- **Compra**
- **Venda**
- **Venda_Fiada**
- **Movimentacao_Estoque**

Os relacionamentos representam as principais operações realizadas pela organização, como a compra de produtos de fornecedores, a movimentação dos produtos no estoque e a realização de vendas.

As entidades, atributos e relacionamentos poderão ser ajustados durante a validação do modelo conceitual.

## 7. Diagrama Entidade-Relacionamento (DER)

O Diagrama Entidade-Relacionamento será apresentado nesta seção após a finalização e validação da modelagem conceitual.

## 8. Justificativa Técnica

A modelagem foi desenvolvida considerando os processos identificados durante a pesquisa de campo.

A utilização da entidade **Produto** permite organizar as informações dos itens comercializados pela adega. A entidade **Fornecedor** representa os fornecedores responsáveis pelo fornecimento das mercadorias.

As entidades **Compra** e **Venda** representam operações importantes da organização, enquanto **Movimentacao_Estoque** permite representar as entradas e saídas de produtos.

A modelagem também considera situações específicas identificadas na pesquisa, como as vendas fiadas e a abertura de garrafas para preparação de doses.

Dessa forma, o modelo busca representar de maneira organizada as principais informações e operações observadas na organização, servindo como base para uma futura implementação de sistema.

## 9. Uso de Inteligência Artificial

A Inteligência Artificial foi utilizada como ferramenta de apoio durante o desenvolvimento do trabalho.

Foi utilizada para auxiliar na organização das informações obtidas na pesquisa de campo, revisão da escrita, estruturação dos requisitos, regras de negócio, dicionário de dados e modelagem conceitual.

As informações utilizadas como base para o projeto foram obtidas a partir da pesquisa realizada na organização. A Inteligência Artificial foi utilizada como apoio, sendo necessário revisar e validar as sugestões de acordo com a realidade observada.

## Critérios Atitudinais (20%)

O desenvolvimento do projeto envolve a participação dos integrantes do grupo na pesquisa de campo, levantamento de informações, discussão das necessidades da organização e construção da modelagem conceitual.

As decisões relacionadas ao sistema devem ser discutidas e validadas pelo grupo com base nas informações obtidas durante a pesquisa.

## Resumo dos Pesos

| Item | Peso |
|---|---:|
| Caracterização da Organização | — |
| Processos de Negócio | — |
| Requisitos do Sistema | — |
| Regras de Negócio | — |
| Dicionário de Dados Conceitual | — |
| Modelagem Conceitual | — |
| DER e Justificativa Técnica | 20% |
| Critérios Atitudinais | 20% |
