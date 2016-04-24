source 'https://rubygems.org'
ruby '2.3.0'

gem 'authem'
gem 'decent_exposure'
gem 'figaro'
gem 'haml-rails'
gem 'jquery-rails'
gem 'newrelic_rpm'
gem 'pg'
gem 'rails', '4.2.5.1'
gem 'rdiscount'
gem 'turbolinks'

group :assets do
  gem 'sass-rails',   '~> 4.0.0'
  gem 'bootstrap-sass'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'rails_12factor'
  gem 'puma'
end

group :development, :test do
  gem 'sqlite3'
  gem 'pry'
  gem 'fabrication'
  gem 'database_cleaner'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'dirty'
  gem 'rspec-rails'
  gem 'capybara'
end
