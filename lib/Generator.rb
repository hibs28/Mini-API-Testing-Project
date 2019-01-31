require_relative 'randomGenerator/RandomCityJson.rb'

class Generator
  def city
    RandomCityJson.new
  end
end