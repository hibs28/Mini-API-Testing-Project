require 'httparty'
require 'json'
require 'dotenv'

class SingleCityService
  include HTTParty
  include Dotenv
  Dotenv.load('../../.env')
  base_uri 'api.openweathermap.org'

  def initialize
   @api_key = ENV['API_KEY']
  end

  def call_from_api(city_id)
   @json_api_result = JSON.parse(self.class.get("/data/2.5/weather?id=#{city_id}&APPID=#{@api_key}").body)
  end

  def retrieve_coordinates
  @json_api_result['coord']
  end

  def retrieve_longitude
  retrieve_coordinates['lon']
  end

  def retrieve_latitude
  retrieve_coordinates['lat']
  end

  def retrieve_weather
    @json_api_result['weather']
  end

  def retrieve_weather_id
    retrieve_weather.first['id']
  end

  def retrieve_weather_main
    retrieve_weather.first['main']
  end

  def retrieve_weather_description
    retrieve_weather['description']
  end

  def retrieve_weather_icon
    retrieve_weather['icon']
  end

  def retrieve_base
    @json_api_result['base']
  end

  def retrieve_main
    @json_api_result['main']
  end

  def retrieve_main_temp
    retrieve_main['temp']
  end

  def retrieve_main_pressure
    retrieve_main['pressure']
  end

  def retrieve_main_humidity
    retrieve_main['humidity']
  end

  def retrieve_main_temp_min
    retrieve_main['temp_min']
  end

  def retrieve_main_temp_max
    retrieve_main['temp_max']
  end

  def retrieve_visibility
    @json_api_result['visibility']
  end

  def retrieve_wind
    @json_api_result['wind']
  end

  def retrieve_wind_speed
    retrieve_wind['speed']
  end

  def retrieve_main
    retrieve_wind['deg']
  end

  def retrieve_clouds
    @json_api_result['clouds']
  end

  def retrieve_clouds_all
    retrieve_clouds['all']
  end

  def retrieve_dt
    @json_api_result['dt']
  end

  def retrieve_sys
    @json_api_result['sys']
  end

  def retrieve_sys_type
    retrieve_sys['type']
  end

  def retrieve_sys_id
    retrieve_sys['id']
  end

  def retrieve_sys_message
    retrieve_sys['message']
  end

  def retrieve_sys_country
    retrieve_sys['DE']
  end

  def retrieve_sys_sunrise
    retrieve_sys['sunrise']
  end

  def retrieve_sys_sunset
    retrieve_sys['sunset']
  end

  def retrieve_sys_id
    @json_api_result['id']
  end

  def retrieve_name
    @json_api_result['name']
  end

  def retrieve_cod
    @json_api_result['cod']
  end
end