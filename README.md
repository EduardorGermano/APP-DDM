# APP Garçom

Projeto desenvolvido em Flutter com foco em estudos sobre interface gráfica, navegação entre telas, formulários, listas e persistência de dados utilizando SQLite.

O aplicativo simula um sistema simples de gerenciamento para bares e restaurantes, permitindo o controle de mesas, produtos, vendas e funcionários. Durante o desenvolvimento foram aplicados conceitos de Programação Orientada a Objetos (POO), rotas, formulários, validações, ListView, ListTile e organização de telas no Flutter.

## Funcionalidades Desenvolvidas

- Cadastro de mesas
- Cadastro de produtos
- Cadastro de funcionários
- Controle de vendas
- Fechamento de venda
- Listagem de produtos
- Edição de produtos
- Navegação entre telas utilizando rotas
- Interface padronizada utilizando Cards, ListView e AppBar

## Tecnologias Utilizadas

- Flutter
- Dart
- SQLite
- Sqflite
- Path

## Estrutura do Projeto

O projeto foi organizado utilizando múltiplas telas e separação de responsabilidades, contendo:
- Models
- DAO
- Repository
- Conexão com banco de dados
- Rotas
- Widgets e formulários

## Relatorio do Dia 11/05/2026

### Pré-requisitos
- 2 CRUD simples
- 2 CRUD com associação

### Datas
- 25/05/2026 — Desenvolvimento do código
- 01/06/2026 — Vídeo explicando o código

---

# Relatório — Aula 11/05/2026

Durante a aula foram estudados conceitos relacionados às dependências no Flutter e à persistência de dados. As dependências foram apresentadas como bibliotecas externas utilizadas para adicionar funcionalidades aos projetos, sendo gerenciadas pelo sistema pub através do site pub.dev. Também foi explicado como avaliar um pacote antes de utilizá-lo, observando fatores como popularidade, documentação, atualizações e confiabilidade. Como exemplo, foi apresentado o pacote sqflite, utilizado para persistência local com SQLite no Flutter. Além disso, foram reforçadas boas práticas, como evitar dependências desnecessárias e compreender o funcionamento das bibliotecas antes de utilizá-las.

Outro tema importante foi a persistência de dados, definida como a capacidade de armazenar informações mesmo após o fechamento do aplicativo. Foram abordados os tipos de persistência local, remota e sincronizada. A persistência local armazena dados no próprio dispositivo, enquanto a remota utiliza servidores e APIs. Já a sincronização mantém os dados consistentes entre aplicativo e servidor. A aula destacou ainda a importância de possuir base técnica para compreender como ocorre o salvamento, consulta, alteração e exclusão de dados, permitindo utilizar frameworks e Inteligência Artificial de forma mais consciente.

Também foram apresentados os principais elementos necessários para implementar persistência em aplicações, como conexão, SQL, models, DAO e Repository. A conexão é responsável por controlar o acesso ao banco de dados, enquanto o SQL foi dividido em DDL, utilizado para definir estruturas do banco, e DML, utilizado para manipular os dados através de comandos como INSERT, SELECT, UPDATE e DELETE. O Model representa entidades da aplicação, o DAO organiza o acesso ao banco e o Repository trabalha em um nível mais alto, decidindo de onde os dados serão obtidos.

Por fim, a aula mostrou exemplos práticos de fluxo entre telas no Flutter para cadastro, listagem, edição e atualização de dados. Foram demonstrados recursos como DropdownButton, Navigator.pushNamed e passagem de parâmetros entre telas. Também foi explicado como atualizar listas automaticamente após salvar ou editar informações. Esses exemplos ajudaram a demonstrar como a interface do aplicativo se integra com a persistência de dados e com a organização do código dentro do Flutter.