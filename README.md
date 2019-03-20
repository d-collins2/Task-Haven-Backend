# Trello: Back End

This Rails app was deisgned to handle the database and API for my Trello clone. 

## Contents

- [Essential Gems](#essentual-gmes)
- [Installation](#installation)
- [Models](#models)

## Essential Gems

This app was created by running ```rails new backend --api --database=postgresql``` , which prepared the application to perform as an API and to be configured for postgreSQL databases. [json](https://github.com/flori/json) which allows us to parse and generate JSON.[active_model_serializers](https://github.com/rails-api/active_model_serializers/tree/v0.9.3) is used to create custom JSON responses. [bcrypt](https://github.com/codahale/bcrypt-ruby) allows me to store a user's password securely through a hashing algorithm. [jwt](https://github.com/jwt/ruby-jwt/) is used to create a token which is used to authenticate a user upon login. 

## Installation
