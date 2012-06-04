# -*- coding: utf-8 -*-
require "rubygems"
require "bundler/setup"
require "sinatra"
require "slim"
require "thin"

## init database
require './config/init'

##load debug tools
if %w(test development).include?(settings.environment.to_s)
  require 'pry'
end

set :title, "新阅读实验室"

get '/' do
  slim :index
end
