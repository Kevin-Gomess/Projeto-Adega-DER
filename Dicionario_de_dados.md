<!DOCTYPE html>
<html>
<head>
    <title>Dicionário de Dados</title>
</head>

<body>

<h1>Dicionário de Dados - Adega do Tonho (Preliminar)</h1>

<h2>CATEGORIA</h2>
<table border="1">
<tr><th>Atributo</th><th>Descrição</th><th>Regra</th></tr>
<tr><td>id_categoria</td><td>ID da categoria</td><td>Único</td></tr>
<tr><td>nome</td><td>Nome da categoria</td><td>Obrigatório</td></tr>
</table>

<h2>ESTOQUE</h2>
<table border="1">
<tr><th>Atributo</th><th>Descrição</th><th>Regra</th></tr>
<tr><td>id_estoque</td><td>ID do estoque</td><td>Único</td></tr>
<tr><td>id_produto</td><td>Produto</td><td>Deve existir</td></tr>
<tr><td>quantidade</td><td>Quantidade disponível</td><td>Maior que 0</td></tr>
<tr><td>localizacao</td><td>Local do produto</td><td>Obrigatório</td></tr>
</table>

<h2>PRODUTO</h2>
<table border="1">
<tr><th>Atributo</th><th>Descrição</th><th>Regra</th></tr>
<tr><td>id_produto</td><td>ID do produto</td><td>Único</td></tr>
<tr><td>nome</td><td>Nome do produto</td><td>Obrigatório</td></tr>
<tr><td>preco_venda</td><td>Preço do produto</td><td>Não negativo</td></tr>
<tr><td>id_categoria</td><td>Categoria</td><td>Deve existir</td></tr>
</table>

<h2>FUNCIONARIO</h2>
<table border="1">
<tr><th>Atributo</th><th>Descrição</th><th>Regra</th></tr>
<tr><td>id_funcionario</td><td>ID do funcionário</td><td>Único</td></tr>
<tr><td>nome</td><td>Nome do funcionário</td><td>Obrigatório</td></tr>
</table>

<h2>VENDA</h2>
<table border="1">
<tr><th>Atributo</th><th>Descrição</th><th>Regra</th></tr>
<tr><td>id_venda</td><td>ID da venda</td><td>Único</td></tr>
<tr><td>data_venda</td><td>Data da venda</td><td>Obrigatória</td></tr>
<tr><td>valor_total</td><td>Valor da venda</td><td>Maior que 0</td></tr>
<tr><td>id_funcionario</td><td>Funcionário responsável</td><td>Deve existir</td></tr>
</table>

<h2>ITEM_VENDA</h2>
<table border="1">
<tr><th>Atributo</th><th>Descrição</th><th>Regra</th></tr>
<tr><td>id_item_venda</td><td>ID do item</td><td>Único</td></tr>
<tr><td>id_venda</td><td>Venda</td><td>Deve existir</td></tr>
<tr><td>id_produto</td><td>Produto vendido</td><td>Deve existir</td></tr>
<tr><td>quantidade</td><td>Quantidade</td><td>Maior que 0</td></tr>
<tr><td>preco_unitario</td><td>Preço por unidade</td><td>Não negativo</td></tr>
<tr><td>subtotal</td><td>Total do item</td><td>Quantidade × preço</td></tr>
</table>

<h2>PAGAMENTO</h2>
<table border="1">
<tr><th>Atributo</th><th>Descrição</th><th>Regra</th></tr>
<tr><td>id_pagamento</td><td>ID do pagamento</td><td>Único</td></tr>
<tr><td>id_venda</td><td>Venda</td><td>Deve existir</td></tr>
<tr><td>forma_pagamento</td><td>Forma de pagamento</td><td>Obrigatória</td></tr>
<tr><td>valor_pago</td><td>Valor pago</td><td>Maior que 0</td></tr>
<tr><td>data_pagamento</td><td>Data do pagamento</td><td>Obrigatória</td></tr>
</table>

<h2>CLIENTE</h2>
<table border="1">
<tr><th>Atributo</th><th>Descrição</th><th>Regra</th></tr>
<tr><td>id_cliente</td><td>ID do cliente</td><td>Único</td></tr>
<tr><td>nome</td><td>Nome do cliente</td><td>Obrigatório</td></tr>
<tr><td>limite_fiado</td><td>Limite do fiado</td><td>Não negativo</td></tr>
</table>

