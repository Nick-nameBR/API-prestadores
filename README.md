API-prestadores

Breve descrição do projeto.

## Pré-requisitos

- PHP (8.2)
- Composer
- MySQL
- Postman (para testar as APIs)

## Instalação

1. Clone o repositório:

   ```bash
   git clone https://github.com/Nick-nameBR/API-prestadores

2. Instale as dependências do Composer:
    ```bash
   composer install

3. Copie o arquivo de configuração do ambiente:

    ```bash
    cp .env.example .env
    Configure o arquivo .env com as credenciais de banco de dados.

    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=prestadores_db
    DB_USERNAME=root
    DB_PASSWORD=root

4. Gere a chave da aplicação:

    ```bash
    php artisan key:generate

5. Execute as migrações do banco de dados:

    ```bash
    php artisan migrate

6. Inicie o servidor local:

    ```bash
    php artisan serve

## Documentação Postman

    Link para para a documentação do teste da APi no Postman: https://documenter.getpostman.com/view/36476928/2sA3drGtr5
