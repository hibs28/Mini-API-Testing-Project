require 'json'

class RandomCityJson
  # attr_accessor :json_length

  def initialize
    @json_data = JSON.parse(File.read('city_list.json'))
  end

  def array_length
    @json_data.length
  end
  
  def generate_random_cities(city_number)
    @json_data[city_number]
  end

  def retrieve_id
    @json_data[]
  end

end
