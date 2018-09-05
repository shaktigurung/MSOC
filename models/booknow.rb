require 'command_line_reporter'
require 'faker'

class Booknow
    attr_accessor :fullname , :address, :phone_number , :email, :ship_name , :cruise, :trip_duration
    include CommandLineReporter
    
    def initialize fullname, address , phone_number , email, ship_name , cruise, trip_duration
        @fullname = fullname
        @address = address
        @phone_number = phone_number
        @email = email
        @ship_name = ship_name
        @cruise = cruise 
        @invoice = Faker::Invoice.reference
        @trip_duration = trip_duration
    end
    
    def Itinerary
        clear_code = %x{clear}
        print clear_code
        header title: 'Your Itinerary for the Trip ', 
        width: 80, 
        align: 'center', 
        rule: true, 
        color: 'blue', 
        bold: true, 
        timestamp: true
        footer title: ' ', 
        width: 80, 
        align: 'center', 
        rule: true, 
        color: 'blue', 
        bold: true
        table(border: true) do
           row color: 'red' do
              column('BookingID', width: 20)
              column('Name ', width: 10)
              column('Address', width: 30, align: 'right', padding: 5)
              column('Phone: ', width: 10)
              column('email: ', width: 20)
              column('Ship Name: ', width: 10)
              column('Cruise Voyage: ', width: 15)
              column('Trip Duration: ', width: 20)
            end
            row color: 'blue' do 
              column("#{@invoice}") 
              column("#{@fullname}")
              column("#{@address}")
              column("#{@phone_number}")
              column("#{@email}")
              column("#{@ship_name}")
              column("#{@cruise}")
              column("#{@trip_duration}")
            end
       end
    end

end

