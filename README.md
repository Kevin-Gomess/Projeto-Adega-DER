# Entrega 1 — Modelo Conceitual (DER)
### Modelagem de um sistema de gestão 


- **Nomes dos alunos e RGM**
- Kevin Gomes 47796006 

## 1. Caracterização da Organização

A organização escolhida para o desenvolvimento deste trabalho é a Adega do Tonho, uma adega de bairro de pequeno porte que atua no comércio de bebidas, alimentos, produtos para narguilé, cigarros e outros itens.

O estabelecimento existe há aproximadamente 4 anos e conta com cerca de 3 a 4 pessoas envolvidas nas atividades, de acordo com os dias de funcionamento. O horário de atendimento é das 13h00 às 23h00, de segunda a quinta-feira, e das 13h00 à 00h00, de sexta-feira a domingo.

Entre os principais produtos comercializados estão refrigerantes, cervejas, bebidas alcoólicas, doces, salgadinhos, sucos, , produtos básicos de mercearia, itens para narguilé, cigarros e isqueiros.

A adega possui uma área na parte da frente destinada ao atendimento e à exposição dos produtos, enquanto a parte dos fundos é utilizada para o armazenamento do estoque. Também existem bebidas separadas para a preparação de doses.

Atualmente, parte do controle das informações é realizada manualmente. Os preços dos produtos são consultados em um caderno ou por meio de etiquetas. Nas vendas comuns, não é realizado um registro individual de cada produto comercializado, sendo registrado principalmente o recebimento do pagamento. Já nas vendas fiadas, existe um controle dos produtos retirados e dos respectivos valores pendentes.

As compras realizadas com fornecedores são registradas pelo celular, contendo os produtos e suas respectivas quantidades. Quando ocorre uma entrega, os itens são conferidos individualmente antes de serem armazenados. A identificação de produtos que estão acabando é feita principalmente pela observação das prateleiras e do estoque disponível.

Durante a rotina do estabelecimento, ocorrem diferenças entre as quantidades anotadas e o estoque real, o que dificulta o acompanhamento preciso dos produtos disponíveis. Além disso, existe certa dificuldade para identificar quais produtos possuem maior volume de vendas, já que as vendas comuns não são registradas individualmente por item.

A pesquisa foi realizada por um dos integrantes do grupo, pois tem experiência e participação direta na rotina da Adega do Tonho. Atua como funcionário e gerente, tendo uma participação próxima à administração do estabelecimento, sendo praticamente o terceiro responsável pela adega. Acompanha atividades como atendimento, vendas, organização e conferência do estoque, compras, contato com fornecedores e controle de fiado.

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
O sistema deve permitir consultar a quantidade disponível de cada produto em estoque, considerando a localização geral informada para o armazenamento.

-RF04 — Registro de entrada de produtos
O sistema deve permitir registrar a entrada de produtos no estoque, informando o produto, a quantidade e a data do recebimento.

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

# Entidades do Modelo Conceitual

O modelo conceitual da Adega do Tonho é composto por 15 entidades, definidas a partir das informações levantadas na pesquisa de campo.

## 1. Produto
Representa os produtos comercializados pela adega.

**Atributos:**
- id_produto (PK)
- nome
- preco_venda
- id_categoria (FK)

## 2. Categoria
Representa as categorias utilizadas para organizar os produtos.

**Atributos:**
- id_categoria (PK)
- nome

## 3. Estoque
Representa o estoque disponível de cada produto.

**Atributos:**
- id_estoque (PK)
- id_produto (FK)
- quantidade
- localizacao

## 4. Movimentação de Estoque
Registra as entradas, saídas e ajustes realizados no estoque.

**Atributos:**
- id_movimentacao (PK)
- id_produto (FK)
- id_funcionario (FK)
- tipo_movimentacao
- quantidade
- motivo
- data_movimentacao

## 5. Venda
Representa uma venda realizada na adega.

**Atributos:**
- id_venda (PK)
- data_venda
- valor_total
- id_funcionario (FK)

## 6. Item da Venda
Representa cada produto incluído em uma venda.

**Atributos:**
- id_item_venda (PK)
- id_venda (FK)
- id_produto (FK)
- quantidade
- preco_unitario
- subtotal

