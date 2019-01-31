require 'rspec'
require 'json'
require 'dotenv'
require_relative '../lib/OpenWeatherIO.rb'
require_relative '../lib/Generator.rb'

Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
  config.color = true
end