require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

require './main'
use Rack::Deflater

use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: :any
  end
end

run Sinatra::Application
