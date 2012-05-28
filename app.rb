# -*- coding: utf-8 -*-
## init database
require './database/init'

##load debug tools
if %w(test development).include?(settings.environment.to_s)
  require 'pry'
end

set :title, "新阅读实验室"

get '/' do
  slim :index
end
