require 'spec_helper'

describe 'The Hello word app' do
  def app
    Sinatra::Application
  end

  it 'says Hello' do
    get "/", :name => "Yuan"
    last_response.should be_ok
    puts last_response.methods
  end
end
