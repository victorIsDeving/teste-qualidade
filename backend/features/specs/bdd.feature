#language: pt
@teste-backend
Funcionalidade: Verificar e imprimir chave
    Verificar a existência de um campo
    Dentro de um JSON retornado por um endpoint
    Para imprimir um elemento do campo verificado
Cenário: Verificar campo e imprimir elemento
    Dado o endereço do endpoint
    Quando realizar uma requisição
    Então o JSON retornado deve conter a chave especificada
    E imprimir um elemento aleatório do campo
