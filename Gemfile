source 'https://rubygems.org'

gem 'rails', '3.2.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#Added NR 15/11/13
group :development, :test do
	gem 'sqlite3', '1.3.5'
	gem 'rspec-rails', '2.9.0'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.4'
  gem 'coffee-rails', '~> 3.2.2'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.2.3'
end

#gem 'jquery-rails', '2.0.0'
#Changed to install the latest minor release as 2.0.0
#could not be found 
gem 'jquery-rails', '~> 2.0.0'

#Added NR 15/11/13
group :test do
	gem 'capybara', '1.1.2'
end

#Added NR 15/11/13
group :production do
	gem 'pg', '0.12.2'
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
# gem 'ruby-debug19', :require => 'ruby-debug'