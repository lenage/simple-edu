require File.dirname(__FILE__) + '/../app.rb'
require 'rack/test'
require 'rspec/autorun'

def app
  Sinatra::Application
end

set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

RSpec.configure do |conf|
  conf.mock_with :rspec
  conf.include Rack::Test::Methods
end
