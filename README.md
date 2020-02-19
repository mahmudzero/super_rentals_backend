# README

HOW THIS WORKS:
Theres a controller
  `app/controllers/api/v1/rental_units_controller.rb`
  The controller handles how the data is returned when
    a request is received
  Whats happening:
    1: getting all rentalunits
    2: mapping over them, creating a JSON object for each
      one that matches the JSON object that the frontend
      expects
    3: returning the JSON

There are migrations
  db/migrations
    Any time we change what a table looks like,
      or add a new table, a migration is created
    Gotta run `rake db:migrate` after each migration
      file is created to ensure the schema is updated

  somewhat related
    there are seeds, used to populate the database with
      data... for testing
    after the seeds file, `db/seeds.rb` is updated,
      you must run `rake db:seed`

Theres the route
  `config/routes.rb`
  which tells us what function to call when a request is
    received at a certain url, in our case we call the
    index function from
    `app/controllers/api/v1/rental_inits_controller.rb`

Theres the model file
  `app/models/rental_unit.rb`
  which I have yet to touch

Theres the schema file
  `db/schema.rb`
  which uses ActiveRecord (orm) to make the SQL queries
    for us
