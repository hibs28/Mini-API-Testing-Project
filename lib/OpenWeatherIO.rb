require_relative 'services/SingleCityService.rb' 

class OpenWeatherIO 
  def single_city_service
    SingleCityService.new
  end
end