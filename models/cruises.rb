require 'command_line_reporter'
class Cruises 
    attr_accessor :continent_name, :country_name, :attractions 
    include CommandLineReporter

    def initialize continent_name, country_name, attractions 
        @continent_name = continent_name 
        @country_name = country_name 
        @attractions = attractions  
    end 
    def cruisetitle
        header title: 'Awesome Cruise Voyages of MS Ocean Cruises ', 
        width: 80, 
        align: 'center', 
        rule: true, 
        color: 'blue', 
        bold: true, 
        timestamp: true
        footer title: 'Developed by: Mike $ Shakti ', 
        width: 80, 
        align: 'center', 
        rule: true, 
        color: 'blue', 
        bold: true
   end
   def show
    table(border: true) do
        row color: 'red' do
          column('Continent', width: 10)
          column('Countries', width: 35, align: 'right', padding: 5)
          column('Attractions ', width: 25)
        end
        row color: 'blue' do 
          column("#{@continent_name}")
          column("#{@country_name}")
          column("#{@attractions}")
        end
      end
   end
end

