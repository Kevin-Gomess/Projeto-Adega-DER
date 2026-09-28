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
- Cadastro e consulta de produtos e preços;
- Controle de compras;
- Venda de produtos;
- Registro de vendas fiadas;
- Controle de produtos retirados em vendas fiadas;
- Abertura de garrafas para venda de doses;
- Controle das movimentações de entrada e saída do estoque.

No recebimento de mercadorias, os produtos são conferidos individualmente para verificar as quantidades recebidas. Após a conferência, os produtos são organizados no espaço destinado ao estoque.

Nas vendas comuns, os produtos são entregues ao cliente após o pagamento, porém atualmente não existe um registro detalhado de cada item vendido. Nas vendas fiadas, os produtos retirados e o valor devido são registrados para posterior controle.

Quando uma garrafa é aberta para utilização na venda de doses, ela deixa de poder ser comercializada como uma garrafa fechada. Dessa forma, essa situação representa uma saída de estoque.

Os fluxos dos principais processos serão apresentados nos fluxogramas disponibilizados na pasta correspondente deste projeto.

## 3. Requisitos do Sistema

### 3.1 Requisitos Funcionais

**RF01 — Cadastro de produtos:**  
O sistema deverá permitir cadastrar produtos comercializados pela organização.

**RF02 — Consulta de produtos:**  
O sistema deverá permitir consultar os produtos cadastrados e suas informações.

**RF03 — Registro de compras:**  
O sistema deverá permitir registrar as compras realizadas com fornecedores.

**RF04 — Registro de entrada de estoque:**  
O sistema deverá registrar a entrada dos produtos recebidos nas compras.

**RF05 — Registro de saída de estoque:**  
O sistema deverá registrar as saídas de produtos decorrentes das vendas.

**RF06 — Registro de movimentação de estoque:**  
O sistema deverá permitir controlar as movimentações de entrada e saída dos produtos.

**RF07 — Registro de vendas:**  
O sistema deverá permitir registrar as vendas realizadas.

**RF08 — Registro de vendas fiadas:**  
O sistema deverá permitir registrar os produtos retirados em vendas fiadas e os respectivos valores pendentes.

**RF09 — Registro de abertura de garrafas para doses:**  
O sistema deverá registrar a abertura de garrafas destinadas à venda de doses como uma movimentação de saída de estoque.

**RF10 — Consulta de estoque:**  
O sistema deverá permitir consultar a quantidade disponível dos produtos.

**RF11 — Consulta de preços:**  
O sistema deverá permitir consultar os preços dos produtos cadastrados.

**RF12 — Cadastro e consulta de fornecedores:**  
O sistema deverá permitir registrar e consultar os fornecedores relacionados às compras.

### 3.2 Requisitos Não Funcionais

**RNF01 — Usabilidade:**  
O sistema deverá possuir uma interface simples e de fácil utilização, considerando a rotina de um estabelecimento de pequeno porte.

**RNF02 — Desempenho:**  
As consultas e registros realizados no sistema deverão apresentar resposta adequada para utilização durante o atendimento.

**RNF03 — Segurança:**  
As informações registradas no sistema deverão possuir controle de acesso adequado para evitar alterações indevidas.

**RNF04 — Integridade dos dados:**  
O sistema deverá manter a consistência das informações registradas, principalmente nos dados relacionados a produtos, vendas, compras e estoque.

**RNF05 — Disponibilidade:**  
O sistema deverá estar disponível para utilização durante o período de funcionamento do estabelecimento.

## 4. Regras de Negócio

**RN01 — Conferência de mercadorias:**  
Os produtos recebidos dos fornecedores devem ser conferidos antes de serem armazenados.

**RN02 — Entrada de estoque:**  
A entrada de mercadorias recebidas em uma compra deve gerar uma movimentação de entrada no estoque.

**RN03 — Saída por venda:**  
A realização de uma venda deve representar uma movimentação de saída dos produtos correspondentes.

**RN04 — Venda com múltiplos produtos:**  
Uma venda poderá conter mais de um produto.

**RN05 — Venda fiada:**  
Quando uma venda for realizada de forma fiada, devem ser registrados os produtos retirados ,valor que permanece pendente o nome da pessoa e a data da venda realizada de forma de fiado.

**RN06 — Abertura de garrafa:**  
Uma garrafa aberta para preparação de doses não poderá posteriormente ser considerada uma garrafa fechada disponível para venda.

**RN07 — Saída para doses:**  
A abertura de uma garrafa destinada à venda de doses deve ser registrada como uma saída de estoque.

**RN08 — Controle de preços:**  
Os produtos devem possuir informações de preço para consulta no momento da venda.

**RN09 — Controle de quantidades:**  
As quantidades recebidas dos fornecedores devem ser conferidas antes do armazenamento.

## 5. Dicionário de Dados Conceitual (Preliminar)

O dicionário de dados conceitual será desenvolvido separadamente, conforme solicitado na atividade, utilizando HTML.

O documento apresentará as entidades e seus respectivos atributos, contendo a descrição de cada informação, regras relacionadas e exemplos fictícios para representar os dados.

O arquivo será disponibilizado separadamente neste projeto como **dicionario-dados.html**.

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

## 11. Compra

- id_compra (PK)
- id_fornecedor (FK)
- data_compra
- valor_total

## 12. Item da Compra

- id_item_compra (PK)
- id_compra (FK)
- id_produto (FK)
- quantidade
- preco_unitario
- subtotal

## 13. Funcionário

- id_funcionario (PK)
- nome

## 14. Fornecedor

- id_fornecedor (PK)
- nome
- contato

## 7. Diagrama Entidade-Relacionamento (DER)

O Diagrama Entidade-Relacionamento será apresentado na forma visual, representando as entidades, seus atributos, relacionamentos e respectivas cardinalidades.

O arquivo do DER será disponibilizado na pasta **Modelagem** deste projeto.

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
