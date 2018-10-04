# Welcome to Lornch Ablademy!

Note: `Before running your tests and after running migrations, be sure to run rake db:test:prepare`

## Part 1
  * For Part 1 we are going to focus on building our schema!

  Create the migrations to build a schema, and models to represent the following data and object relationships:

```
#### Students

* A student must have name
* A student can attend many clinics

#### Clinics

* Must have a title
* Must have a speaker
* Can optionally have a description
* Can have many comments
* Can have many students

#### Comments

* Must have an asker
* Must have a body
* Belongs to a single clinic
```

In this case, the asker is just a string value with someone's name, and does not refer to the Student class.

# None-Core

## Part 2
  * For Part 2 we will run our specs one at a time and get our code to pass!  Our erb templates and our routes have been pre-built... but how do we query for our necessary data???
  * utilize pry in testing environment and in development (via `pry -r ./app.rb`) to poke around and look at our methods, associations, validation

## Part 3
  * Seed your development database with a Seeds file!  open up your app and poke around and make sure it works as you expect

## Extra Notes
  * This TDD is for practice to see errors when things aren't set up correctly on the model level for ActiveRecord, as we get more comfortable you should also feel comfortable doing this as a part of making the tables and models and testing it with pry and seed data
