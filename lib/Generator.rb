require_relative 'randomGenerator/RandomCityJson'

class Generator
  def cities
    RandomCityJson.new
  end
end