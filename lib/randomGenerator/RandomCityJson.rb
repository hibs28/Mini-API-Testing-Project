require 'json'

class RandomCityJson
  # attr_accessor :json_length

  def read_file
    @json_data = JSON.parse(File.read('city_list.json'))
  end

  def generate_random_cities(city_number)
    random_city = @json_data[city_number]
  end

  def retrieve_json_length
    json_length = @json_data.length
  end

  def print_data
   @json_data
  end
end

test = RandomCityJson.new
p test.print_data