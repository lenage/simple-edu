## init database
require './database/init'
require 'pry'

##load debug tools
if %w(test development).include?(settings.environment.to_s)
  require 'pry'
end

get '/' do
  @users = Sequel.connect(settings.database)[:users].all
  slim :index, :locals => { :users => @users }
end
