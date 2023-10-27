# Exerc-cios-DDLeDML
"Exercício de DDL e DML em Banco de Dados SQL EXERCICIO 1 "
![image](https://github.com/ByancaMatos01/Exerc-cios-DDLeDML/assets/122841376/90dd795f-dbc5-4fe4-9539-c6a0a09556c5)
Criar as tabelas da forma que foram diagramadas, obedecendo as seguintes restrições:
A coluna users_id da tabela associativa é FK da coluna id, tabela users
A coluna projects_id da tabela associativa é FK da coluna id, tabela projects
A coluna date da tabela projects deve verificar se a data é posterior que 01/09/2014.
Caso contrário, o registro não deve ser inserido
A PK de projects deve ser de auto incremento, iniciando em 10001, com incremento de
1
A PK de users deve ser de auto incremento, iniciando em 1, com incremento de 1
O valor padrão da coluna password da tabela users, deverá ser 123mudar
A coluna username da tabela users deve ter restrição de unicidade.

Modificar a coluna username da tabela Users para varchar(10)
Modificar a coluna password da tabela Users para varchar(8)
Inserir os dados abaixo:
![image](https://github.com/ByancaMatos01/Exerc-cios-DDLeDML/assets/122841376/fb0aba82-0e74-4df1-b152-a5d164acc706)
![image](https://github.com/ByancaMatos01/Exerc-cios-DDLeDML/assets/122841376/793f6cc8-3228-49bb-8a81-059c631deed3)
Considerar as situações:
- O projeto de Manutenção atrasou, mudar a data para 12/09/2014
- O username de aparecido (usar o nome como condição de mudança) está feio, mudar para
Rh_cido
- Mudar o password do username Rh_maria (usar o username como condição de mudança)
para 888@*, mas a condição deve verificar se o password dela ainda é 123mudar
- O user de id 2 não participa mais do projeto 10002, removê-lo da associativa


