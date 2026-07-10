# IA Flutter - Persistência de Dados

##O que é persistência de dados em aplicativos Flutter e por que é importante?

Persistência de dados é a capacidade de armazenar informações de forma permanente no dispositivo, permitindo que elas permaneçam disponíveis mesmo após o aplicativo ser fechado ou reiniciado.

Ela é importante porque melhora a experiência do usuário, evitando que informações sejam perdidas toda vez que o aplicativo é encerrado. Alguns exemplos são salvar configurações, dados de login, preferências e pequenas informações utilizadas pelo aplicativo.

---

## Quais são os diferentes tipos de dados que podem ser persistidos em um aplicativo Flutter?

Em Flutter é possível persistir diversos tipos de dados, como:

- Preferências do usuário;
- Nome e sobrenome;
- Configurações do aplicativo;
- Listas de informações;
- Arquivos locais;
- Bancos de dados locais;
- Dados obtidos da internet para utilização offline.

A escolha depende da quantidade e da complexidade das informações que serão armazenadas.

---

## O que é o pacote SharedPreferences em Flutter e como ele funciona?

O SharedPreferences é um pacote utilizado para armazenar pequenos dados localmente utilizando pares de chave e valor (key/value).

Seu funcionamento é simples: o aplicativo grava uma informação utilizando uma chave e, posteriormente, consegue recuperar esse valor através da mesma chave.

É muito utilizado para armazenar:

- Nome do usuário;
- Configurações;
- Tema do aplicativo;
- Preferências do usuário.

---

## Quais são as limitações do SharedPreferences em termos de armazenamento de dados?

As principais limitações são:

- Armazena apenas dados simples;
- Não é indicado para grandes quantidades de informações;
- Não substitui um banco de dados;
- Não possui relacionamentos entre dados;
- Não deve ser utilizado para informações sensíveis.

---

## Quando devo usar SharedPreferences em vez de outras opções de persistência de dados?

O SharedPreferences deve ser utilizado quando o aplicativo precisa armazenar pequenas informações, como:

- Configurações;
- Preferências do usuário;
- Nome do usuário;
- Tema escuro ou claro;
- Dados simples.

Quando o projeto necessita armazenar muitas informações ou realizar consultas mais complexas, é recomendado utilizar bancos de dados como SQLite, Hive ou Isar.

---

## Como posso lidar com erros ao usar SharedPreferences?

Algumas boas práticas são:

- Verificar se o valor existe antes de utilizá-lo;
- Utilizar valores padrão quando necessário;
- Tratar possíveis valores nulos;
- Utilizar tratamento de exceções quando necessário.

Esses cuidados ajudam a evitar falhas durante a execução do aplicativo.

---

## Quais são as melhores práticas para usar SharedPreferences de forma eficiente?

As principais boas práticas são:

- Armazenar apenas dados simples;
- Utilizar nomes de chaves padronizados;
- Não salvar grandes volumes de dados;
- Centralizar o acesso ao SharedPreferences em uma classe de serviço;
- Verificar se os dados existem antes de utilizá-los;
- Evitar armazenar informações sensíveis.