## 7. Pagamento
Registra os pagamentos realizados nas vendas.

**Atributos:**
- id_pagamento (PK)
- id_venda (FK)
- forma_pagamento
- valor_pago
- data_pagamento

**Formas de pagamento:** Pix, dinheiro, crédito e débito.

## 8. Cliente
Representa os clientes que possuem cadastro para utilização do fiado.

**Atributos:**
- id_cliente (PK)
- nome
- limite_fiado

## 9. Fiado
Representa uma compra realizada pelo cliente para pagamento posterior.

**Atributos:**
- id_fiado (PK)
- id_cliente (FK)
- data_fiado
- valor_total
- status

## 10. Item do Fiado
Representa cada produto incluído em uma compra realizada no fiado.

**Atributos:**
- id_item_fiado (PK)
- id_fiado (FK)
- id_produto (FK)
- quantidade
- preco_unitario
- subtotal

## 11. Pagamento do Fiado
Registra os pagamentos realizados para quitar valores de compras no fiado.

**Atributos:**
- id_pagamento_fiado (PK)
- id_fiado (FK)
- valor_pago
- data_pagamento

## 12. Compra
Representa uma compra de produtos realizada pela adega junto a um fornecedor.

**Atributos:**
- id_compra (PK)
- id_fornecedor (FK)
- id_funcionario (FK)
- data_compra
- valor_total

## 13. Item da Compra
Representa cada produto incluído em uma compra realizada com um fornecedor.

**Atributos:**
- id_item_compra (PK)
- id_compra (FK)
- id_produto (FK)
- quantidade
- preco_unitario
- subtotal

## 14. Funcionário
Representa os funcionários responsáveis pelas operações da adega.

**Atributos:**
- id_funcionario (PK)
- nome

## 15. Fornecedor
Representa as empresas ou pessoas que fornecem produtos para a adega.

**Atributos:**
- id_fornecedor (PK)
- nome
- contato

## 7. Diagrama Entidade-Relacionamento (DER)

<img width="1448" height="1086" alt="finall5" src="https://github.com/user-attachments/assets/9fd72d8a-af0e-4d5b-ba8a-1e98f05bd6f1" />



O arquivo do DER será disponibilizado na pasta **Modelagem** , no arquivo ** DER_Adega.md** deste projeto.

## 8. Justificativa Técnica

