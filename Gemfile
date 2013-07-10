source 'https://rubygems.org'

gem 'pg',             '~> 0.12'
gem 'rails',          '~> 3.2.13'
gem 'unicorn',        '~> 4.6.2'

group :assets do
  gem 'jquery-rails',   '~> 2.2.1'
  gem 'haml-rails'
  gem 'compass-rails', '>= 1.0.3'
  gem "susy", "~> 1.0.8"
  gem 'compass-colors'
  gem 'sassy-buttons'
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'backbone-on-rails'
  gem 'gumby-rails'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'vagrant'
  gem 'capistrano',     '~> 2.14.2'
  gem 'capistrano-unicorn', :require => false
  gem 'rvm-capistrano', '~> 1.3.0'
  gem 'guard-minitest'
  gem 'rb-inotify', :require => false
  gem 'rb-fsevent', :require => false
  gem 'rb-fchange', :require => false
end

group :development, :test do
  gem "minitest-rails"
  gem "minitest-rails-capybara"
  # spork no bueno yet...
  gem 'spork-testunit'
  gem 'turn'
  gem "mocha", :require => false
end
