# -*- coding: utf-8 -*-
require 'rubygems'
require "bundler/setup"
Bundler.require
require './config/init'

##load debug tools
if %w(test development).include?(settings.environment.to_s)
  require 'pry'
end

set :title, "新阅读实验室"

get '/' do
  @posts = Post.all
  slim :'home/index'
end

get '/blog/new' do
end
