require File.expand_path('../app', __FILE__)

set :run, false
set :raise_errors, true

run Sinatra::Application
