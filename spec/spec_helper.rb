require 'rspec'
require 'json'
require 'dotenv'
require_relative '../lib/OpenWeatherIO'
require_relative '../lib/Generator'

Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
  config.color = true
end