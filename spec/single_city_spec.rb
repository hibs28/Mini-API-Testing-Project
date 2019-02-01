 require 'spec_helper'

 describe 'Open Weather API ' do
 
  before(:all) do
  @json_data = Generator.new.city
  @random_city_info = Generator.new.city.generate_random_cities(rand(0..(@json_data.array_length)))
  @api_city = OpenWeatherIO.new.single_city_service
  @api_city.call_from_api(@random_city_info['id'])
  end

  context 'requesting information from Open Weather API' do 
    
    it 'should be a hash for coordinates' do 
      expect(@api_city.retrieve_coordinates).to be_kind_of(Hash)
    end
    it 'should be a float for lon' do 
      expect(@api_city.retrieve_coordinates).to be_kind_of(Hash)
    end

  
  end
  
end


# git blame 