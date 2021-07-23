# README

## This is an API made using Ruby on Rails technology!

To run the application have Ruby and Rails installed on your machine and use the following commands:
## Install the gems that the project uses
```
bundle install
```

## Run the application on localhost:3000
```
rails s
```

# Some examples for consuming the API in the REST pattern
Use some technology that makes HTTP requests (Postman, Insomnia, Curl...) to consume the API:

## To be able to consume the API you need a token with the 'Authorization' header with at least 10 characters of your choice.
![Imgur](https://i.imgur.com/BRfZa4b.png)

## URL localhost:3000/users
### Register user / Method POST

Example body:
```
{
	"name":"Vinicius",
	"email": "vinicius@hotmail.com",
	"password": "123456!7"
}
```

Example with curl:
```
curl -d '{"name":"vini", "email":"teste@teste.com", "password":"123456!7"}' -H "Authorization: 1234567890" -H "Content-Type: application/json" -X POST http://localhost:3000/users
```

## URL localhost:3000/publishing_companies
### Register publisher / Method POST


Example body:
```
{
	"name":"RELX Group"
}
```

### List publishers / Method GET

Example response:
```
[
    {
        "id": 1,
        "name": "Brasil",
        "created_at": "2021-07-23T03:13:15.592Z",
        "updated_at": "2021-07-23T03:13:15.592Z"
    },
    {
        "id": 2,
        "name": "RELX Group",
        "created_at": "2021-07-23T13:36:03.279Z",
        "updated_at": "2021-07-23T13:36:03.279Z"
    }
]
```
## URL localhost:3000/books
### Register book / Method POST

Example body:
```
{
  "genre": "Poesia",
  "author": "Vinicius de Morais",
  "pages": 32,
  "grade": 9,
  "title": "Livro de Poesia",
  "read": true,
  "publishing_company_id": 1
}
```
### List book / Method GET

Example response:
```
[
    {
        "id": 1,
        "genre": "Poesia",
        "author": "Vinicius de Morais",
        "pages": 32,
        "grade": 9,
        "title": "Livro de Poesia",
        "read": true,
        "publishing_company_id": 1,
        "created_at": "2021-07-23T04:24:49.313Z",
        "updated_at": "2021-07-23T04:24:49.313Z",
        "token": "3b05161529ed896e404a4c26184f00d5"
    },
    {
        "id": 2,
        "genre": "Poesia",
        "author": "Vinicius de Morais",
        "pages": 32,
        "grade": 9,
        "title": "Livro de Poesia 2",
        "read": true,
        "publishing_company_id": 1,
        "created_at": "2021-07-23T05:54:08.058Z",
        "updated_at": "2021-07-23T05:54:08.058Z",
        "token": "3b05161529ed896e404a4c26184f00d5"
    },
    {
        "id": 3,
        "genre": "Poesia",
        "author": "Vinicius de Morais 3",
        "pages": 32,
        "grade": 9,
        "title": "Livro de Poesia",
        "read": true,
        "publishing_company_id": 1,
        "created_at": "2021-07-23T13:45:58.984Z",
        "updated_at": "2021-07-23T13:45:58.984Z",
        "token": "3b05161529ed896e404a4c26184f00d5"
    }
]
```

# This is a study project

