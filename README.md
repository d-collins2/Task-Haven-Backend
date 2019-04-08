# Task Haven - Back End

This Rails app was deisgned to handle the database and API for Task Haven. 
Live Demo - [Here](https://www.youtube.com/watch?v=k06zraOeP7A)

## Contents

- [Essential Gems](#essentual-gmes)
- [Installation](#installation)
- [Models](#models)

## Essential Gems

This app was created by running ```rails new backend --api --database=postgresql``` , which prepared the application to perform as an API and to be configured for postgreSQL databases. [Json](https://github.com/flori/json) which allows us to parse and generate JSON. [Active Model Serializers](https://github.com/rails-api/active_model_serializers/tree/v0.9.3) is used to create custom JSON responses. [BCrypt](https://github.com/codahale/bcrypt-ruby) allows me to store a user's password securely through a hashing algorithm. [JWT](https://github.com/jwt/ruby-jwt/) is used to create a token which is used to authenticate a user upon login. 

## Installation 

To get started with this application, fork and clone the respository to your hard drive. ```CD``` into the project folder and run ```bundle install```. Once the gems have been installed, run ```rake db:setup``` to establish and seed the database. Make sure you have [postgreSQL](https://postgresapp.com/) installed and already running. Run ```rails start``` once the database has been set up to host the backend on your local server. If you're hosting both the front-end and back-end applications locally, also make sure you change the necessary URL variables in the React application so that changes will reflect your personal database. 

## Models

There are 7 models which Task Haven utilizes: 

### Activity 

The ```activity``` model is a join table between a ```user``` instance and a ```task``` instance. When a change occurs to a ```board``` instance an ```activity``` instance is created. A change can be seen as a new ```board``` instance being created, a new ```list``` instance being created or editted, and  a new ```task``` being created or editted.

### Board 

The ```board``` model is associated with the ```team``` instance it belongs to. The ```board``` instance also has many ```lists``` instances which allows for most of the functionallity on the front end. 

### List 

The ```list``` model is asscocited with one ```board``` instance and has many ```task``` instances. When a list is created only current team member can view the ```list``` instance. 

### Task 

The ```task``` model is asscocited with one ```list``` instance. A ```task``` instance is in a many to many relationship with ```users``` to add extra functionality. At the moment, any changes a current user makes to a ```task``` instance whether through the forms or the drag and drop functionality is logged to the back end through a creation of a ```activities``` instance. 

In the future, I wanted to create the ability for team members to exchange ```comments```, set spefic ```task members``` for each task and allow for ```sub-tasks``` on each task. 

### Team 

The ```team``` model allows for all team members access to all boards associated with the team. Team members are not restricted by any validations and can make changes freely to any of the boards associated within the team. A ```team``` instance does however have an admin who is defaulted to the first person who has created the team. The ```user``` who is the admin can make changes to the team name and add or delete members from the team. 

### Team Member

The ```Team Member``` model is the join table between ```Users``` instance and ```Teams```. ```Users``` have access to all of the ```Teams``` boards as long as they are a ```team member```. 

### User 

The ```User``` model handles all aspects of user accounts, including login/signup, and editing information. The Bcrypt and JWT gems handle password encyption in this app. 
