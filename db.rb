require 'sinatra/sequel'

configure :development, :test do
  set :database, 'sqlite://dev.db'
end

configure :production do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/dev')
  DB = Sequel.postgres(db.path[1..-1], :user => db.user, :password => db.host, :host => db.host)
end
