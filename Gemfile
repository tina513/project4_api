source 'https://rubygems.org'
ruby '2.3.7'

gem 'dotenv-rails', :require => 'dotenv/rails-now'
gem 'rails'
gem 'rails-api'
gem 'active_model_serializers', '~> 0.10.0'
gem 'rack-cors', require: 'rack/cors'
gem 'pg', '~> 0.21'
gem 'bcrypt', '~> 3.1.11'
gem 'paperclip', '~> 5.0.0'
gem 'aws-sdk'


group :production do
  gem 'rails_12factor', '~> 0.0.3'
  gem 'pg', '~> 0.21'
end

group :development, :test do
  gem 'pry', '~> 0.10.3'
  gem 'byebug', '~> 8.2.2'
  gem 'pry-byebug', '~> 3.3.0'
  gem 'pg', '~> 0.21'
end

group :development do
  gem 'pry-rails', '~> 0.3.4'
  gem 'pg', '~> 0.21'
  gem 'rb-readline'
  gem 'spring', '~> 1.6.4'
  gem 'spring-commands-rspec', '~> 1.0.4'
end

group :test do
  gem 'rspec-rails', '~> 3.4.2'
  gem 'rspec', '~> 3.4.0'
  gem 'pg', '~> 0.21'
end