Para montar o modelo da Adega do Tonho, eu tentei separar as informações de acordo com as principais atividades que acontecem no local, como cadastro dos produtos, controle do estoque, vendas, compras, pagamentos e controle de fiado. A ideia foi deixar cada entidade com uma função específica, para não colocar várias informações diferentes dentro da mesma entidade.
Escolhi a entidade Produto porque ela é uma das principais informações do sistema. É nela que ficam os dados básicos dos produtos vendidos pela adega, como nome, preço de venda e categoria. A entidade Categoria foi criada separadamente porque os produtos precisam ser organizados por categorias. No DER, uma categoria pode estar relacionada a vários produtos, por isso foi usado o relacionamento 1:N entre Categoria e Produto.
Também foi criada a entidade Estoque, pois a quantidade e a localização do produto são informações relacionadas ao controle do estoque. Dessa forma, o produto fica responsável pelas suas informações básicas, enquanto o estoque registra a quantidade disponível e onde o produto está guardado. Também foi criada a entidade Movimentação de Estoque para registrar as movimentações que acontecem no estoque. Ela está relacionada ao produto e ao funcionário responsável pela movimentação.
Para as vendas, foram usadas as entidades Venda e Item_Venda. Isso foi feito porque uma venda pode ter vários produtos. A entidade Venda guarda as informações gerais da venda, como data, valor total e funcionário responsável. Já Item_Venda guarda os produtos daquela venda, junto com quantidade, preço unitário e subtotal. Assim, fica mais fácil representar uma venda com vários produtos sem precisar repetir vários campos dentro de Venda.
A entidade Pagamento foi separada de Venda para guardar as informações do pagamento, como forma de pagamento, valor pago e data. No DER, Venda e Pagamento estão ligados pelo relacionamento possui, com cardinalidade 1:1. A escolha dessa separação ajuda a deixar as informações da venda e do pagamento organizadas em suas próprias entidades.
A parte de fiado também foi separada porque possui informações próprias. A entidade Cliente representa os clientes que possuem cadastro, enquanto a entidade Fiado registra os valores que ficaram para pagamento posterior. No DER, um cliente pode estar relacionado a vários registros de fiado, por isso foi usada a cardinalidade 1:N.
A entidade Item_Fiado foi criada para representar os produtos que fazem parte de cada fiado. Ela possui a quantidade e o preço unitário do produto. Dessa forma, um mesmo fiado pode ter vários produtos. Também foi criada a entidade Pagamento_Fiado para registrar os pagamentos feitos referentes ao fiado. No DER, um fiado pode ter vários pagamentos, por isso o relacionamento foi representado como 1:N.
Para as compras feitas pela adega, foram utilizadas as entidades Compra, Item_Compra e Fornecedor. A entidade Compra representa a compra de forma geral, enquanto Item_Compra mostra os produtos que foram comprados, suas quantidades, preços e subtotais. A entidade Fornecedor foi separada porque as compras precisam estar relacionadas aos fornecedores. No DER, um fornecedor pode estar relacionado a várias compras.
A entidade Funcionário também foi criada separadamente porque o funcionário pode participar de diferentes atividades. No modelo, ele aparece relacionado às vendas, movimentações de estoque e compras. Assim, não é necessário repetir os dados do funcionário dentro de cada uma dessas entidades.
As cardinalidades foram escolhidas de acordo com a quantidade de registros que podem estar relacionados. Por exemplo, uma categoria pode ter vários produtos, uma venda pode ter vários itens de venda, um fiado pode ter vários itens e pagamentos, e uma compra pode ter vários itens. Por isso, nesses casos foi utilizada a relação 1:N. Já no relacionamento entre Venda e Pagamento, o DER apresenta a cardinalidade 1:1, então essa foi mantida no modelo.
Também foi mantido o relacionamento entre Estoque e Venda que aparece no DER, representado pela relação realiza. A ideia é manter no modelo a ligação entre o controle do estoque e as vendas realizadas, já que as vendas estão relacionadas à movimentação dos produtos disponíveis.
No geral, a ideia da modelagem foi separar as informações para que cada entidade tivesse uma função mais clara, evitando colocar tudo em uma única tabela. Os relacionamentos foram usados para ligar essas informações e mostrar como as atividades da adega estão relacionadas. Como esse é o modelo conceitual, a intenção foi representar de uma forma organizada e fácil de entender como funciona o sistema da Adega do Tonho.

## 9. Uso de Inteligência Artificial

                             ##Uso de Inteligência Artificial

Durante o desenvolvimento do projeto, foi utilizado o ChatGPT — OpenAI como ferramenta de apoio. A IA foi utilizada principalmente para organizar informações fornecidas pelo grupo, estruturar documentos, revisar conteúdos, identificar processos e auxiliar na modelagem conceitual.
As informações sobre a Adega do Tonho foram obtidas por meio da pesquisa de campo realizada pelo grupo. A IA não foi utilizada como fonte para inventar informações sobre a organização.
Observação: os prompts abaixo foram registrados com base nos comandos utilizados durante o desenvolvimento do projeto, podendo apresentar pequenas adaptações de redação para fins de documentação.    

                    1. Organização inicial do projeto
Item	Registro
Ferramenta e etapa	ChatGPT — organização inicial do projeto e definição das partes do trabalho.
Motivação	Organizar as informações coletadas e entender o que deveria ser colocado em cada parte da atividade.

-Prompt: utilizados	“Estou fazendo um trabalho de faculdade sobre DER baseado em uma pesquisa de campo realizada em uma adega. Preciso organizar as informações coletadas e saber o que deve ficar em cada parte do trabalho. Quero que o conteúdo fique natural e não pareça robótico.”

-Resposta: recebida	A IA sugeriu uma organização do projeto com pastas para Pesquisa de Campo, Evidências, Fluxogramas, Requisitos, DER, Dicionário de Dados, README e Uso de IA.
Fontes consultadas e verificadas	A estrutura sugerida foi comparada com os itens solicitados na atividade da faculdade.
Trechos rejeitados ou corrigidos	Foram ajustadas partes da organização quando não correspondiam exatamente ao que havia sido solicitado na atividade.
Justificativa da escolha final	A estrutura foi mantida porque facilitava a organização dos arquivos e a localização de cada etapa do projeto.
Reflexão crítica	A IA ajudou na organização, mas não conhecia as exigências específicas da atividade. Por isso, as sugestões precisaram ser comparadas com as orientações recebidas pelo grupo.

                       2. Organização da pesquisa de campo
