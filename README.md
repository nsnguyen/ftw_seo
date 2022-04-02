# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

start mysql
`brew services start mysql`

restart mysql
`brew services restart mysql`

* Database creation
`rake db:create`

create Question model
`bin/rails generate model Question id:integer question_number:integer question:text answer:text`

* Database initialization


* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
