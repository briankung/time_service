source 'https://rubygems.org'
ruby '2.1.1'
#ruby-gemset=time_service

gem 'rails', '4.1.0'
gem 'sqlite3'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'rspec-nc'
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'rb-fsevent' if `uname` =~ /Darwin/
end

group :test do
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'launchy'
  gem 'database_cleaner'
end
