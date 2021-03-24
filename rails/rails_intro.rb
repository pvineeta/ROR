Rails:

rails is a web development framewrok writen in ruby lang
Rails works on MVC architecture and uses ORM(Object relational mapping) tech

Object relational mapping:
  Every model class name will represent a table and every method of the class will be treated as column of the table

  Browser - > request ->

  [
    \ request
    Application - routes.rb - > /products => products#index

    Controller    -> Views  -> response

    Model
    \
    Database
  ]


ex : localhost:3000/products


As a rails developer below is the first command which you hit in terminal
rails new avi_store
Gemfile - have all the list of libraries/plugins
To install a new gem add this into your Gemfile and run below command
bundle install

to start your rails app , hit below command
rails s or rails server

hit below to see all available routes
rake routes or rails routes

############################

create a controller to talk to your app
Note: Controller name must be plural
rails g/generate controller products index edit show


Important:
rails gives 5 route to privilage you.

index
  - a function in controller and template in views
  - To display all records of a table

new
  - a function in controller and template in views
  - A template to create a form

create
  - a function in controller
  - receive values from new and save into DB

edit
  - a function in controller and template in views
  - A template to hold a edit form

update
  - a function in controller
  - receive values from edit and save into DB

show
  - a function in controller and template in views
  - To display individual record from a table

delete
  - a function in controller
  - To delete a record


To get all above rounts in one line ,put below command into routes
resources: controller_name
ex: resources: products
