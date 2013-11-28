source 'https://rubygems.org'

gem 'rails', '3.2.3'
#Add gem for PostgreSQL 25/11/13
gem 'pg', '0.12.2'
#Add gem for Bootstrap framework 28/11/13
gem 'bootstrap-sass', '2.0.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#Added NR 15/11/13
group :development, :test do
	#gem 'sqlite3', '1.3.5' Replaced by gem 'pg'
	gem 'rspec-rails', '2.9.0'
	#Added listing 3.33 26/11/13
	gem 'guard-rspec', '0.5.5'
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
	gem 'rspec-rails', '2.9.0'
	gem 'capybara', '1.1.2'
	#Added a load of stuff for Guard & Spork 26/11/13
	gem 'rb-fchange', '0.0.5'
	gem 'rb-notifu', '0.0.4'
	gem 'win32console', '1.3.0'
	#Commented out 'guard-spork' because “fork” isn’t implemented on windows
	#gem 'guard-spork', '0.3.2'
	#gem 'spork', '0.9.0'
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
