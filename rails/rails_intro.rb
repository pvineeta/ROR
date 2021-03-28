https://guides.rubyonrails.org/getting_started.html

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

to create an instance go to controller file, inside a particular function put @controller name & message.
& then go to view folder & open particular function & write <%= @pagename %>, it will featch the message.


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


############################

Lets create a model

rails g model column_names

rails g model product title description price size

above command will do two things

1. create a class in model folder
2. create a migration file inside db/migrate folder
run the below command to get the table created inside db from step 2
rake db:migrate

To connect to DB use below command
rails c

to see the list of tables use below command
ActiveRecord::Base.connection.tables


To create an entry into table use
Product.create(title: 'TShirt', size: 'M', price: '20', description: 'Mens wear')

Parents of MVC:-
Action controller
Action views
Active records

Gemfile.lock keeps record of all the gems we have currently &
bundle install will only install a new gem or upgrade its version,if its not available in gemfile.lock

Authentication: If you are permitted/allowed to use the service
Gem file name:Devise
Authorisation: If you are permitted to use a service, what privilages you get
Gem file name: Cancan
