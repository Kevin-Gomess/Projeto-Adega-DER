# Entrega 1 — Modelo Conceitual (DER)
### Modelagem de um sistema de gestão de informações para uma organização de pequeno porte

## Metadados
- **Nomes dos alunos e RGM**
  - [Nome do aluno] — [RGM]
  - [Nome do aluno] — [RGM]
  - [Nome do aluno] — [RGM]

## 1. Caracterização da Organização

A organização escolhida para o desenvolvimento do trabalho é uma adega de pequeno porte, que atua no comércio de bebidas, alimentos, produtos para narguilé, cigarros e outros itens.

O estabelecimento existe há aproximadamente 4 anos e possui cerca de 3 a 4 pessoas envolvidas nas atividades, de acordo com os dias de funcionamento. O horário de funcionamento ocorre aproximadamente das 13h até 23h ou 00h.

Entre os principais produtos comercializados estão refrigerantes, cervejas, bebidas alcoólicas, doces, salgadinhos, sucos, miojo, sal, açúcar, leite, produtos para narguilé, cigarros e isqueiros.

O estabelecimento possui uma área de atendimento e exposição dos produtos na parte da frente e uma área destinada ao estoque na parte dos fundos. Também existem bebidas separadas para utilização na preparação de doses.

Atualmente, parte do controle das informações é realizada de forma manual. Os preços dos produtos são consultados em um caderno e, em alguns casos, por etiquetas. As vendas comuns não são registradas individualmente por produto, sendo realizado principalmente o recebimento do pagamento. Já as vendas fiadas possuem um controle dos produtos retirados e do valor que ficou pendente.

As compras realizadas com fornecedores são registradas pelo celular, contendo os produtos e suas respectivas quantidades. Quando ocorre uma entrega, os produtos são conferidos individualmente antes de serem armazenados.

A pesquisa foi realizada com base na observação e levantamento de informações da rotina real do estabelecimento, buscando identificar os processos e as necessidades que poderiam ser atendidas por um sistema de gestão.

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
Quando uma venda for realizada de forma fiada, devem ser registrados os produtos retirados e o valor que permanece pendente.

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

A modelagem conceitual será construída a partir das informações levantadas durante a pesquisa de campo e dos processos identificados na organização.

As principais entidades inicialmente identificadas são:

- **Produto**
- **Fornecedor**
- **Compra**
- **Venda**
- **Movimentação de Estoque**

A entidade **Produto** representa os itens comercializados pela organização e suas informações básicas.

A entidade **Fornecedor** representa os fornecedores responsáveis pelo fornecimento das mercadorias.

A entidade **Compra** representa as aquisições realizadas pela organização.

A entidade **Venda** representa as operações de venda realizadas no estabelecimento.

A entidade **Movimentação de Estoque** representa as entradas e saídas de produtos, permitindo relacionar situações como recebimento de mercadorias, venda de produtos e abertura de garrafas para utilização em doses.

Os atributos, relacionamentos e cardinalidades serão detalhados na modelagem conceitual e no DER.

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
