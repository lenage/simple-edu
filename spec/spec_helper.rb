require File.dirname(__FILE__) + '/../app.rb'
require 'spec'
require 'rack/test'

set :environment, :test

Rspec.config do |conf|
  conf.include Rack::Test::Methods
end
