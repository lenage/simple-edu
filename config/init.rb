configure :development do
  set :database, 'sqlite://dev.db'
end

configure :test do
  set :database, 'sqlite3::memory:'
end

configure :production do
  Sequel.connect(ENV['DATABASE_URL'] || 'postgres://localhost/simple_edu_dev')
end

require './config/migrations'

Sequel::Model.strict_param_setting = false
Dir["./models/**/*.rb"].each{ |model| require model }
