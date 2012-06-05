source :rubygems

gem "sinatra"
gem "slim"
gem 'thin'
gem 'sequel'
gem 'sinatra-sequel'

group :development, :test do
  gem 'pry'
  # gem 'awesome_print', :require => 'ap'
  gem 'sqlite3'
  gem 'guard-rspec', '~> 0.7.3'
end

group :test do
  gem 'rspec'
  gem 'rack-test'
end

group :production do
  gem 'pg'
end
