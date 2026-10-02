# Entrega 1 — Modelo Conceitual (DER)
### Modelagem de um sistema de gestão de informações para uma organização de pequeno porte

## Metadados
- **Nomes dos alunos e RGM**
  -
## 1. Caracterização da Organização

A organização escolhida para o desenvolvimento deste trabalho é a Adega do Tonho, uma adega de bairro de pequeno porte que atua no comércio de bebidas, alimentos, produtos para narguilé, cigarros e outros itens.

O estabelecimento existe há aproximadamente 4 anos e conta com cerca de 3 a 4 pessoas envolvidas nas atividades, de acordo com os dias de funcionamento. O horário de atendimento é das 13h às 23h, de segunda a quinta-feira, e das 13h à meia-noite, de sexta-feira a domingo.

Entre os principais produtos comercializados estão refrigerantes, cervejas, bebidas alcoólicas, doces, salgadinhos, sucos, macarrão instantâneo, produtos básicos de mercearia, itens para narguilé, cigarros e isqueiros.

A adega possui uma área na parte da frente destinada ao atendimento e à exposição dos produtos, enquanto a parte dos fundos é utilizada para o armazenamento do estoque. Também existem bebidas separadas para a preparação de doses.

Atualmente, parte do controle das informações é realizada manualmente. Os preços dos produtos são consultados em um caderno ou por meio de etiquetas. Nas vendas comuns, não é realizado um registro individual de cada produto comercializado, sendo registrado principalmente o recebimento do pagamento. Já nas vendas fiadas, existe um controle dos produtos retirados e dos respectivos valores pendentes.

As compras realizadas com fornecedores são registradas pelo celular, contendo os produtos e suas respectivas quantidades. Quando ocorre uma entrega, os itens são conferidos individualmente antes de serem armazenados. A identificação de produtos que estão acabando é feita principalmente pela observação das prateleiras e do estoque disponível.

Durante a rotina do estabelecimento, ocorrem diferenças entre as quantidades anotadas e o estoque real, o que dificulta o acompanhamento preciso dos produtos disponíveis. Além disso, existe certa dificuldade para identificar quais produtos possuem maior volume de vendas, já que as vendas comuns não são registradas individualmente por item.

A pesquisa foi realizada por mim, com base na minha experiência e participação direta na rotina da Adega do Tonho. Atuo como funcionário e gerente, tendo uma participação próxima à administração do estabelecimento, sendo praticamente o terceiro responsável pela adega. Acompanho atividades como atendimento, vendas, organização e conferência do estoque, compras, contato com fornecedores e controle de fiado.

As informações apresentadas foram levantadas a partir da observação das atividades diárias e do conhecimento dos processos internos, buscando identificar as necessidades reais do negócio e compreender como um sistema de gestão poderia auxiliar na organização das informações, no controle do estoque e no acompanhamento das operações.

## 2. Processos de Negócio

Os principais processos identificados durante o levantamento foram:

- Recebimento de produtos dos fornecedores;
- Conferência das quantidades recebidas;
- Organização e armazenamento dos produtos;
- Consulta e organização de produtos e preços;
- Controle de compras;
- Venda de produtos;
- Registro de vendas fiadas;
- Registro dos produtos retirados em vendas fiadas;
- Abertura de garrafas para venda de doses;
- Controle das movimentações de entrada e saída do estoque.

No recebimento de mercadorias, os produtos são conferidos individualmente para verificar as quantidades recebidas. Após a conferência, os produtos são organizados no espaço destinado ao estoque.

Nas vendas comuns, os produtos são entregues ao cliente após o pagamento, porém atualmente não existe um registro detalhado de cada item vendido. Nas vendas fiadas, os produtos retirados e o valor devido são registrados para posterior controle.

Quando uma garrafa é aberta para utilização na venda de doses, ela deixa de poder ser comercializada como uma garrafa fechada. Dessa forma, essa situação representa uma saída de estoque.

Os fluxos dos principais processos serão apresentados nos fluxogramas disponibilizados na pasta correspondente deste projeto.

## 3. Requisitos do Sistema

                                                 Requisitos Funcionais 


-RF01 — Cadastro de produtos
O sistema deve permitir cadastrar os produtos comercializados pela adega, incluindo nome, categoria e preço.

-RF02 — Consulta de produtos
O sistema deve permitir consultar os produtos cadastrados, seus respectivos preços e as quantidades disponíveis.

-RF03 — Controle de estoque
O sistema deve permitir consultar a quantidade de cada produto disponível na área de venda e no espaço destinado ao estoque dos fundos da adega.

-RF04 — Registro de entrada de produtos
O sistema deve permitir registrar a entrada de produtos recebidos de fornecedores, informando o produto, a quantidade recebida e a data da movimentação.

