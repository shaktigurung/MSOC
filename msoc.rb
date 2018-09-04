require 'tty-progressbar' 
require 'tty-table'
require 'coupon_code'

require_relative 'models/ships'
require_relative 'models/cruises'
require_relative 'models/booknow'
require_relative 'models/specialoffers' 
##### This will help to clear screen ######
clear_code = %x{clear}
print clear_code

######## This is for Progress Bar #####
bar = TTY::ProgressBar.new("downloading [:bar]", total: 100)
100.times do
  sleep(0.1)
  bar.advance(1)
end

clear_code = %x{clear}
print clear_code
#### This will help to run the menu again and again ####
while  true do
puts "************************************************************"
puts " Welcome to  MS Ocean Cruises " +  " Book the Trip of your Lifetime "
puts "*************************************************************"

puts " 1. Ships " + " 3. Book Now "
puts " 2. Cruises " + " 4. Special Offers " + " 5. Exit "

puts " Please Enter what you want to do ?"
    options = gets.chomp
    options = options.upcase
    if (options == "ships" || options == "SHIPS" || options == "1" )
        clear_code = %x{clear}
        print clear_code
            puts " Details of Our Awesome Ships"
            ship1 =Ships.new("MS Sky", 100, 2010)
            ship2 =Ships.new("MS Star", 250, 2014)
            ship3 =Ships.new("MS Sun", 350, 2016)
            ship4 =Ships.new("MS Moon", 500, 2018) 
            puts "*************************************************************"
            ship1.ship_details  
            puts "*************************************************************"
            ship2.ship_details
            puts "*************************************************************"
            ship3.ship_details 
            puts "*************************************************************"
            ship4.ship_details
            puts "*************************************************************"
    elsif (options == "Cruises" || options == "CRUISES"|| options == "2" )
        clear_code = %x{clear}
        print clear_code
            puts "Welcome to Our Cruises Page" 
            puts "Please Select Your Next Destination"  
            puts "*************************************************************"
            cruise1 = Cruises.new("Asia", "Hong Kong", "Hong Kong Disneyland")
            cruise1.trip_details  
            puts "*************************************************************"
            cruise2 = Cruises.new("Africa", "South Africa", "Madagascar")
            cruise2.trip_details
            puts "*************************************************************"
            cruise3 = Cruises.new("America", "Mexico & Caribbean", "Bermuda Triangle")
            cruise3.trip_details 
            puts "*************************************************************"
            cruise4 = Cruises.new("Oceania", "Australia & New Zealand", "Great Barrier Reef") 
            cruise4.trip_details
            puts "*************************************************************"
            cruise5 = Cruises.new("Europe", "France & Italy", "Eiffel Tower & Rome") 
            cruise5.trip_details
            puts "*************************************************************"
    elsif (options == "booknow" || options == "BOOKNOW"|| options == "3" )
            puts "Welcome to Our Book Now Page"


    elsif (options == "special" || options == "SPECIAL"|| options == "4" )
            clear_code = %x{clear} 
            print clear_code 
            while true do
                puts "*************************************************************"
                puts "Welcome to Our Special Offers Page"
                puts "*************************************************************"
                puts "Please Make a Selection:" 
                puts " 1. Discount " + "2. Excursions " + " 3. Packages " + " 4. Menu "
                puts "*************************************************************"
                options = gets.chomp 
                options = options.upcase 
                clear_code = %x{clear} 
                print clear_code
                if (options == '1'|| options == " DISCOUNT ")
                    code = CouponCode.generate
                    CouponCode.validate(code)
                    puts " Discount Code : " + CouponCode.generate(parts: 4)
                elsif(options == '2'|| options == " EXCURSIONS ")
                    puts " Excursion section " 
                elsif(options == '3'|| options == " PACKAGES ")
                    puts " Packages section " 
                elsif (options == "menu" || options == "MENU"|| options == "4" )
                    clear_code = %x{clear} 
                    print clear_code 
                    break
                else
                    puts "Invalid Selection"      
                end
            end

    elsif (options == "exit" || options == "EXIT"|| options == "5" )
            puts "See you again. Thank you"
            break
    else
            puts "Invalid Selection"
    end
end







##### Image Section ####