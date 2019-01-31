require_relative 'services/SingleCityService' 

class OpenWeatherIO 
  def single_city_service
    SingleCityService.new
  end
end