-RF05 — Registro de saída de produtos
O sistema deve permitir registrar a saída de produtos do estoque, identificando o motivo, como venda, perda, quebra ou vencimento.

-RF06 — Registro de produtos utilizados para doses
O sistema deve permitir registrar como saída do estoque as bebidas abertas para preparação de doses, atualizando a quantidade disponível.

-RF07 — Registro de vendas
O sistema deve permitir registrar as vendas realizadas, incluindo os produtos vendidos, suas respectivas quantidades, os preços unitários e o valor total da venda.

-RF08 — Registro da forma de pagamento
O sistema deve permitir registrar uma ou mais formas de pagamento utilizadas em cada venda, considerando Pix, dinheiro, cartão de crédito e cartão de débito.

-RF09 — Cadastro de clientes que utilizam fiado
O sistema deve permitir cadastrar clientes que realizam compras por meio de fiado, armazenando seus dados de identificação.

-RF10 — Controle de fiado
O sistema deve permitir registrar cada compra realizada por fiado, vinculando o cliente, os produtos adquiridos, as quantidades e o valor total devido.

-RF11 — Controle do limite de fiado
O sistema deve permitir cadastrar e consultar o limite de fiado de cada cliente e impedir a realização de novas compras que ultrapassem o limite disponível.

-RF12 — Cadastro de fornecedores
O sistema deve permitir cadastrar os fornecedores utilizados pela adega, armazenando seus dados de identificação e contato.

-RF13 — Registro de compras
O sistema deve permitir registrar as compras realizadas com fornecedores, incluindo os produtos, suas quantidades, os preços unitários e o valor total da compra.

-RF14 — Consulta de produtos com baixa quantidade
O sistema deve permitir identificar os produtos que estejam com quantidade baixa em estoque ou que necessitem de reposição.

-RF15 — Consulta de produtos com maior saída
O sistema deve permitir consultar os produtos com maior quantidade vendida em determinado período, auxiliando no planejamento de reposição e compras.

-RF16 — Identificação dos funcionários
O sistema deve permitir cadastrar e identificar os funcionários responsáveis pelas operações realizadas, vinculando-os aos registros de vendas, movimentações de estoque e compras.

                                     ## Requisitos Não Funcionais

-RNF01 — Facilidade de uso
O sistema deve possuir uma interface simples e intuitiva, considerando que atualmente os controles são realizados manualmente por meio de caderno e celular.

-RNF02 — Rapidez
O sistema deve apresentar as informações de produtos e estoque de forma rápida, principalmente durante a rotina de atendimento.

-RNF03 — Integridade das informações
O sistema deve manter as informações de produtos, vendas, compras e estoque de forma consistente, evitando registros incorretos que possam causar diferenças na quantidade disponível.

-RNF04 — Segurança
O sistema deve proteger as informações registradas, permitindo acesso às funções de acordo com o nível de autorização definido para cada usuário.

-RNF05 — Disponibilidade
As informações de estoque, produtos, vendas e compras devem estar disponíveis para consulta durante o horário de funcionamento da adega, sempre que forem necessárias.

-RNF06 — Cópia de segurança
O sistema deve permitir a realização de cópias de segurança dos dados para reduzir o risco de perda das informações registradas.

-RNF07 — Compatibilidade
O sistema deve poder ser utilizado em computadores e dispositivos móveis, como celulares, considerando as necessidades da rotina de atendimento da adega.

## 5. Dicionário de Dados Conceitual (Preliminar)

O dicionário de dados conceitual será desenvolvido separadamente, conforme solicitado na atividade, utilizando HTML.

O documento apresentará as entidades e seus respectivos atributos, contendo a descrição de cada informação, regras relacionadas e exemplos fictícios para representar os dados.

O arquivo será disponibilizado separadamente neste projeto como **dicionario_de_dado.md**.

## 6. Modelagem Conceitual (Entidades, Atributos, Relacionamentos)

Produto
Categoria
Estoque
Movimentação de Estoque
Venda
Pagamento
Cliente
Fiado
Fornecedor
Compra
Item da Compra
Funcionário

Entidades + atributos



## 1. Produto

- id_produto (PK)
- nome
- preco_venda
- id_categoria (FK)

## 2. Categoria

- id_categoria (PK)
- nome

## 3. Estoque

- id_estoque (PK)
- id_produto (FK)
- quantidade
- localizacao

## 4. Movimentação de Estoque

- id_movimentacao (PK)
- id_produto (FK)
- id_funcionario (FK)
- tipo_movimentacao
- quantidade
- motivo
- data_movimentacao

## 5. Venda

- id_venda (PK)
- data_venda
- valor_total
- id_funcionario (FK)

