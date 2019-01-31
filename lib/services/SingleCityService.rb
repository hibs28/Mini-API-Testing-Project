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

  def call_from_api
   @json_api_result = JSON.parse(self.class.get("/data/2.5/weather?q=London&APPID=#{@api_key}").body)
  end

  def single_city_data
    @json_city_list_data.each do |city|
       city['name']
    end
  end
end

test = SingleCityService.new
p test.call_from_api