Item	Registro
Ferramenta e etapa	ChatGPT — preparação e revisão das perguntas da pesquisa de campo.
Motivação	Verificar se as perguntas preparadas pelo grupo eram suficientes para entender vendas, estoque, compras, fornecedores, clientes e pagamentos.

-Prompt: utilizados	“Já tenho algumas perguntas preparadas para a pesquisa de campo que vou fazer em uma adega. Pode revisar as perguntas e me dizer se falta alguma coisa importante para entender vendas, estoque, compras, fornecedores, clientes e pagamentos? Quero apenas sugestões de perguntas, sem inventar informações sobre a adega.”

-Resposta: recebida	A IA sugeriu perguntas relacionadas aos processos de vendas, estoque, compras, fornecedores, pagamentos e fiado.
Fontes consultadas e verificadas	As perguntas foram avaliadas pelo grupo antes da realização da pesquisa. As respostas utilizadas posteriormente vieram da própria pesquisa de campo.
Trechos rejeitados ou corrigidos	Perguntas consideradas repetitivas ou que não seriam úteis para o DER foram retiradas ou simplificadas.
Justificativa da escolha final	Foram mantidas perguntas que ajudavam a descobrir informações relevantes para os processos e para a modelagem do sistema.
Reflexão crítica	A IA poderia sugerir perguntas genéricas para qualquer comércio. Foi necessário selecionar somente as que faziam sentido para a realidade da adega.

                             3. Organização das informações coletadas
Item	Registro
Ferramenta e etapa	ChatGPT — organização das respostas obtidas na pesquisa de campo.
Motivação	Separar as informações reais por assunto para facilitar a elaboração dos documentos do projeto.

-Prompt: utilizados	“Já tenho as respostas da pesquisa de campo da adega. Vou colocar abaixo as informações que foram realmente observadas. Pode me ajudar a separar e organizar essas informações por vendas, estoque, compras, fornecedores, clientes, fiado e pagamentos? Não acrescente informações que não estejam no texto.”

-Resposta: recebida	As informações foram separadas em categorias como vendas, pagamentos, estoque, compras, fornecedores e fiado.
Fontes consultadas e verificadas	As respostas foram comparadas diretamente com as informações coletadas durante a pesquisa de campo.
Trechos rejeitados ou corrigidos	Qualquer informação que não estivesse presente na pesquisa foi descartada ou corrigida pelo grupo.
Justificativa da escolha final	Foi utilizada somente a informação que poderia ser confirmada pela pesquisa realizada na organização.
Reflexão crítica	A IA pode interpretar uma informação e tentar completá-la com conhecimento geral. Por isso, foi necessário verificar cada informação antes de utilizá-la.

                           4. Identificação dos processos de negócio
Item	Registro
Ferramenta e etapa	ChatGPT — identificação e organização dos processos de negócio.
Motivação	Organizar os processos observados na adega em uma sequência lógica para posteriormente criar os fluxogramas.

-Prompt: utilizados	“Já identifiquei alguns processos da adega a partir da pesquisa de campo, como venda, compra e controle de estoque. Pode me ajudar a organizar esses processos em uma sequência lógica para montar os fluxogramas? Use somente as informações que eu fornecer e não invente etapas.”

-Resposta: recebida	Foram organizadas sequências para processos como venda, compra e controle de estoque.
Fontes consultadas e verificadas	Os processos foram comparados com o funcionamento descrito na pesquisa de campo.
Trechos rejeitados ou corrigidos	Etapas que não correspondiam ao funcionamento atual da adega foram removidas ou ajustadas.
Justificativa da escolha final	Foram mantidas somente as etapas compatíveis com o processo observado.
Reflexão crítica	A IA tende a completar processos comerciais com etapas comuns de outros estabelecimentos. Por isso, foi necessário separar o processo real da proposta futura de sistema.

                          5. Requisitos funcionais
