require 'command_line_reporter'

class Ships 
   attr_accessor :ship_name, :guest_number, :year_built
   include CommandLineReporter

   def initialize ship_name, guest_number, year_built
        @ship_name = ship_name
        @guest_number = guest_number
        @year_built = year_built
        self.formatter = 'progress'
   end
   def shiptitle
        header title: 'Awesome Ships of MS Ocean Cruises ', 
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
          column('Ship Name ', width: 10)
          column('Guest Capacity', width: 30, align: 'right', padding: 5)
          column('Year Built ', width: 10)
        end
        row color: 'blue' do 
          column("#{@ship_name}")
          column("#{@guest_number}")
          column("#{@year_built}")
        end
      end
   end
end  







    