<h2>FIADO</h2>
<table border="1">
<tr><th>Atributo</th><th>Descrição</th><th>Regra</th></tr>
<tr><td>id_fiado</td><td>ID do fiado</td><td>Único</td></tr>
<tr><td>id_cliente</td><td>Cliente</td><td>Deve existir</td></tr>
<tr><td>data_fiado</td><td>Data do fiado</td><td>Obrigatória</td></tr>
<tr><td>valor_total</td><td>Valor total</td><td>Maior que 0</td></tr>
</table>

<h2>ITEM_FIADO</h2>
<table border="1">
<tr><th>Atributo</th><th>Descrição</th><th>Regra</th></tr>
<tr><td>id_item_fiado</td><td>ID do item</td><td>Único</td></tr>
<tr><td>id_fiado</td><td>Fiado</td><td>Deve existir</td></tr>
<tr><td>id_produto</td><td>Produto</td><td>Deve existir</td></tr>
<tr><td>quantidade</td><td>Quantidade</td><td>Maior que 0</td></tr>
<tr><td>preco_unitario</td><td>Preço por unidade</td><td>Não negativo</td></tr>
</table>

<h2>PAGAMENTO_FIADO</h2>
<table border="1">
<tr><th>Atributo</th><th>Descrição</th><th>Regra</th></tr>
<tr><td>id_pagamento_fiado</td><td>ID do pagamento</td><td>Único</td></tr>
<tr><td>id_fiado</td><td>Fiado</td><td>Deve existir</td></tr>
<tr><td>valor_pago</td><td>Valor pago</td><td>Maior que 0</td></tr>
<tr><td>data_pagamento</td><td>Data do pagamento</td><td>Obrigatória</td></tr>
</table>

<h2>COMPRA</h2>
<table border="1">
<tr><th>Atributo</th><th>Descrição</th><th>Regra</th></tr>
<tr><td>id_compra</td><td>ID da compra</td><td>Único</td></tr>
<tr><td>id_fornecedor</td><td>Fornecedor</td><td>Deve existir</td></tr>
<tr><td>id_funcionario</td><td>Funcionário</td><td>Deve existir</td></tr>
<tr><td>data_compra</td><td>Data da compra</td><td>Obrigatória</td></tr>
<tr><td>valor_total</td><td>Valor total</td><td>Maior que 0</td></tr>
</table>

<h2>ITEM_COMPRA</h2>
<table border="1">
<tr><th>Atributo</th><th>Descrição</th><th>Regra</th></tr>
<tr><td>id_item_compra</td><td>ID do item</td><td>Único</td></tr>
<tr><td>id_compra</td><td>Compra</td><td>Deve existir</td></tr>
<tr><td>id_produto</td><td>Produto</td><td>Deve existir</td></tr>
<tr><td>quantidade</td><td>Quantidade</td><td>Maior que 0</td></tr>
<tr><td>preco_unitario</td><td>Preço por unidade</td><td>Não negativo</td></tr>
<tr><td>subtotal</td><td>Total do item</td><td>Quantidade × preço</td></tr>
</table>

<h2>FORNECEDOR</h2>
<table border="1">
<tr><th>Atributo</th><th>Descrição</th><th>Regra</th></tr>
<tr><td>id_fornecedor</td><td>ID do fornecedor</td><td>Único</td></tr>
<tr><td>nome</td><td>Nome do fornecedor</td><td>Obrigatório</td></tr>
<tr><td>contato</td><td>Contato</td><td>Obrigatório</td></tr>
</table>

<h2>MOVIMENTACAO_ESTOQUE</h2>
<table border="1">
<tr><th>Atributo</th><th>Descrição</th><th>Regra</th></tr>
<tr><td>id_movimentacao</td><td>ID da movimentação</td><td>Único</td></tr>
<tr><td>id_produto</td><td>Produto</td><td>Deve existir</td></tr>
<tr><td>id_funcionario</td><td>Funcionário</td><td>Deve existir</td></tr>
<tr><td>tipo_movimentacao</td><td>Entrada ou saída</td><td>Valor permitido</td></tr>
<tr><td>quantidade</td><td>Quantidade</td><td>Maior que 0</td></tr>
<tr><td>motivo</td><td>Motivo da movimentação</td><td>Obrigatório</td></tr>
<tr><td>data_movimentacao</td><td>Data da movimentação</td><td>Obrigatória</td></tr>
</table>

</body>
</html>[dicionario_organizado.html](https://github.com/user-attachments/files/32941631/dicionario_organizado.html)

