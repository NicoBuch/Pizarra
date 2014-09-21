source 'http://rubygems.org'

ruby '2.1.2'

gem 'rails', '4.0.5'
gem 'pg'
gem 'app_configuration'
gem 'unicorn'
gem 'nokogiri'
gem 'kaminari', github: 'amatsuda/kaminari'
gem 'sinatra'
gem 'less-rails'
gem 'less-rails-bootstrap'
gem 'therubyracer'
gem 'twitter-bootstrap-rails', github: 'seyhunak/twitter-bootstrap-rails', branch: 'bootstrap3'
gem 'date_validator'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'loadjs'
gem 'inherited_resources'
gem 'jquery-turbolinks'
gem 'devise'
gem 'devise_security_extension'
gem 'httparty'
gem 'rest_client'

#File managment
gem 'paperclip', github: 'thoughtbot/paperclip'
gem 'rmagick', github: 'rmagick/rmagick'

# Active Admin
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'formtastic', github: 'justinfrench/formtastic'

# Enables Slim templates
gem 'slim-rails'

# Background Jobs
gem 'sidekiq'

# Authorization
gem 'pundit'

group :assets do
  gem 'sass-rails',   '~> 4.0.0'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'rails-erd'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rubocop'
  gem 'guard', github: 'guard/guard'
  gem 'guard-rspec', github: 'guard/guard-rspec'
  gem 'guard-livereload', github: 'guard/guard-livereload'
  gem 'guard-rubocop', github: 'yujinakayama/guard-rubocop'
end

group :debugging, :development, :test do
  gem 'pry'
  gem 'byebug'
  gem 'pry-byebug'
  gem 'pry-nav'
  gem 'pry-stack_explorer'
end

group :test, :development do
  gem 'rack-test'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'cucumber-rails', github: 'cucumber/cucumber-rails', require: false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
  gem 'timecop'
  gem 'poltergeist'
  gem 'launchy'
  gem 'simplecov'
end

group :production, :staging do
  gem 'rails_12factor'
end
