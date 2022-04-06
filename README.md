# README

This is my app for citizen.

# Local Testing
## Starting MySQL
`brew services start mysql`

## Restarting MySQL
`brew services restart mysql`

## Rails
## Database Initialization

`bin/rails generate scaffold Question question_number:integer question:text answer:text question_vn:text answer_vn:text`

`bin/rails generate scaffold QuestionAudio question_id:integer question_audio:blob answer_audio:blob`

`rake db:create db:migrate db:seed`


# Front-End
## WebPack
`rails webpacker:install`
`webpacker.yml` for webpacker configuration

## Bootstrap
`yarn add bootstrap`
`yarn add @popperjs/core`

## Cleanup
`bin/rails assets:clobber`
`bin/rails webpacker:compile`
`bin/rails server`
