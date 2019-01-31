require 'httparty'
require 'json'


class ClassName
  include HTTPart
  base_uri 'api.openweathermap.org'
  @api_key = ENV['API_KEY']
  def initialize
    @json_city_list_data = JSON.parse((File.read('city_list.json')))
  end

  def call_from_api
    json_api_result = JSON.parse(self.class.get("data/2.5/weather?q=#{city_name}").body)
  
  end

end