Item	Registro
Ferramenta e etapa	ChatGPT — elaboração e organização dos requisitos funcionais.
Motivação	Transformar os problemas e necessidades identificados na pesquisa em funções que poderiam ser realizadas pelo sistema proposto.

-Prompt: utilizados	“Já levantei os principais problemas da adega e algumas funções que o sistema poderia ter. Pode revisar e organizar essas ideias em requisitos funcionais, mantendo apenas funções relacionadas ao que foi identificado na pesquisa? Quero que cada requisito fique simples e objetivo.”

-Resposta: recebida	A IA organizou as necessidades em requisitos como cadastro de produtos, controle de estoque, vendas, pagamentos, fiado, fornecedores, compras e funcionários.
Fontes consultadas e verificadas	Os requisitos foram comparados com a pesquisa, processos e problemas identificados pelo grupo.
Trechos rejeitados ou corrigidos	Funções sem relação direta com a realidade ou necessidade identificada foram retiradas.
Justificativa da escolha final	Foram mantidos os requisitos que ajudavam a solucionar problemas encontrados na pesquisa.
Reflexão crítica	A IA poderia sugerir funcionalidades comuns em sistemas comerciais, mesmo que não fossem necessárias para este projeto.

                          6. Requisitos não funcionais
Item	Registro
Ferramenta e etapa	ChatGPT — elaboração dos requisitos não funcionais.
Motivação	Organizar características esperadas do futuro sistema, como facilidade de uso, rapidez e segurança.

-Prompt: utilizados	“Já defini algumas características que o futuro sistema precisa ter, como ser simples, rápido e fácil de usar. Pode me ajudar a organizar isso como requisitos não funcionais para o projeto da adega, sem criar funcionalidades novas?”

-Resposta: recebida	Foram sugeridos requisitos relacionados à facilidade de uso, rapidez, integridade, segurança, disponibilidade, backup e compatibilidade.
Fontes consultadas e verificadas	Os requisitos foram comparados com as necessidades observadas durante a pesquisa.
Trechos rejeitados ou corrigidos	Características que não tinham relação com o contexto do projeto foram evitadas.
Justificativa da escolha final	Foram mantidos requisitos que poderiam contribuir para o funcionamento adequado do sistema proposto.
Reflexão crítica	Requisitos não funcionais são mais abstratos e podem ser facilmente generalizados pela IA. Por isso, foram adaptados ao contexto do projeto.

                          7. Regras de negócio
Item	Registro
Ferramenta e etapa	ChatGPT — organização das regras de negócio.
Motivação	Transformar as regras observadas na organização em regras que pudessem ser utilizadas na modelagem.

-Prompt: utilizados	“Já identifiquei algumas regras durante a pesquisa, principalmente sobre vendas, estoque, fiado, compras e fornecedores. Pode me ajudar a organizar essas regras de negócio e verificar se elas estão coerentes com os processos que já levantei? Não invente regras que não tenham relação com a pesquisa.”

-Resposta: recebida	Foram organizadas regras relacionadas a vendas, estoque, fiado, compras, fornecedores e movimentações.
Fontes consultadas e verificadas	As regras foram comparadas com as respostas obtidas na pesquisa de campo.
Trechos rejeitados ou corrigidos	Regras que não poderiam ser confirmadas pela pesquisa foram ajustadas ou descartadas.
Justificativa da escolha final	Foram mantidas as regras relacionadas diretamente aos processos do projeto.
Reflexão crítica	A IA pode interpretar como regra uma prática que apenas foi mencionada como possibilidade. Foi necessário diferenciar fatos observados de regras propostas para o sistema.

                              8. Identificação das entidades
Item	Registro
Ferramenta e etapa	ChatGPT — levantamento das entidades do DER.
Motivação	Verificar se as entidades inicialmente identificadas eram suficientes para representar os processos da adega.

-Prompt: utilizados	“Já comecei a montar as entidades do DER com base na pesquisa da adega. Até agora identifiquei Produto, Categoria, Estoque, Venda, Compra, Cliente e Fornecedor. Pode analisar o que já tenho e me ajudar a identificar se estão faltando entidades importantes para representar os processos? Não quero criar entidades sem relação com a pesquisa.”

