class Cruises 
    attr_accessor :continent_name, :country_name, :attractions 
    def initialize continent_name, country_name, attractions 
        @continent_name = continent_name 
        @country_name = country_name 
        @attractions = attractions  
    end 

    def trip_details 
        puts "Continent: #{@continent_name}" 
        puts "Country: #{@country_name}" 
        puts "Nearby Attractions: #{@attractions}" 
    end 
end

