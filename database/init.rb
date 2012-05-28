require 'sequel'

configure :development, :test do
  set :database, 'sqlite://database/dev.db'
end

configure :production do
  Sequel.connect(ENV['DATABASE_URL'] || 'postgres://localhost/simple_edu_dev')
end