-Resposta: recebida	A IA sugeriu a análise de entidades relacionadas a vendas, itens, pagamentos, fiado, compras, estoque, funcionários e fornecedores.
Fontes consultadas e verificadas	As entidades foram comparadas com os processos, requisitos e regras já levantados.
Trechos rejeitados ou corrigidos	Entidades que não tinham justificativa dentro do projeto foram evitadas.
Justificativa da escolha final	O modelo foi consolidado com 15 entidades relacionadas aos processos identificados.
Reflexão crítica	A quantidade de entidades não foi usada como objetivo isolado. Cada entidade precisava ter relação com o funcionamento representado pelo modelo.

                    9. Levantamento e revisão dos atributos
Item	Registro
Ferramenta e etapa	ChatGPT — definição e revisão dos atributos das entidades.
Motivação	Verificar se os atributos escolhidos estavam coerentes com as 15 entidades e com os processos já definidos.

-Prompt: utilizados	“Já defini as 15 entidades do DER. Pode revisar os atributos que coloquei em cada entidade e verificar se eles estão coerentes com os processos e regras que já levantei? Quero manter o modelo conceitual simples e não adicionar informações sem necessidade.”

-Resposta: recebida	A IA analisou os atributos e apontou ajustes relacionados às chaves, referências e informações necessárias para cada entidade.
Fontes consultadas e verificadas	Os atributos foram comparados com o restante da modelagem.
Trechos rejeitados ou corrigidos	Atributos considerados desnecessários ou sem relação com o modelo foram retirados.
Justificativa da escolha final	Foram mantidos os atributos necessários para representar as entidades e seus relacionamentos.
Reflexão crítica	A IA pode sugerir atributos comuns em sistemas de banco de dados que não foram observados na pesquisa.

                     10. Relacionamentos e cardinalidades
Item	Registro
Ferramenta e etapa	ChatGPT — revisão dos relacionamentos e cardinalidades.
Motivação	Conferir se as relações entre as entidades representavam corretamente os processos definidos.

-Prompt: utilizados	“Já montei as 15 entidades do meu DER e alguns relacionamentos. Pode revisar as ligações e cardinalidades com base nos atributos e nos processos que já defini? Quero entender principalmente as relações entre Produto e Estoque, Venda e Pagamento, Cliente e Fiado e Produto e os itens das vendas e do fiado.”

-Resposta: recebida	Foram analisadas as relações e cardinalidades entre as entidades.
Fontes consultadas e verificadas	As cardinalidades foram comparadas com os atributos, regras de negócio e processos do projeto.
Trechos rejeitados ou corrigidos	Relacionamentos ou cardinalidades incompatíveis com o modelo foram corrigidos.
Justificativa da escolha final	As cardinalidades finais foram definidas de acordo com a lógica dos processos representados.
Reflexão crítica	Cardinalidades dependem da interpretação das regras do negócio. A IA pode apresentar uma interpretação possível que precisa ser validada pelo grupo.

                      11. Modelagem do fiado
Item	Registro
Ferramenta e etapa	ChatGPT — organização do processo de fiado.
Motivação	Representar no modelo o cliente que compra produtos fiados e realiza pagamentos posteriormente.

-Prompt: utilizados	“Já tenho o processo de fiado identificado na pesquisa. O cliente pode pegar vários produtos e pagar depois, e também pode realizar pagamentos para quitar a dívida. Pode me ajudar a verificar como esse processo pode ser representado nas entidades que já criei, sem misturar o fiado com os pagamentos normais das vendas?”

-Resposta: recebida	A IA ajudou a separar o processo de fiado das vendas com pagamento normal e a estruturar itens e pagamentos do fiado.
Fontes consultadas e verificadas	O processo foi comparado com o funcionamento informado na pesquisa.
Trechos rejeitados ou corrigidos	Foram descartadas estruturas que misturavam o pagamento normal da venda com o pagamento posterior do fiado.
Justificativa da escolha final	O processo foi representado separadamente para manter a modelagem coerente com a realidade pesquisada.
Reflexão crítica	A IA inicialmente pode tratar o fiado como uma simples forma de pagamento, mas a pesquisa mostrou que ele possui controle posterior da dívida.

                                  12. Movimentação de estoque
