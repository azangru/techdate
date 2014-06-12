ruby "2.1.1"

source 'https://rubygems.org'

gem 'rails', '3.2.17'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.2.1'
  gem 'sprockets-rails', '=2.0.0.backport1'
  gem 'sprockets', '=2.2.2.backport2'
  gem 'sass-rails', github: 'guilleiguaran/sass-rails', branch: 'backport'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# Added specifically for our app

gem 'haml-rails'
gem 'devise'
gem 'cancan'
gem 'ransack'
gem 'carrierwave', "0.9.0"
gem 'rmagick'
gem 'bootstrap-sass', '~> 3.1.1'
gem 'will_paginate', '~> 3.0'

group :production do
  gem 'rails_12factor'
end


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'


group :development, :test do
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'better_errors', git: "https://github.com/charliesome/better_errors.git", branch: "master"
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'hirb'
  gem 'letter_opener'
end