class Ships 
   attr_accessor :ship_name, :guest_number, :year_built
   def initialize ship_name, guest_number, year_built
        @ship_name = ship_name
        @guest_number = guest_number
        @year_built = year_built
   end
   def ship_details
      puts "Ship Name: #{@ship_name}"
      puts "Guest Capacity: #{@guest_number}"
      puts "Year Built: #{@year_built}"
   end
end 





    