Item	Registro
Ferramenta e etapa	ChatGPT — definição das movimentações de estoque.
Motivação	Verificar como representar entradas, saídas e ajustes de estoque no modelo.

-Prompt: utilizados	“Já montei o processo de estoque com entrada e saída de produtos. Pode revisar se faz sentido, Quero manter o processo de acordo com a pesquisa.”
-Resposta: recebida	A IA organizou essas situações como possíveis tipos de movimentação de estoque.

Fontes consultadas e verificadas	As situações foram comparadas com o funcionamento descrito na pesquisa.
Trechos rejeitados ou corrigidos	Situações que não correspondiam ao processo informado foram evitadas.
Justificativa da escolha final	Entrada, saída e ajuste foram mantidos por representarem situações identificadas no controle de estoque.
Reflexão crítica	Foi necessário deixar claro que a movimentação representa a proposta de controle do sistema e não significa que a adega atualmente registre tudo dessa forma.

                       13. Revisão geral do DER
Item	Registro
Ferramenta e etapa	ChatGPT — revisão geral do DER.
Motivação	Conferir se as entidades, atributos, chaves e relacionamentos estavam coerentes antes da finalização.

-Prompt: utilizados	“Já finalizei uma versão do DER da Adega do Tonho com 15 entidades. Pode fazer uma revisão geral verificando se todas as entidades possuem os atributos esperados, se as chaves estão coerentes e se os relacionamentos representam o que foi definido no restante do trabalho? Não quero que você crie novas entidades, apenas identifique possíveis problemas.”

-Resposta: recebida	Foram identificados pontos que precisavam ser revisados no DER, incluindo chaves, relacionamentos e cardinalidades.
Fontes consultadas e verificadas	O DER foi comparado com entidades, atributos, requisitos e regras de negócio.
Trechos rejeitados ou corrigidos	Problemas identificados durante a revisão foram corrigidos manualmente pelo grupo.
Justificativa da escolha final	A versão final foi ajustada para manter consistência entre todas as partes do projeto.
Reflexão crítica	A revisão da IA foi utilizada como apoio, mas não foi considerada validação definitiva do modelo.

                       

                      14. Verificação de consistência entre os documentos
Item	Registro
Ferramenta e etapa	ChatGPT — revisão geral dos documentos do projeto.
Motivação	Verificar se processos, requisitos, regras, entidades, atributos e DER apresentavam as mesmas informações.

-Prompt: utilizados	“Já finalizei as principais partes do projeto: processos, requisitos, regras de negócio, entidades, atributos e DER. Pode comparar as informações e apontar se existe alguma diferença entre elas? Quero principalmente verificar se as 15 entidades e os relacionamentos estão sendo utilizados de forma consistente em todo o projeto.”

-Resposta: recebida	A IA comparou as partes do projeto e apontou possíveis diferenças ou pontos que deveriam ser conferidos.
Fontes consultadas e verificadas	Os documentos foram comparados entre si pelo grupo.
Trechos rejeitados ou corrigidos	Informações antigas ou diferentes da versão final foram atualizadas.
Justificativa da escolha final	Foi utilizada a versão mais atual e validada pelo grupo como referência.
Reflexão crítica	A IA pode comparar textos, mas não conhece automaticamente qual versão representa a decisão final do grupo.

                  15. Elaboração do Dicionário de Dados em HTML
Item	Registro
Ferramenta e etapa	ChatGPT — elaboração do Dicionário de Dados em HTML.
Motivação	Criar uma estrutura simples em HTML para documentar as entidades, atributos, descrições, regras e exemplos fictícios.

-Prompt: utilizados	“Quero que você me ajude passo a passo, porque ainda estou aprendendo HTML. Não faça um código muito avançado. Prefiro algo simples, direto e fácil de entender. Quero só um exemplo para eu pegar o caminho e fazer. O código deve ter uma tabela para cada entidade, mantendo o mesmo padrão em todas elas. É importante que você confira se os atributos realmente pertencem às entidades do meu DER e não crie informações que não estejam no modelo. Os exemplos podem ser inventados, mas devem fazer sentido para o funcionamento de uma adega. Depois de analisar o DER que já montei, monte um exemplo de código HTML completo para o Dicionário de Dados, mantendo exatamente as entidades e os atributos definidos no modelo.”