## 6. Item da Venda

- id_item_venda (PK)
- id_venda (FK)
- id_produto (FK)
- quantidade
- preco_unitario
- subtotal

## 7. Pagamento

- id_pagamento (PK)
- id_venda (FK)
- forma_pagamento
- valor_pago
- data_pagamento

As formas de pagamento consideradas são Pix, dinheiro, crédito e débito.

## 8. Cliente

- id_cliente (PK)
- nome
- limite_fiado

## 9. Fiado

- id_fiado (PK)
- id_cliente (FK)
- data_fiado
- valor_total
- status

## 10. Item do Fiado

- id_item_fiado (PK)
- id_fiado (FK)
- id_produto (FK)
- quantidade
- preco_unitario
- subtotal

## 11. Pagamento do Fiado

- id_pagamento_fiado (PK)
- id_fiado (FK)
- valor_pago
- data_pagamento

## 12. Compra

- id_compra (PK)
- id_fornecedor (FK)
- id_funcionario (FK)
- data_compra
- valor_total

## 13. Item da Compra

- id_item_compra (PK)
- id_compra (FK)
- id_produto (FK)
- quantidade
- preco_unitario
- subtotal

## 14. Funcionário

- id_funcionario (PK)
- nome

## 15. Fornecedor

- id_fornecedor (PK)
- nome
- contato
## 7. Diagrama Entidade-Relacionamento (DER)

<img width="1448" height="1086" alt="finall5" src="https://github.com/user-attachments/assets/9fd72d8a-af0e-4d5b-ba8a-1e98f05bd6f1" />



O arquivo do DER será disponibilizado na pasta **Modelagem** , no arquivo ** DER_Adega.md** deste projeto.

## 8. Justificativa Técnica

A modelagem proposta foi desenvolvida a partir dos processos identificados durante a pesquisa realizada na organização.

A escolha das entidades busca representar as principais informações necessárias para o controle das atividades observadas, principalmente produtos, fornecedores, compras, vendas e movimentações de estoque.

A utilização de uma entidade específica para movimentação de estoque permite representar diferentes situações identificadas no estabelecimento, como a entrada de produtos recebidos de fornecedores, a saída decorrente de uma venda e a abertura de garrafas para utilização na venda de doses.

A proposta também busca centralizar informações que atualmente são controladas de formas diferentes, como preços registrados em caderno, compras registradas pelo celular e vendas fiadas anotadas separadamente.

Dessa forma, o modelo conceitual procura representar a realidade observada na organização e servir como base para uma futura implementação de um sistema de gestão.

## 9. Uso de Inteligência Artificial

A Inteligência Artificial foi utilizada como ferramenta de apoio durante o desenvolvimento do trabalho, principalmente para auxiliar na organização das informações levantadas, revisão da escrita, identificação de possíveis requisitos, regras de negócio e elementos da modelagem conceitual.

Todas as informações relacionadas à organização foram obtidas a partir do levantamento realizado no estabelecimento. A IA foi utilizada como apoio e as sugestões foram analisadas e adaptadas de acordo com a realidade observada.

| Ferramenta de IA | Finalidade | Como foi utilizada |
|---|---|---|
| ChatGPT | Apoio na organização do trabalho | Auxílio na organização das informações levantadas e estruturação dos requisitos e regras de negócio |
| ChatGPT | Apoio à modelagem | Auxílio na identificação inicial de entidades, atributos e relacionamentos |
| ChatGPT | Revisão textual | Auxílio na revisão e melhoria da clareza dos textos produzidos |

## Critérios Atitudinais (20%)

A equipe deverá demonstrar participação, organização, colaboração e responsabilidade durante o desenvolvimento da atividade.

Também será considerada a participação dos integrantes nas etapas de levantamento de informações, análise, documentação e desenvolvimento da modelagem.

As evidências relacionadas à participação e ao desenvolvimento do trabalho poderão ser apresentadas juntamente com os demais materiais da entrega.

## Resumo dos Pesos

- Caracterização da Organização e evidências: conforme critérios definidos na atividade.
- Processos de Negócio: conforme critérios definidos na atividade.
- Requisitos do Sistema: conforme critérios definidos na atividade.
- Regras de Negócio: conforme critérios definidos na atividade.
- Dicionário de Dados Conceitual: conforme critérios definidos na atividade.
- DER e Justificativa Técnica: **20%**.
- Critérios Atitudinais: **20%**.

A entrega deverá conter os documentos e evidências solicitados, respeitando as orientações apresentadas na atividade.

**Observação:** Não devem ser utilizados dados pessoais reais ou informações sensíveis da organização ou de seus clientes. Quando necessário, devem ser utilizados dados fictícios para exemplificação.
