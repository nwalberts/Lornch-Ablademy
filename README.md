# Welcome to Laurnch Ablademy!

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
    * Belongs to a single clinics
```

## Part 2
  * For Part 2 we will run our specs one at a time and get our code to pass!  Our erb templates and our routes have been pre-built... but how do we query for our necessary data???
  * utilize pry in testing environment and in development (via `pry -r ./app.rb`) to poke around and look at our methods, associations, validation

## Part 3
  * Seed your development database with a Seeds file!  open up your app and poke around and make sure it works as you expect

## Important notes
  * This TDD is for practice to see errors when things aren't set up correctly on the model level for ActiveRecord, as we get more comfortable you should also feel comfortable doing this as a part of making the tables and models and testing it with pry and seed data
  * Although you have been introduced to the power of ActiveRecord, you should still have familiarity with SQL queries.  
    * After this clinic write a seed file in SQL and pipe it in with `$psql database_name < seeds.sql`, go in with `pry -r ./app.rb` and make sure the data persisted and with the expected relationships
    * Make a good ol' SQL query to find all the clinics that the first student has attended, and test it via `$psql database_name < query.sql`