-Resposta: recebida	Foi criada uma estrutura HTML com tabelas para representar as entidades e seus atributos, incluindo descrições, regras e exemplos fictícios.
Fontes consultadas e verificadas	O conteúdo foi comparado diretamente com o DER e com a documentação do projeto.
Trechos rejeitados ou corrigidos	Informações que não pertenciam ao modelo ou que poderiam ser interpretadas como dados reais foram removidas ou alteradas.
Justificativa da escolha final	Foi mantido um código simples para facilitar a compreensão e edição pelo grupo.
Reflexão crítica	A IA pode criar atributos ou exemplos automaticamente quando não recebe uma restrição clara. Por isso, foi reforçada a necessidade de seguir exatamente o DER e utilizar somente exemplos fictícios.

                                16. Revisão do Dicionário de Dados HTML
Item	Registro
Ferramenta e etapa	ChatGPT — revisão do Dicionário de Dados em HTML.
Motivação	Conferir se o Dicionário de Dados estava de acordo com a versão final do DER.

-Prompt: utilizados	“Já tenho o Dicionário de Dados em HTML montado com base no meu DER. Pode revisar o código e verificar se todas as 15 entidades estão presentes, se os atributos estão exatamente de acordo com o modelo e se não existe nenhuma informação inventada? Também quero verificar se as tabelas estão seguindo o mesmo padrão e se os exemplos fictícios fazem sentido para uma adega.”

-Resposta: recebida	A IA realizou uma conferência das entidades, atributos, tabelas e exemplos apresentados no HTML.
Fontes consultadas e verificadas	O Dicionário de Dados foi comparado com a versão final das entidades e atributos do DER.
Trechos rejeitados ou corrigidos	Foram corrigidos atributos, exemplos e informações que não estavam de acordo com o modelo.
Justificativa da escolha final	O conteúdo final foi mantido somente após a comparação com o modelo definido pelo grupo.
Reflexão crítica	A revisão mostrou que pequenas diferenças de nomes de atributos podem gerar inconsistências entre documentos, sendo necessário conferir os nomes exatamente.

                             17. Revisão final do projeto
Item	Registro
Ferramenta e etapa	ChatGPT — revisão final da documentação do projeto.
Motivação	Fazer uma última conferência antes da entrega, procurando contradições ou informações diferentes entre os documentos.

-Prompt: utilizados	“Já finalizei as principais partes do projeto da Adega do Tonho. Pode fazer uma revisão final considerando pesquisa de campo, processos, requisitos, regras de negócio, entidades, atributos, relacionamentos, cardinalidades, DER e Dicionário de Dados? Quero que você apenas aponte possíveis erros, contradições ou informações que precisam ser corrigidas, sem inventar novos dados.”

-Resposta: recebida	A IA realizou uma revisão geral e apontou pontos que deveriam ser conferidos ou corrigidos antes da entrega.
Fontes consultadas e verificadas	Foram utilizados como referência os próprios documentos produzidos pelo grupo e as informações da pesquisa de campo.
Trechos rejeitados ou corrigidos	Informações que não correspondiam à versão final do projeto foram corrigidas ou removidas.
Justificativa da escolha final	A versão final foi definida pelo grupo após revisar as sugestões e comparar com os documentos originais.
Reflexão crítica	A IA foi utilizada como ferramenta de revisão, não como autoridade sobre o projeto. A validação final das informações permaneceu sob responsabilidade do grupo.





                      Reflexão sobre a IA 

A IA serviu como uma ajudante para o grupo , não substituindo cada responsabilidade de cada integrante do grupo mas sim ajudando a melhorar cada parte do trabalho, para que no final esse projeto fique excelente ao todo.
A IA ajudou bastante em cada parte que fez ,para organizar informações, revisar textos, estruturar requisitos, regras de negócio e auxiliar na modelagem conceitual, pois é um tema muito complicado para o grupo o " Banco de Dados " 
O nosso grupo realizou a conferência das sugestões antes de utilizá-las no projeto, principalmente nas entidades, atributos, relacionamentos, cardinalidades, requisitos e Dicionário de Dados, nas principais partes , pois queremos um trabalho bem feito , mesmo tendo dificuldade.

                      

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
