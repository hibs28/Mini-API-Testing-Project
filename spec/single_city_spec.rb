 require 'spec_helper'

 describe 'Open Weather API ' do
 
    before(:all) do
    @json_data = Generator.new.city
    p @random_city_info = Generator.new.city.generate_random_cities(rand(0..(@json_data.array_length)))

  #    @random_json_city  = Generator.new.cities.generate_random_cities(rand(0..@json_length))
    end
    it 'print text' do 
    
    end
  
end


# git blame 