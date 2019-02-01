 require 'spec_helper'

 describe 'Open Weather API ' do
 
  before(:all) do
  @json_data = Generator.new.city
  @random_city_info = Generator.new.city.generate_random_cities(rand(0..(@json_data.array_length)))
  @api_city = OpenWeatherIO.new.single_city_service
  @api_city.call_from_api(@random_city_info['id'])
  end

  context 'checking data types from requested information from the API' do 
    
    it 'should be a hash for coordinates' do 
      expect(@api_city.retrieve_coordinates).to be_kind_of(Hash)
    end
    it 'should be a float for longitude' do 
      expect(@api_city.retrieve_longitude).to be_kind_of(Float)
    end
    it 'should be a float for latitude' do 
      expect(@api_city.retrieve_latitude).to be_kind_of(Float)
    end
    it 'should be a hash for weather' do 
      expect(@api_city.retrieve_weather).to be_kind_of(Hash)
    end
    it 'should be a integer for weather id' do 
      expect(@api_city.retrieve_weather_id).to be_kind_of(Integer)
    end

    it 'should be a string for weather main' do 
      expect(@api_city.retrieve_weather_main).to be_kind_of(String)
    end

    it 'should be a string for weather description' do 
      expect(@api_city.retrieve_weather_description).to be_kind_of(String)
    end

    it 'should be a string for weather icon' do 
      expect(@api_city.retrieve_weather_icon).to be_kind_of(String)
    end

    it 'should be a string for base' do 
      expect(@api_city.retrieve_base).to be_kind_of(String)
    end

    it 'should be a hash for main' do 
      expect(@api_city.retrieve_main).to be_kind_of(Hash)
    end

    it 'should be a float for main temp' do 
      expect(@api_city.retrieve_main_temp).to be_kind_of(Float)
    end 
    
    it 'should be a integer for main pressure' do 
      expect(@api_city.retrieve_main_pressure).to be_kind_of(Integer)
    end

    it 'should be a integer for main humidity' do 
      expect(@api_city.retrieve_main_humidity).to be_kind_of(Integer)
    end

    it 'should be a integer for main temp min' do 
      expect(@api_city.retrieve_main_temp_min).to be_kind_of(Float)
    end
  end

  context 'checking data types from the JSON file' do 
    it 'should be an integer for id' do 
      expect(@random_city_info['id']).to be_kind_of(Integer)
    end

    it 'should be an string for name' do 
      expect(@random_city_info['name']).to be_kind_of(String)
    end

    it 'should be an string for country' do 
      expect(@random_city_info['country']).to be_kind_of(String)
    end

    it 'should be an hash for coordinates' do 
      expect(@random_city_info['coord']).to be_kind_of(Hash)
    end

    it 'should be an float for longitude' do 
      expect(@random_city_info['coord']['lon']).to be_kind_of(Float)
    end
    
    it 'should be an float for latitude' do 
      expect(@random_city_info['coord']['lat']).to be_kind_of(Float)
    end
  end

  
end


# git blame 