# Task Haven - Back End

This Rails app was deisgned to handle the database and API for my Trello clone. 

## Contents

- [Essential Gems](#essentual-gmes)
- [Installation](#installation)
- [Models](#models)

## Essential Gems

This app was created by running ```rails new backend --api --database=postgresql``` , which prepared the application to perform as an API and to be configured for postgreSQL databases. [Json](https://github.com/flori/json) which allows us to parse and generate JSON. [Active Model_Serializers](https://github.com/rails-api/active_model_serializers/tree/v0.9.3) is used to create custom JSON responses. [BCrypt](https://github.com/codahale/bcrypt-ruby) allows me to store a user's password securely through a hashing algorithm. [Jwt](https://github.com/jwt/ruby-jwt/) is used to create a token which is used to authenticate a user upon login. 

## Installation 

To get started with this application, fork and clone the respository to your hard drive. ```CD``` into the project folder and run ```bundle install```. Once the gems have been installed, run ```rake db:setup``` to establish and seed the database. Make sure you have [postgreSQL](https://postgresapp.com/) installed and already running. Run ```rails start``` once the database has been set up to host the backend on your local server. If you're hosting both the front-end and back-end applications locally, also make sure you change the necessary URL variables in the React application so that changes will reflect your personal database. 

## Models
