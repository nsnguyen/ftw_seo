# README

This is my app for citizen. Multiple Choice.

# Local Testing
## Starting MySQL
`brew services start mysql`

## Restarting MySQL
`brew services restart mysql`

## Database Initialization
`bin/rails generate scaffold Question question_number:integer question:text answer:text question_vn:text answer_vn:text`

`bin/rails generate scaffold QuestionAudio question_number:integer question_audio:blob answer_audio:blob`

`rake db:create db:migrate db:seed`


# Front-End
`app/packs/application.scss to add custom scss stuff.`

## WebPack
`rails webpacker:install`
`webpacker.yml` for webpacker configuration
`bootstrap_js_files.js` injects all boostrap imports

## Bootstrap
`yarn add bootstrap`
`yarn add @popperjs/core`

## Cleanup
`bin/rails assets:clobber`
`bin/rails webpacker:compile`
`bin/rails server`
