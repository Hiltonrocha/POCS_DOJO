#encoding: utf-8
#language: pt

Funcionalidade: Gerenciar Usuários no EVA
Eu como usuário administrador
Quero gerenciar novos usuários no EVA
Para que possa cadastrar, editar e excluir usuários


Contexto: Cadastrar um novo usuário
Dado que estou autenticado com usuário com perfil de administrador


Cenário: Cadastrar Usuários
Dado que eu desejo cadastrar um novo usuario
Então devo receber o status 200

Cenário: Consultar um  usuário existente
Dado que eu realize uma consulta de um usuário "Lais"
Então devo receber o status 200