require_relative '../my_server.rb'
require_relative 'rspec ./spec/spec_helper.rb'
require 'rack'
require 'rack/test'

def app()
  MyServer.new
end

RSpec.configure do |config|

  config.include Rack::Test::Methods
  config.order = 'default'
end
